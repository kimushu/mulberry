#ifndef _MULBERRY_HAL_H_
#define _MULBERRY_HAL_H_

#include <unistd.h>

#ifdef __cplusplus
extern "C" {
#endif

int HAL_Console_GetChar_NoWait(void);
int HAL_Console_GetChar(void);
ssize_t HAL_Console_Write(const char *data, size_t len);
ssize_t HAL_Console_WriteConvert(const char *data, size_t len);
ssize_t HAL_Console_Puts(const char *str);
ssize_t HAL_Console_PutsConvert(const char *str);

#ifdef __cplusplus
}   /* extern "C" */
#endif

#endif  /* _MULBERRY_HAL_H_ */
