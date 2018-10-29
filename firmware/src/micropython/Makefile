include ../../../micropython/py/mkenv.mk

# qstr definitions (must come before including py.mk)
QSTR_DEFS = qstrdefsport.h

# include py core make definitions
include $(TOP)/py/py.mk

ifneq ($(MP_CC_DIR),)
empty =
space = $(empty) $(empty)
paren1 = (
paren2 = )
XC32 = $(subst $(paren2),\$(paren2),$(subst $(paren1),\$(paren1),$(subst $(space),\$(space),$(subst \,/,$(MP_CC_DIR)))))/..
else
XC32 = $(lastword $(sort $(wildcard /opt/microchip/xc32/v*)))
endif
CROSS_COMPILE = $(XC32)/bin/xc32-

PART = $(patsubst PIC%,%,$(Device))

INC += -I.
INC += -I$(TOP)
INC += -I$(BUILD)
INC += -I$(XC32)/pic32mx/include

CFLAGS_PIC32MX = -mprocessor=$(PART)
CFLAGS = $(INC) -Wall -Werror -Wno-error=unused-variable -std=gnu99 -nostdlib $(CFLAGS_PIC32MX) $(COPT) -newlib-libc

#Debugging/Optimization
ifeq ($(DEBUG), 1)
CFLAGS += -O0 -ggdb
else
CFLAGS += -O1 -DNDEBUG
endif

CFLAGS += -D'MICROPY_PY_SYS_PLATFORM=\"pic32mx\"'
CFLAGS += -D'MICROPY_HW_BOARD_NAME=\"mulberry\"'
CFLAGS += -D'MICROPY_HW_MCU_NAME=\"PIC32\"'

$(info $(CFLAGS))

SRC_C = \
	help.c \
	modmachine.c \
	moduos.c \
	modutime.c \
	pic32mx_mphal.c \

EXTMOD_SRC_C = \

LIB_SRC_C = \
	lib/utils/pyexec.c \
	lib/utils/sys_stdio_mphal.c \
	lib/mp-readline/readline.c \

# List of sources for qstr extraction
SRC_QSTR += $(SRC_C) $(EXTMOD_SRC_C) $(LIB_SRC_C)
# Append any auto-generated sources that are needed by sources listed in SRC_QSTR
SRC_QSTR_AUTO_DEPS +=

OBJ = $(PY_O) $(addprefix $(BUILD)/, $(LIB_SRC_C:.c=.o))

all: $(BUILD)/libmicropython.a

$(BUILD)/libmicropython.a: $(OBJ)
	$(ECHO) "ARCHIVE $@"
	$(Q)$(AR) rs $@ $(OBJ)

$(PY_BUILD)/gc.o: CFLAGS += -O1
$(PY_BUILD)/vm.o: CFLAGS += -O1

include $(TOP)/py/mkrules.mk
