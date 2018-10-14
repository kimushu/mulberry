#ifndef _SYS_CONSOLE_STDIO_H_
#define _SYS_CONSOLE_STDIO_H_

#ifdef __cplusplus
extern "C" {
#endif

extern int stdout_convert_crlf;

void SYS_CONSOLE_STDIO_Initialize(void);

#ifdef __cplusplus
}   /* extern "C" */
#endif

#endif  /* _SYS_CONSOLE_STDIO_H_ */
