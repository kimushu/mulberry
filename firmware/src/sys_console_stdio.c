#include <stdio.h>
#include <semaphore.h>
#include "system_definitions.h"
#include "system/devcon/sys_devcon.h"

int stdout_convert_crlf;

static sem_t sem_write;

static ssize_t raw_read(void *buf, size_t size)
{
    return SYS_CONSOLE_Read(SYS_CONSOLE_INDEX_0, STDIN_FILENO, buf, size);
}

static ssize_t stdin_read(void *cookie, char *buf, size_t size)
{
    ssize_t bytesRead = 0;

    while (size > 0) {
        int result = raw_read(buf, size);
        if (result < 0) {
            return -1;
        }
        if (result == 0) {
            if (bytesRead == 0) {
                usleep(10000);
                continue;
            }
            break;
        }
        bytesRead += result;
        size -= result;
        buf += result;
    }

    return bytesRead;
}

static const cookie_io_functions_t stdin_cookie = {
    .read = stdin_read,
};

static ssize_t raw_write(const void *buf, size_t size)
{
    /* buf must be 4-byte aligned */
    if (size == 0) {
        return 0;
    }
    SYS_DEVCON_DataCacheClean((uint32_t)buf, size);
    ssize_t result = SYS_CONSOLE_Write(SYS_CONSOLE_INDEX_0, STDOUT_FILENO, buf, size);
    sem_wait(&sem_write);
    return result;
}

static void write_callback(void *buf)
{
    sem_post(&sem_write);
}

static ssize_t stdout_write(void *cookie, const char *buf, size_t size)
{
    size_t orig_size = size;
    int len = 0;
    int cnv = stdout_convert_crlf ? 1 : 0;
    __attribute__(( aligned(4) )) char chunk[64];

    while (size > 0) {
        char ch = *buf;
        if ((cnv == 1) && (ch == '\n')) {
            ch = '\r';
            cnv |= 2;
        } else {
            ++buf;
            --size;
            cnv &= 1;
        }
        chunk[len++] = ch;
        if ((size == 0) || (len == sizeof(chunk))) {
            raw_write(chunk, len);
            len = 0;
        }
    }
    return orig_size;
}

static const cookie_io_functions_t stdout_cookie = {
    .write = stdout_write,
};

void SYS_CONSOLE_STDIO_Initialize(void)
{
    stdout_convert_crlf = 0;
    sem_init(&sem_write, 0, 0);
    SYS_CONSOLE_RegisterCallback(SYS_CONSOLE_INDEX_0, write_callback, SYS_CONSOLE_EVENT_WRITE_COMPLETE);

    fclose(stdin);
    stdin = fopencookie(NULL, "r", stdin_cookie);
    setbuf(stdin, NULL);

    fclose(stdout);
    stdout = fopencookie(NULL, "w", stdout_cookie);
    setbuf(stdout, NULL);

    fclose(stderr);
    stderr = fopencookie(NULL, "w", stdout_cookie);
    setbuf(stderr, NULL);
}
