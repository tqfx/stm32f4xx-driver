CURRENT_DIR = $(lastword $(dir $(MAKEFILE_LIST)))
# C defines
C_DEFS += -DUSE_STDPERIPH_DRIVER
# C sources
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/Device/ST/STM32F4xx/Source/Templates/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)STM32F4xx_StdPeriph_Driver/src/*.c)
# C includes
C_INCLUDES += -I$(CURRENT_DIR)CMSIS/Device/ST/STM32F4xx/Include
C_INCLUDES += -I$(CURRENT_DIR)STM32F4xx_StdPeriph_Driver/inc
C_INCLUDES += -I$(CURRENT_DIR)CMSIS/Include
