/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    run_mp.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "run_mp.h"
#include <pthread.h>
#include <sys/ioctl.h>
#include <termios.h>
#include "py/compile.h"
#include "py/runtime.h"
#include "py/gc.h"
#include "py/mphal.h"
#include "py/mperrno.h"
#include "lib/utils/pyexec.h"
#include "lib/mp-readline/readline.h"

#define STACK_SIZE      (8 * 1024)
#define HEAP_SIZE       (400 * 1024)

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

RUN_MP_DATA run_mpData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


void *RUN_MP_WorkerThread(RUN_MP_DATA *data)
{
    char *heap = (char *)malloc(HEAP_SIZE);
    if (!heap) {
        mp_hal_stdout_tx_str("no sufficient heap area");
        return NULL;
    }

soft_reset:
    for (;;) {
        // Wait for terminal ready
        int value;
        if ((ioctl(STDOUT_FILENO, TIOCMGET, (char *)&value) == 0) && (value & TIOCM_DTR)) {
            break;
        }
        usleep(100000);
    }
    int stack_dummy;
    MP_STATE_THREAD(stack_top) = (char*)&stack_dummy;
    gc_init(heap, heap + HEAP_SIZE);
    mp_init();
    mp_hal_init();
    readline_init0();

    // REPL loop
    for (;;) {
        if (pyexec_mode_kind == PYEXEC_MODE_RAW_REPL) {
            if (pyexec_raw_repl() != 0) {
                break;
            }
        } else {
            if (pyexec_friendly_repl() != 0) {
                break;
            }
        }
    }

    mp_hal_stdout_tx_str("soft reboot\r\n");
    mp_deinit();
    goto soft_reset;
}


void gc_collect(void)
{
    void *dummy;
    gc_collect_start();
    gc_collect_root(&dummy, ((mp_uint_t)&dummy - (mp_uint_t)MP_STATE_THREAD(stack_top)) / sizeof(mp_uint_t));
    gc_collect_end();
}

mp_lexer_t *mp_lexer_new_from_file(const char *filename)
{
    mp_raise_OSError(MP_ENOENT);
}

mp_import_stat_t mp_import_stat(const char *path)
{
    return MP_IMPORT_STAT_NO_EXIST;
}

mp_obj_t mp_builtin_open(size_t n_args, const mp_obj_t *args, mp_map_t *kwargs)
{
    return mp_const_none;
}

MP_DEFINE_CONST_FUN_OBJ_KW(mp_builtin_open_obj, 1, mp_builtin_open);

void nlr_jump_fail(void *val)
{
    while (1);
}


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void RUN_MP_Initialize ( void )

  Remarks:
    See prototype in run_mp.h.
 */

void RUN_MP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    run_mpData.state = RUN_MP_STATE_INIT;
}


/******************************************************************************
  Function:
    void RUN_MP_Tasks ( void )

  Remarks:
    See prototype in run_mp.h.
 */

void RUN_MP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( run_mpData.state )
    {
        /* Application's initial state. */
        case RUN_MP_STATE_INIT:
        {
            pthread_attr_t attr;
            pthread_attr_init(&attr);
            pthread_attr_setstacksize(&attr, STACK_SIZE);

            if (pthread_create(&run_mpData.thread, &attr,
                (void *(*)(void *))RUN_MP_WorkerThread, &run_mpData) == 0)
            {
                run_mpData.state = RUN_MP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case RUN_MP_STATE_SERVICE_TASKS:
        {
            break;
        }

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
