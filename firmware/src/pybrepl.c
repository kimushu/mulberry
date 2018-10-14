#include <stdio.h>
#include "pybrepl.h"
#include "system_definitions.h"

enum {
    PYBREPL_MODE_NORMAL = 0,
    PYBREPL_MODE_RAW,
    PYBREPL_MODE_PASTE,
};

enum {
    PYBREPL_RET_RESTART = 0,
    PYBREPL_RET_BUFFER,
    PYBREPL_RET_SOFT_RESET,
    PYBREPL_RET_FAILURE,
};

static struct {
    const char *hint;
    int mode;
    int pos, len, max_len;
    char *buf;
    FILE *hook_stderr;
    FILE *orig_stderr;
    char *stderr_buf;
    int stderr_len, stderr_max_len;
} state = { .mode = PYBREPL_MODE_NORMAL };

static ssize_t hook_stderr_write(void *cookie, const char *buf, size_t size)
{
    int new_len;
    if (state.stderr_max_len < 0) {
        return fwrite(buf, 1, size, state.orig_stderr);
    }
    new_len = state.stderr_len + size;
    if (new_len > state.stderr_max_len) {
        char *newbuf = (char *)realloc(state.stderr_buf, new_len);
        if (!newbuf) {
            fputs("pybrepl:NOMEM\n", state.orig_stderr);
            return -1;
        }
        state.stderr_max_len = new_len;
    }
    memcpy(state.stderr_buf + state.stderr_len, buf, size);
    state.stderr_len = new_len;
    return size;
}

static const cookie_io_functions_t hook_stderr_cookie = {
    .write = hook_stderr_write,
};

void pybreplInit(const char *hint)
{
    pybreplDeinit();
    state.hint = hint;
    if (!state.hook_stderr) {
        state.orig_stderr = stderr;
        state.hook_stderr = fopencookie(NULL, "a", hook_stderr_cookie);
        stderr = state.hook_stderr;
        setbuf(stderr, NULL);
    }
}

void pybreplDeinit(void)
{
    if (state.hook_stderr) {
        stderr = state.orig_stderr;
        state.orig_stderr = NULL;
        fclose(state.hook_stderr);
        state.hook_stderr = NULL;
    }
    free(state.buf);
    state.buf = NULL;
    state.pos = state.len = state.max_len = 0;
    free(state.stderr_buf);
    state.stderr_buf = NULL;
    state.stderr_len = 0;
    state.stderr_max_len = -1;
}

static void pybreplCursorBack(int count)
{
    if (count > 4) {
        char escape[16];
        sprintf(escape, "\x1b[%dD", count);
        fputs(escape, stdout);
    } else {
        fputs("\b\b\b\b" + (4 - count), stdout);
    }
}

static int pybreplGrowthBuffer(void)
{
    if (state.len >= state.max_len) {
        state.max_len += 256;
        char *newbuf = (char *)realloc(state.buf, state.max_len);
        if (!newbuf) {
            fputs("pybrepl:NOMEM\n", state.orig_stderr);
            free(state.buf);
            return 0;
        }
        state.buf = newbuf;
    }
    return 1;
}

static void pybreplSetMode(int new_mode)
{
    switch (new_mode) {
    case PYBREPL_MODE_NORMAL:
        if ((state.mode != PYBREPL_MODE_PASTE) && (state.hint != NULL)) {
            fputs(state.hint, stdout);
        }
        break;
    case PYBREPL_MODE_RAW:
        fputs("\nraw REPL; CTRL-B to exit\n", stdout);
        break;
    case PYBREPL_MODE_PASTE:
        fputs("\npaste mode; Ctrl-C to cancel, Ctrl-D to finish\n", stdout);
        break;
    }
    state.mode = new_mode;
}

