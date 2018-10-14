#include "system_definitions.h"
#include "hal.h"

int HAL_Console_GetChar_NoWait(void)
{
    unsigned char buf;
    if (SYS_CONSOLE_Read(SYS_CONSOLE_INDEX_0, STDIN_FILENO, &buf, 1) == 1) {
        return buf;
    }
    return -1;
}

int HAL_Console_GetChar(void)
{
    for (;;) {
        int result = HAL_Console_GetChar_NoWait();
        if (result >= 0) {
            return result;
        }
        usleep(1000);
    }
}

ssize_t HAL_Console_Write(const char *data, size_t len)
{
    size_t orig_len = len;
    size_t chunk_len = (4 - (((uint32_t)str) & 3)) & 3;
    if (chunk_len > len) {
        chunk_len = len;
    }
    if (chunk_len > 0) {
        uint32_t chunk;
        memcpy(&chunk, str, chunk_len);
        HAL_Console_Write((char *)&chunk, chunk_len);
        str += chunk_len;
        len -= chunk_len;
    }
    if (len > 0) {
        SYS_DEVCON_DataCacheClean((uint32_t)str, len);
        SYS_CONSOLE_Write(SYS_CONSOLE_INDEX_0, STDOUT_FILENO, str, len);
    }
    return orig_len;
}

ssize_t HAL_Console_WriteConvert(const char *data, size_t len)
{
    size_t orig_len = len;
    const char *lf;
retry:
    lf = memchr(str, '\n', len);
    if (lf) {
        HAL_Console_Write(str, lf - str);
        HAL_Console_Write("\r\n", 2);
        len -= (lf - str + 1);
        str = lf + 1;
        goto retry;
    }
    HAL_Console_Write(str, len);
    return orig_len;
}
