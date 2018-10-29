// Options to control how MicroPython is built for this port,

#include <stdint.h>
#include <alloca.h>
#include <inttypes.h>

// object representation and NLR handling
#define MICROPY_OBJ_REPR                    (MICROPY_OBJ_REPR_B)

// memory allocation policies
#define MICROPY_ALLOC_PATH_MAX              (64)

// emitters
#define MICROPY_EMIT_X64                    (0)
#define MICROPY_EMIT_THUMB                  (0)
#define MICROPY_EMIT_INLINE_THUMB           (0)

// compiler configuration
#define MICROPY_COMP_MODULE_CONST           (0)
#define MICROPY_COMP_CONST                  (0)

// optimisations

// Python internal features
#define MICROPY_MEM_STATS                   (0)
#define MICROPY_DEBUG_PRINTERS              (0)
#define MICROPY_ENABLE_GC                   (1)
#define MICROPY_REPL_EVENT_DRIVEN           (0)
#define MICROPY_HELPER_REPL                 (1)
#define MICROPY_HELPER_LEXER_UNIX           (0)
#define MICROPY_ENABLE_DOC_STRING           (0)
#define MICROPY_LONGINT_IMPL                (MICROPY_LONGINT_IMPL_MPZ)
#define MICROPY_ENABLE_SOURCE_LINE          (0)
#define MICROPY_ERROR_REPORTING             (MICROPY_ERROR_REPORTING_TERSE)
#define MICROPY_FLOAT_IMPL                  (MICROPY_FLOAT_IMPL_NONE)
#define MICROPY_CPYTHON_COMPAT              (0)
#define MICROPY_MODULE_BUILTIN_INIT         (1)
#define MICROPY_MODULE_WEAK_LINKS           (1)

// control over Python builtins
#define MICROPY_PY_FUNCTION_ATTRS           (1)
#define MICROPY_PY_DESCRIPTORS              (1)
#define MICROPY_PY_STR_BYTES_CMP_WARN       (1)
#define MICROPY_PY_BUILTINS_STR_UNICODE     (1)
#define MICROPY_PY_BUILTINS_STR_CENTER      (1)
#define MICROPY_PY_BUILTINS_STR_PARTITION   (1)
#define MICROPY_PY_BUILTINS_STR_SPLITLINES  (1)
#define MICROPY_PY_BUILTINS_BYTEARRAY       (1)
#define MICROPY_PY_BUILTINS_MEMORYVIEW      (1)
#define MICROPY_PY_BUILTINS_SET             (1)
#define MICROPY_PY_BUILTINS_SLICE           (1)
#define MICROPY_PY_BUILTINS_SLICE_ATTRS     (1)
#define MICROPY_PY_BUILTINS_FROZENSET       (1)
#define MICROPY_PY_BUILTINS_PROPERTY        (1)
#define MICROPY_PY_BUILTINS_RANGE_ATTRS     (1)
#define MICROPY_PY_BUILTINS_ROUND_INT       (1)
#define MICROPY_PY_BUILTINS_TIMEOUTERROR    (1)
#define MICROPY_PY_ALL_SPECIAL_METHODS      (1)
#define MICROPY_PY_BUILTINS_COMPILE         (1)
#define MICROPY_PY_BUILTINS_ENUMERATE       (1)
#define MICROPY_PY_BUILTINS_EXECFILE        (1)
#define MICROPY_PY_BUILTINS_FILTER          (1)
#define MICROPY_PY_BUILTINS_REVERSED        (1)
#define MICROPY_PY_BUILTINS_NOTIMPLEMENTED  (1)
#define MICROPY_PY_BUILTINS_INPUT           (1)
#define MICROPY_PY_BUILTINS_MIN_MAX         (1)
#define MICROPY_PY_BUILTINS_POW3            (1)
#define MICROPY_PY_BUILTINS_HELP            (1)
#define MICROPY_PY_BUILTINS_HELP_TEXT       mulberry_help_text
#define MICROPY_PY_BUILTINS_HELP_MODULES    (1)
#define MICROPY_PY___FILE__                 (1)
#define MICROPY_PY_MICROPYTHON_MEM_INFO     (1)
#define MICROPY_PY_ARRAY                    (1)
#define MICROPY_PY_ARRAY_SLICE_ASSIGN       (1)
#define MICROPY_PY_ATTRTUPLE                (1)
#define MICROPY_PY_COLLECTIONS              (1)
#define MICROPY_PY_COLLECTIONS_DEQUE        (1)
#define MICROPY_PY_COLLECTIONS_ORDEREDDICT  (1)
#define MICROPY_PY_MATH                     (1)
#define MICROPY_PY_MATH_SPECIAL_FUNCTIONS   (1)
#define MICROPY_PY_CMATH                    (1)
#define MICROPY_PY_GC                       (1)
#define MICROPY_PY_IO                       (1)
#define MICROPY_PY_IO_IOBASE                (1)
#define MICROPY_PY_IO_FILEIO                (0)
#define MICROPY_PY_IO_BYTESIO               (1)
#define MICROPY_PY_IO_BUFFEREDWRITER        (1)
#define MICROPY_PY_STRUCT                   (1)
#define MICROPY_PY_SYS                      (1)
#define MICROPY_PY_SYS_MAXSIZE              (1)
#define MICROPY_PY_SYS_MODULES              (1)
#define MICROPY_PY_SYS_EXIT                 (1)
#define MICROPY_PY_SYS_STDFILES             (1)
#define MICROPY_PY_SYS_STDIO_BUFFER         (1)
#define MICROPY_PY_UTIME_MP_HAL             (1)

