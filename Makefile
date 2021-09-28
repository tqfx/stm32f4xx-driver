CURDIR := $(lastword $(dir $(MAKEFILE_LIST)))
# C defines
C_DEFS += -DUSE_STDPERIPH_DRIVER
ifeq ($(ENABLE_DSP), 1)
C_DEFS += -D__FPU_PRESENT
C_DEFS += -DARM_MATH_CM4
endif # ENABLE_DSP
# C sources
C_SOURCES += $(wildcard $(CURDIR)CMSIS/Device/ST/STM32F4xx/Source/Templates/*.c)
C_SOURCES += $(wildcard $(CURDIR)STM32F4xx_StdPeriph_Driver/src/*.c)
ifeq ($(ENABLE_DSP), 1)
asm_SOURCES += $(wildcard $(CURDIR)CMSIS/DSP_Lib/Source/*/*.S)
C_SOURCES += $(wildcard $(CURDIR)CMSIS/DSP_Lib/Source/*/*.c)
endif # ENABLE_DSP
# C includes
C_INCLUDES += -I$(CURDIR)CMSIS/Device/ST/STM32F4xx/Include
C_INCLUDES += -I$(CURDIR)STM32F4xx_StdPeriph_Driver/inc
C_INCLUDES += -I$(CURDIR)CMSIS/Include
