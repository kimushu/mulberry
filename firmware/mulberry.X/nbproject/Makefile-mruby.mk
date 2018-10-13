#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-mruby.mk)" "nbproject/Makefile-local-mruby.mk"
include nbproject/Makefile-local-mruby.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=mruby
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mulberry.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mulberry.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/mirb.c ../src/main.c ../src/mirb_body.c ../src/pybrepl.c ../src/sys_console_stdio.c ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../framework/system/console/src/sys_console.c ../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../../../../../third_party/tinythreads/TINYTH/src/tth_attr.c ../../../../../third_party/tinythreads/TINYTH/src/tth_cond.c ../../../../../third_party/tinythreads/TINYTH/src/tth_mutex.c ../../../../../third_party/tinythreads/TINYTH/src/tth_once.c ../../../../../third_party/tinythreads/TINYTH/src/tth_sched.c ../../../../../third_party/tinythreads/TINYTH/src/tth_sem.c ../../../../../third_party/tinythreads/TINYTH/src/tth_sleep.c ../../../../../third_party/tinythreads/TINYTH/src/tth_thread.c ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m.c ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m_asm.S ../src/system_config/mruby/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/mruby/framework/system/devcon/src/sys_devcon.c ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/mruby/framework/system/ports/src/sys_ports_static.c ../src/system_config/mruby/system_init.c ../src/system_config/mruby/system_interrupt.c ../src/system_config/mruby/system_exceptions.c ../src/system_config/mruby/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/mirb.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/mirb_body.o ${OBJECTDIR}/_ext/1360937237/pybrepl.o ${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ${OBJECTDIR}/_ext/1434663852/sys_console.o ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ${OBJECTDIR}/_ext/179651966/drv_usbhs.o ${OBJECTDIR}/_ext/2136608937/usb_device.o ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1554782335/tth_attr.o ${OBJECTDIR}/_ext/1554782335/tth_cond.o ${OBJECTDIR}/_ext/1554782335/tth_mutex.o ${OBJECTDIR}/_ext/1554782335/tth_once.o ${OBJECTDIR}/_ext/1554782335/tth_sched.o ${OBJECTDIR}/_ext/1554782335/tth_sem.o ${OBJECTDIR}/_ext/1554782335/tth_sleep.o ${OBJECTDIR}/_ext/1554782335/tth_thread.o ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o ${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1056033138/sys_devcon.o ${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/331382039/sys_ports_static.o ${OBJECTDIR}/_ext/1437572400/system_init.o ${OBJECTDIR}/_ext/1437572400/system_interrupt.o ${OBJECTDIR}/_ext/1437572400/system_exceptions.o ${OBJECTDIR}/_ext/1437572400/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/mirb.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/mirb_body.o.d ${OBJECTDIR}/_ext/1360937237/pybrepl.o.d ${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o.d ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d ${OBJECTDIR}/_ext/1434663852/sys_console.o.d ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d ${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d ${OBJECTDIR}/_ext/2136608937/usb_device.o.d ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/1554782335/tth_attr.o.d ${OBJECTDIR}/_ext/1554782335/tth_cond.o.d ${OBJECTDIR}/_ext/1554782335/tth_mutex.o.d ${OBJECTDIR}/_ext/1554782335/tth_once.o.d ${OBJECTDIR}/_ext/1554782335/tth_sched.o.d ${OBJECTDIR}/_ext/1554782335/tth_sem.o.d ${OBJECTDIR}/_ext/1554782335/tth_sleep.o.d ${OBJECTDIR}/_ext/1554782335/tth_thread.o.d ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o.d ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.d ${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/1056033138/sys_devcon.o.d ${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/331382039/sys_ports_static.o.d ${OBJECTDIR}/_ext/1437572400/system_init.o.d ${OBJECTDIR}/_ext/1437572400/system_interrupt.o.d ${OBJECTDIR}/_ext/1437572400/system_exceptions.o.d ${OBJECTDIR}/_ext/1437572400/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/mirb.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/mirb_body.o ${OBJECTDIR}/_ext/1360937237/pybrepl.o ${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ${OBJECTDIR}/_ext/1434663852/sys_console.o ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ${OBJECTDIR}/_ext/179651966/drv_usbhs.o ${OBJECTDIR}/_ext/2136608937/usb_device.o ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1554782335/tth_attr.o ${OBJECTDIR}/_ext/1554782335/tth_cond.o ${OBJECTDIR}/_ext/1554782335/tth_mutex.o ${OBJECTDIR}/_ext/1554782335/tth_once.o ${OBJECTDIR}/_ext/1554782335/tth_sched.o ${OBJECTDIR}/_ext/1554782335/tth_sem.o ${OBJECTDIR}/_ext/1554782335/tth_sleep.o ${OBJECTDIR}/_ext/1554782335/tth_thread.o ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o ${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1056033138/sys_devcon.o ${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/331382039/sys_ports_static.o ${OBJECTDIR}/_ext/1437572400/system_init.o ${OBJECTDIR}/_ext/1437572400/system_interrupt.o ${OBJECTDIR}/_ext/1437572400/system_exceptions.o ${OBJECTDIR}/_ext/1437572400/system_tasks.o

# Source Files
SOURCEFILES=../src/mirb.c ../src/main.c ../src/mirb_body.c ../src/pybrepl.c ../src/sys_console_stdio.c ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../framework/system/console/src/sys_console.c ../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../../../../../third_party/tinythreads/TINYTH/src/tth_attr.c ../../../../../third_party/tinythreads/TINYTH/src/tth_cond.c ../../../../../third_party/tinythreads/TINYTH/src/tth_mutex.c ../../../../../third_party/tinythreads/TINYTH/src/tth_once.c ../../../../../third_party/tinythreads/TINYTH/src/tth_sched.c ../../../../../third_party/tinythreads/TINYTH/src/tth_sem.c ../../../../../third_party/tinythreads/TINYTH/src/tth_sleep.c ../../../../../third_party/tinythreads/TINYTH/src/tth_thread.c ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m.c ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m_asm.S ../src/system_config/mruby/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/mruby/framework/system/devcon/src/sys_devcon.c ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/mruby/framework/system/ports/src/sys_ports_static.c ../src/system_config/mruby/system_init.c ../src/system_config/mruby/system_interrupt.c ../src/system_config/mruby/system_exceptions.c ../src/system_config/mruby/system_tasks.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
Device=PIC32MZ2048EFM064
ProjectDir="C:\microchip\harmony\v2_06\apps\myapps\mulberry\firmware\mulberry.X"
ConfName=mruby
ImagePath="dist\mruby\${IMAGE_TYPE}\mulberry.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\mruby\${IMAGE_TYPE}"
ImageName="mulberry.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-mruby.mk dist/${CND_CONF}/${IMAGE_TYPE}/mulberry.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [${MP_CC_DIR}\xc32-objdump -S ${ImageDir}\${PROJECTNAME}.${IMAGE_TYPE}.elf > ${ImageDir}\${PROJECTNAME}.${IMAGE_TYPE}.lst]"
	@${MP_CC_DIR}\xc32-objdump -S ${ImageDir}\${PROJECTNAME}.${IMAGE_TYPE}.elf > ${ImageDir}\${PROJECTNAME}.${IMAGE_TYPE}.lst
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MZ2048EFM064
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.ok ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.d" "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -D__tinythreads__ -I"../src/system_config/mruby" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.d"  -o ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m_asm.S  -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  -newlib-libc -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"../../mruby/include",-I"../src/system_config/mruby" -I"../../../../../third_party/tinythreads/TINYTH/inc"
	
${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o: ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1056033138" 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -D__tinythreads__ -I"../src/system_config/mruby" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  -newlib-libc -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"../../mruby/include",-I"../src/system_config/mruby" -I"../../../../../third_party/tinythreads/TINYTH/inc"
	
else
${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.ok ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.d" "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -D__tinythreads__ -I"../src/system_config/mruby" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.d"  -o ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m_asm.S  -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  -newlib-libc -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m_asm.o.asm.d",--gdwarf-2 -I"../../mruby/include",-I"../src/system_config/mruby" -I"../../../../../third_party/tinythreads/TINYTH/inc"
	
${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o: ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1056033138" 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -D__tinythreads__ -I"../src/system_config/mruby" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  -newlib-libc -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1056033138/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -I"../../mruby/include",-I"../src/system_config/mruby" -I"../../../../../third_party/tinythreads/TINYTH/inc"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/mirb.o: ../src/mirb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mirb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mirb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mirb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/mirb.o.d" -o ${OBJECTDIR}/_ext/1360937237/mirb.o ../src/mirb.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1360937237/mirb_body.o: ../src/mirb_body.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mirb_body.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mirb_body.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mirb_body.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/mirb_body.o.d" -o ${OBJECTDIR}/_ext/1360937237/mirb_body.o ../src/mirb_body.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1360937237/pybrepl.o: ../src/pybrepl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pybrepl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pybrepl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/pybrepl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/pybrepl.o.d" -o ${OBJECTDIR}/_ext/1360937237/pybrepl.o ../src/pybrepl.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o: ../src/sys_console_stdio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o.d" -o ${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o ../src/sys_console_stdio.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/941160041/drv_tmr.o: ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/941160041" 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1434663852/sys_console.o: ../../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434663852" 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434663852/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1434663852/sys_console.o.d" -o ${OBJECTDIR}/_ext/1434663852/sys_console.o ../../../../../framework/system/console/src/sys_console.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o: ../../../../../framework/system/console/src/sys_console_usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434663852" 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o ../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/2110151058/sys_tmr.o: ../../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2110151058" 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/179651966/drv_usbhs.o: ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/179651966" 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/179651966/drv_usbhs.o ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/2136608937/usb_device.o: ../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device.o ../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o: ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/179651966" 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o: ../../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o ../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o: ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_attr.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_attr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_attr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_attr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_attr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_attr.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_attr.o ../../../../../third_party/tinythreads/TINYTH/src/tth_attr.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_cond.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_cond.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_cond.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_cond.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_cond.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_cond.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_cond.o ../../../../../third_party/tinythreads/TINYTH/src/tth_cond.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_mutex.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_mutex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_mutex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_mutex.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_mutex.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_mutex.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_mutex.o ../../../../../third_party/tinythreads/TINYTH/src/tth_mutex.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_once.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_once.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_once.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_once.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_once.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_once.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_once.o ../../../../../third_party/tinythreads/TINYTH/src/tth_once.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_sched.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_sched.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sched.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_sched.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_sched.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_sched.o ../../../../../third_party/tinythreads/TINYTH/src/tth_sched.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_sem.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_sem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_sem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_sem.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_sem.o ../../../../../third_party/tinythreads/TINYTH/src/tth_sem.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_sleep.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sleep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sleep.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_sleep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_sleep.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_sleep.o ../../../../../third_party/tinythreads/TINYTH/src/tth_sleep.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_thread.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_thread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_thread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_thread.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_thread.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_thread.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_thread.o ../../../../../third_party/tinythreads/TINYTH/src/tth_thread.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o: ../src/system_config/mruby/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/560556583" 
	@${RM} ${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o ../src/system_config/mruby/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1056033138/sys_devcon.o: ../src/system_config/mruby/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1056033138" 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1056033138/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1056033138/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1056033138/sys_devcon.o ../src/system_config/mruby/framework/system/devcon/src/sys_devcon.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o: ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1056033138" 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/331382039/sys_ports_static.o: ../src/system_config/mruby/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/331382039" 
	@${RM} ${OBJECTDIR}/_ext/331382039/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/331382039/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/331382039/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/331382039/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/331382039/sys_ports_static.o ../src/system_config/mruby/framework/system/ports/src/sys_ports_static.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1437572400/system_init.o: ../src/system_config/mruby/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1437572400" 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1437572400/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1437572400/system_init.o.d" -o ${OBJECTDIR}/_ext/1437572400/system_init.o ../src/system_config/mruby/system_init.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1437572400/system_interrupt.o: ../src/system_config/mruby/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1437572400" 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1437572400/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1437572400/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1437572400/system_interrupt.o ../src/system_config/mruby/system_interrupt.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1437572400/system_exceptions.o: ../src/system_config/mruby/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1437572400" 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1437572400/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1437572400/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1437572400/system_exceptions.o ../src/system_config/mruby/system_exceptions.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1437572400/system_tasks.o: ../src/system_config/mruby/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1437572400" 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1437572400/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1437572400/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1437572400/system_tasks.o ../src/system_config/mruby/system_tasks.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
else
${OBJECTDIR}/_ext/1360937237/mirb.o: ../src/mirb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mirb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mirb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mirb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/mirb.o.d" -o ${OBJECTDIR}/_ext/1360937237/mirb.o ../src/mirb.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1360937237/mirb_body.o: ../src/mirb_body.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mirb_body.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mirb_body.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mirb_body.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/mirb_body.o.d" -o ${OBJECTDIR}/_ext/1360937237/mirb_body.o ../src/mirb_body.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1360937237/pybrepl.o: ../src/pybrepl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pybrepl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pybrepl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/pybrepl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/pybrepl.o.d" -o ${OBJECTDIR}/_ext/1360937237/pybrepl.o ../src/pybrepl.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o: ../src/sys_console_stdio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o.d" -o ${OBJECTDIR}/_ext/1360937237/sys_console_stdio.o ../src/sys_console_stdio.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/941160041/drv_tmr.o: ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/941160041" 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1434663852/sys_console.o: ../../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434663852" 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434663852/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1434663852/sys_console.o.d" -o ${OBJECTDIR}/_ext/1434663852/sys_console.o ../../../../../framework/system/console/src/sys_console.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o: ../../../../../framework/system/console/src/sys_console_usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434663852" 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o ../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/2110151058/sys_tmr.o: ../../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2110151058" 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/179651966/drv_usbhs.o: ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/179651966" 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/179651966/drv_usbhs.o ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/2136608937/usb_device.o: ../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device.o ../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o: ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/179651966" 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o: ../../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o ../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o: ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_attr.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_attr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_attr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_attr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_attr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_attr.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_attr.o ../../../../../third_party/tinythreads/TINYTH/src/tth_attr.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_cond.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_cond.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_cond.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_cond.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_cond.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_cond.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_cond.o ../../../../../third_party/tinythreads/TINYTH/src/tth_cond.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_mutex.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_mutex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_mutex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_mutex.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_mutex.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_mutex.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_mutex.o ../../../../../third_party/tinythreads/TINYTH/src/tth_mutex.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_once.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_once.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_once.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_once.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_once.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_once.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_once.o ../../../../../third_party/tinythreads/TINYTH/src/tth_once.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_sched.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_sched.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sched.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_sched.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_sched.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_sched.o ../../../../../third_party/tinythreads/TINYTH/src/tth_sched.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_sem.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_sem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_sem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_sem.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_sem.o ../../../../../third_party/tinythreads/TINYTH/src/tth_sem.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_sleep.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sleep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_sleep.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_sleep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_sleep.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_sleep.o ../../../../../third_party/tinythreads/TINYTH/src/tth_sleep.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_thread.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_thread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_thread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_thread.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_thread.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_thread.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_thread.o ../../../../../third_party/tinythreads/TINYTH/src/tth_thread.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o: ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1554782335" 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o.d 
	@${RM} ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o.d" -o ${OBJECTDIR}/_ext/1554782335/tth_arch_pic32m.o ../../../../../third_party/tinythreads/TINYTH/src/tth_arch_pic32m.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o: ../src/system_config/mruby/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/560556583" 
	@${RM} ${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/560556583/sys_clk_pic32mz.o ../src/system_config/mruby/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1056033138/sys_devcon.o: ../src/system_config/mruby/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1056033138" 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1056033138/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1056033138/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1056033138/sys_devcon.o ../src/system_config/mruby/framework/system/devcon/src/sys_devcon.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o: ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1056033138" 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1056033138/sys_devcon_pic32mz.o ../src/system_config/mruby/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/331382039/sys_ports_static.o: ../src/system_config/mruby/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/331382039" 
	@${RM} ${OBJECTDIR}/_ext/331382039/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/331382039/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/331382039/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/331382039/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/331382039/sys_ports_static.o ../src/system_config/mruby/framework/system/ports/src/sys_ports_static.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1437572400/system_init.o: ../src/system_config/mruby/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1437572400" 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1437572400/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1437572400/system_init.o.d" -o ${OBJECTDIR}/_ext/1437572400/system_init.o ../src/system_config/mruby/system_init.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1437572400/system_interrupt.o: ../src/system_config/mruby/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1437572400" 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1437572400/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1437572400/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1437572400/system_interrupt.o ../src/system_config/mruby/system_interrupt.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1437572400/system_exceptions.o: ../src/system_config/mruby/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1437572400" 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1437572400/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1437572400/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1437572400/system_exceptions.o ../src/system_config/mruby/system_exceptions.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
${OBJECTDIR}/_ext/1437572400/system_tasks.o: ../src/system_config/mruby/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1437572400" 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437572400/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1437572400/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../mruby/include" -ffunction-sections -O2 -D__tinythreads__ -I"../src" -I"../src/system_config/mruby" -I"../src/mruby" -I"../../../../../framework" -I"../src/system_config/mruby/framework" -I"../../../../../third_party/tinythreads/TINYTH/inc" -MMD -MF "${OBJECTDIR}/_ext/1437572400/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1437572400/system_tasks.o ../src/system_config/mruby/system_tasks.c    -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -newlib-libc
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/mulberry.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../mruby/build/xc32/lib/libmruby.a ../../../../../bin/framework/peripheral/PIC32MZ2048EFM064_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/mulberry.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\mruby\build\xc32\lib\libmruby.a ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM064_peripherals.a      -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  -newlib-libc $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=491520,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/mulberry.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../mruby/build/xc32/lib/libmruby.a ../../../../../bin/framework/peripheral/PIC32MZ2048EFM064_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/mulberry.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\mruby\build\xc32\lib\libmruby.a ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM064_peripherals.a      -DXPRJ_mruby=$(CND_CONF)  -no-legacy-libc  -newlib-libc $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=491520,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/mulberry.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [make -C ../../mruby MP_CC_DIR=${MP_CC_DIR} Device=${Device}]"
	@make -C ../../mruby MP_CC_DIR=${MP_CC_DIR} Device=${Device}
	@echo "--------------------------------------"

# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/mruby
	${RM} -r dist/mruby

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
