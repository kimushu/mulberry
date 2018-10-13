#ifndef _PYBREPL_H_
#define _PYBREPL_H_

#ifdef __cplusplus
extern "C" {
#endif

void pybreplInit(const char *hint);
void pybreplDeinit(void);
char *pybreplReadLine(const char *prompt);
void pybreplFree(char *line);
void pybreplStdout(const char *s);
void pybreplStderr(const char *s);

#ifdef __cplusplus
}   /* extern "C" */
#endif

#endif  /* _PYBREPL_H_ */
