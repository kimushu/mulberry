#include <stdio.h>
#include <semaphore.h>
#include "system_definitions.h"
#include "system/devcon/sys_devcon.h"

int stdout_convert_crlf;

static sem_t sem_read;
static sem_t sem_write;
static char read_buffer[SYS_CONSOLE_USB_CDC_READ_BUFFER_SIZE] SYS_CONSOLE_BUFFER_DMA_READY;
static int read_pos;
static int read_len;

static ssize_t raw_read(void)
{
    return SYS_CONSOLE_Read(SYS_CONSOLE_INDEX_0, STDIN_FILENO, read_buffer, sizeof(read_buffer));
}

static void read_callback(void *buf)
{
    read_pos = 0;
    read_len = *((int *)buf);
    sem_post(&sem_read);
}

static ssize_t stdin_read(void *cookie, char *buf, size_t size)
{
    ssize_t bytesRead = 0;

    while (size > 0) {
        int chunk_len = read_len - read_pos;
        if (chunk_len > size) {
            chunk_len = size;
        }
        if (chunk_len > 0) {
            memcpy(buf, read_buffer + read_pos, chunk_len);
            read_pos += chunk_len;
            buf += chunk_len;
            size -= chunk_len;
            bytesRead += chunk_len;
            continue;
        }
retry_read:
        if (raw_read() == 0) {
            if (bytesRead == 0) {
                usleep(10000);
                goto retry_read;
            }
            break;
        }
        sem_wait(&sem_read);
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
    read_pos = 0;
    read_len = 0;
    sem_init(&sem_read, 0, 0);
    SYS_CONSOLE_RegisterCallback(SYS_CONSOLE_INDEX_0, read_callback, SYS_CONSOLE_EVENT_READ_COMPLETE);
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