static int pybreplNormal(const char *prompt)
{
    char esc_buf[16];
    int esc_state = 0;
    state.len = 0;
    state.pos = 0;
    state.stderr_max_len = -1;

    fputs(prompt, stdout);
    for (;;) {
        int ch = getchar();
        if (esc_state == 1) {
            if (ch == '[') {
                esc_state = 2;
                continue;
            }
        } else if (esc_state >= 2) {
            if ((esc_state - 2 - 1) < sizeof(esc_buf)) {
                esc_buf[esc_state - 2] = (char)ch;
            } else {
                esc_buf[0] = '\0';
            }
            ++esc_state;
            if (ch >= 'A') {
                esc_state = 0;
                if (esc_buf[1] == '~') {
                    switch (esc_buf[0]) {
                    case '1':   // Home
                        goto esc_home;
                    case '4':   // End
                        goto esc_end;
                    }
                }
            }
            continue;
        }
        esc_state = 0;
        if ((0x20 <= ch) && (ch <= 0x7e)) {
            if (!pybreplGrowthBuffer()) {
                return PYBREPL_RET_FAILURE;
            }

            int chunk_len = state.len - state.pos;
            putchar(ch);
            if (chunk_len > 0) {
                char *chunk = state.buf + state.pos + 1;
                memmove(chunk, chunk - 1, chunk_len);
                fwrite(chunk, 1, chunk_len, stdout);
                pybreplCursorBack(chunk_len);
            }
            state.buf[state.pos++] = (char)ch;
            ++state.len;
            continue;
        }
        switch (ch) {
        case 0x01:  // Ctrl-A
            if (state.len == 0) {
                // To RAW repl mode
                pybreplSetMode(PYBREPL_MODE_RAW);
                return PYBREPL_RET_RESTART;
            }
        esc_home:
            if (state.pos > 0) {
                // Move cursor to the beginning of line
                pybreplCursorBack(state.pos);
                state.pos = 0;
            }
            break;
        case 0x02:  // Ctrl-B
            if (state.len == 0) {
                pybreplSetMode(PYBREPL_MODE_NORMAL);
                return PYBREPL_RET_RESTART;
            }
            if (state.pos > 0) {
                // Move cursor backward
                putchar('\b');
                --state.pos;
            }
            break;
        case 0x03:  // Ctrl-C
            // Abort current line
            fputs("\n", stdout);
            return PYBREPL_RET_RESTART;
        case 0x04:  // Ctrl-D
            if (state.len == 0) {
                // Software reset
                fputs("\n", stdout);
                return PYBREPL_RET_SOFT_RESET;
            }
            break;
        case 0x05:  // Ctrl-E
            if (state.len == 0) {
                pybreplSetMode(PYBREPL_MODE_PASTE);
                return PYBREPL_RET_RESTART;
            }
        esc_end:
            if (state.pos < state.len) {
                // Move cursor to the end of line
                char escape[16];
                sprintf(escape, "\x1b[%dC", state.len - state.pos);
                fputs(escape, stdout);
                state.pos = state.len;
            }
            break;
        case 0x06:  // Ctrl-F
            if (state.pos < state.len) {
                // Move cursor forward
                fputs("\x1b[1C", stdout);
                ++state.pos;
            }
            break;
        case 0x08:  // Ctrl-H <BS>
        case 0x7f:  // <DEL>
            if (state.pos > 0) {
                --state.pos;
                --state.len;
                int chunk_len = state.len - state.pos;
                fputs("\b\x1b[K", stdout);
                if (chunk_len > 0) {
                    char *chunk = state.buf + state.pos;
                    memmove(chunk, chunk + 1, chunk_len);
                    fwrite(chunk, 1, chunk_len, stdout);
                    pybreplCursorBack(chunk_len);
                }
            }
            break;
        case 0x0d:  // Ctrl-M <CR>
            if (!pybreplGrowthBuffer()) {
                return PYBREPL_RET_FAILURE;
            } else {
                fputs("\n", stdout);
                char *result = state.buf;
                result[state.len] = '\0';
                return PYBREPL_RET_BUFFER;
            }
            break;
        case 0x1b:  // <ESC>
            esc_state = 1;
            break;
        default:
            // Ignore other control codes
            break;
        }
    }
}

static int pybreplRaw(void)
{
    state.pos = 0;
    state.len = 0;

    if (state.stderr_max_len >= 0) {
        putchar(0x04);
        if (state.stderr_len > 0) {
            fwrite(state.stderr_buf, 1, state.stderr_len, stdout);
        }
        putchar(0x04);
    }

    state.stderr_max_len = -1;

    putchar('>');
    for (;;) {
        int ch = getchar();
        switch (ch) {
        case 0x00:  // NUL
            continue;
        case 0x01:  // Ctrl-A
            pybreplSetMode(PYBREPL_MODE_RAW);
            return PYBREPL_RET_RESTART;
        case 0x02:  // Ctrl-B
            pybreplSetMode(PYBREPL_MODE_NORMAL);
            return PYBREPL_RET_RESTART;
        case 0x03:  // Ctrl-C
            state.pos = state.len = 0;
            continue;
        case 0x04:  // Ctrl-D
            if (state.len == 0) {
                return PYBREPL_RET_SOFT_RESET;
            } else {
                if (!pybreplGrowthBuffer()) {
                    return PYBREPL_RET_FAILURE;
                }
                char *result = state.buf;
                result[state.pos] = '\0';
                fputs("OK", stdout);
                state.stderr_len = 0;
                state.stderr_max_len = 0;
                return PYBREPL_RET_BUFFER;
            }
            continue;
        }
        if (!pybreplGrowthBuffer()) {
            return PYBREPL_RET_FAILURE;
        }
        state.buf[state.pos++] = (char)ch;
        ++state.len;
    }
}

static int pybreplPaste(void)
{
    state.pos = 0;
    state.len = 0;
    state.stderr_max_len = -1;

    for (;;) {
        fputs("=== ", stdout);
        for (;;) {
            int ch = getchar();
            switch (ch) {
            case 0x00:  // NUL
                continue;
            case 0x03:  // Ctrl-C
                free(state.buf);
                state.buf = NULL;
                state.max_len = 0;
                pybreplSetMode(PYBREPL_MODE_NORMAL);
                return PYBREPL_RET_RESTART;
            }
            if (!pybreplGrowthBuffer()) {
                return PYBREPL_RET_FAILURE;
            }
            if (ch == 0x04) {
                // Ctrl-D
                pybreplSetMode(PYBREPL_MODE_NORMAL);
                state.buf[state.pos] = '\0';
                return PYBREPL_RET_BUFFER;
            }
            state.buf[state.pos++] = (char)ch;
            ++state.len;
            putchar(ch);
            if (ch == 0x0d) {
                putchar('\n');
                break;
            }
        }
    }
}

char *pybreplReadLine(const char *prompt)
{
    int result;

    for (;;) {
        switch (state.mode) {
        case PYBREPL_MODE_NORMAL:
            result = pybreplNormal(prompt);
            break;
        case PYBREPL_MODE_RAW:
            result = pybreplRaw();
            break;
        case PYBREPL_MODE_PASTE:
            result = pybreplPaste();
            break;
        }
        switch (result) {
        case PYBREPL_RET_BUFFER:
            {
                char *result = state.buf;
                state.buf = NULL;
                state.max_len = 0;
                return result;
            }
            break;
        case PYBREPL_RET_RESTART:
            continue;
        case PYBREPL_RET_SOFT_RESET:
        case PYBREPL_RET_FAILURE:
            return NULL;
        }
    }
}

void pybreplFree(char *line)
{
    free(line);
}
