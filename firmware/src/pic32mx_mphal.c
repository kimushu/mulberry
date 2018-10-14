/*
 * This file is part of the MicroPython project, http://micropython.org/
 *
 * The MIT License (MIT)
 *
 * Copyright (c) 2015 Damien P. George
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#include <string.h>
#include <time.h>
#include "system_definitions.h"
#include "py/mphal.h"

static int interrupt_char;

void mp_hal_init(void)
{
    MP_STATE_PORT(keyboard_interrupt_obj) = mp_obj_new_exception(&mp_type_KeyboardInterrupt);
}

mp_uint_t mp_hal_ticks_ms(void)
{
    struct timespec tp;
    if (clock_gettime(CLOCK_MONOTONIC, &tp) != 0) {
        return 0;
    }
    return tp.tv_sec * 1000 + tp.tv_nsec / 1000;
}

void mp_hal_delay_ms(mp_uint_t ms)
{
    while (ms > 1000) {
        sleep(1);
        ms -= 1000;
    }
    usleep(ms * 1000);
}

void mp_hal_set_interrupt_char(int c)
{
    interrupt_char = c;
}

int mp_hal_stdin_rx_chr(void)
{
    unsigned char buf;
    for (;;) {
        int result = SYS_CONSOLE_Read(SYS_CONSOLE_INDEX_0, STDIN_FILENO, &buf, 1);
        if (result == 1) {
            return buf;
        }
        usleep(1000);
    }
}

void mp_hal_stdout_tx_str(const char *str)
{
    mp_hal_stdout_tx_strn(str, strlen(str));
}

void mp_hal_stdout_tx_strn(const char *str, size_t len)
{
    uint32_t odd_size = (4 - (((uint32_t)str) & 3)) & 3;
    if (odd_size > len) {
        odd_size = len;
    }
    if (odd_size > 0) {
        uint32_t odd_buf;
        memcpy(&odd_buf, str, odd_size);
        mp_hal_stdout_tx_strn((char *)&odd_buf, odd_size);
        str += odd_size;
        len -= odd_size;
    }
    if (len > 0) {
        SYS_DEVCON_DataCacheClean((uint32_t)str, len);
        SYS_CONSOLE_Write(SYS_CONSOLE_INDEX_0, STDOUT_FILENO, str, len);
    }
}

void mp_hal_stdout_tx_strn_cooked(const char *str, size_t len)
{
    const char *lf;
retry:
    lf = memchr(str, '\n', len);
    if (lf) {
        mp_hal_stdout_tx_strn(str, lf - str);
        mp_hal_stdout_tx_strn("\r\n", 2);
        len -= (lf - str + 1);
        str = lf + 1;
        goto retry;
    }
    return mp_hal_stdout_tx_strn(str, len);
}
