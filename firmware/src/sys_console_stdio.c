#include <stdio.h>
#include "system_definitions.h"
#include "system/devcon/sys_devcon.h"

static ssize_t stdin_read(void *cookie, char *buf, size_t size)
{
    ssize_t bytesRead = 0;

    while (size > 0) {
        int result = SYS_CONSOLE_Read(SYS_CONSOLE_INDEX_0, STDIN_FILENO, buf, size);
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

static ssize_t stdout_write_impl(const char *buf, size_t size)
{
    uint32_t addr = (uint32_t)buf;
    uint32_t odd_size = (4 - (addr & 3)) & 3;

    if (size == 0) {
        return 0;
    }

    if (odd_size > 0) {
        uint32_t odd_data;
        memcpy(&odd_data, buf, odd_size);
        return stdout_write_impl((char *)&odd_data, odd_size)
            + stdout_write_impl(buf + odd_size, size - odd_size);
    }

    SYS_DEVCON_DataCacheClean(addr, size);
    SYS_CONSOLE_Write(SYS_CONSOLE_INDEX_0, STDOUT_FILENO, buf, size);

    return size;
}

static ssize_t stdout_write(void *cookie, const char *buf, size_t size)
{
    char *lf = memchr(buf, '\n', size);
    if (lf) {
        return stdout_write_impl(buf, lf - buf)
            + stdout_write_impl("\r\n", 2) - 1
            + stdout_write_impl(lf + 1, size - (lf - buf + 1));
    }
    return stdout_write_impl(buf, size);
}

static const cookie_io_functions_t stdout_cookie = {
    .write = stdout_write,
};

void SYS_CONSOLE_Override(void)
{
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