// extended modules
#define MICROPY_PY_UCTYPES                  (1)
#define MICROPY_PY_UZLIB                    (1)
#define MICROPY_PY_UJSON                    (1)
#define MICROPY_PY_URE                      (1)
#define MICROPY_PY_URE_SUB                  (1)
#define MICROPY_PY_UHEAPQ                   (1)
#define MICROPY_PY_UTIMEQ                   (1)
// #define MICROPY_PY_UHASHLIB                 (1)
// #define MICROPY_PY_UHASHLIB_SHA1            (1)
// #define MICROPY_PY_UHASHLIB_SHA256          (1)
// #define MICROPY_PY_UCRYPTOLIB               (1)
#define MICROPY_PY_UBINASCII                (1)
#define MICROPY_PY_UBINASCII_CRC32          (1)
#define MICROPY_PY_URANDOM                  (1)
#define MICROPY_PY_URANDOM_EXTRA_FUNCS      (1)
#define MICROPY_PY_OS_DUPTERM               (1)
#define MICROPY_PY_MACHINE                  (1)

// extra builtin names to add to the global namespace
#define MICROPY_PORT_BUILTINS \
    { MP_ROM_QSTR(MP_QSTR_open), MP_ROM_PTR(&mp_builtin_open_obj) },

// extra builtin modules to add to the list of known ones
extern const struct _mp_obj_module_t utime_module;
extern const struct _mp_obj_module_t uos_module;
extern const struct _mp_obj_module_t mp_module_machine;

#define MICROPY_PORT_BUILTIN_MODULES \
    { MP_ROM_QSTR(MP_QSTR_utime), MP_ROM_PTR(&utime_module) }, \
    { MP_ROM_QSTR(MP_QSTR_uos), MP_ROM_PTR(&uos_module) }, \
    { MP_ROM_QSTR(MP_QSTR_machine), MP_ROM_PTR(&mp_module_machine) }, \

#define MICROPY_PORT_BUILTIN_MODULE_WEAK_LINKS \
    { MP_ROM_QSTR(MP_QSTR_binascii), MP_ROM_PTR(&mp_module_ubinascii) }, \
    { MP_ROM_QSTR(MP_QSTR_collections), MP_ROM_PTR(&mp_module_collections) }, \
    { MP_ROM_QSTR(MP_QSTR_io), MP_ROM_PTR(&mp_module_io) }, \
    { MP_ROM_QSTR(MP_QSTR_os), MP_ROM_PTR(&uos_module) }, \

#define MP_STATE_PORT MP_STATE_VM

#define MICROPY_PORT_ROOT_POINTERS \
    char *readline_hist[8]; \
    mp_obj_t keyboard_interrupt_obj; \

// type definitions for the specific machine

#define BYTES_PER_WORD (4)
#define MICROPY_MAKE_POINTER_CALLABLE(p) ((void*)((mp_uint_t)(p)))
#define MP_PLAT_PRINT_STRN(str, len) mp_hal_stdout_tx_strn_cooked(str, len)
#define MP_SSIZE_MAX (0x7fffffff)

#define MP_ENDIANNESS_LITTLE                (1)
#define MPZ_DIG_SIZE                        (8)

#define UINT_FMT "%"PRIu32
#define INT_FMT "%"PRId32

typedef int32_t mp_int_t; // must be pointer size
typedef uint32_t mp_uint_t; // must be pointer size
typedef long mp_off_t;

// board specifics

#define MICROPY_MPHALPORT_H         "pic32mx_mphal.h"
#ifndef MICROPY_PY_SYS_PLATFORM
# define MICROPY_PY_SYS_PLATFORM    "unknown"
#endif
#ifndef MICROPY_HW_BOARD_NAME
# define MICROPY_HW_BOARD_NAME      "PIC32"
#endif
#ifndef MICROPY_HW_MCU_NAME
# define MICROPY_HW_MCU_NAME        "PIC32"
#endif
