CURRENT_DIR = $(lastword $(dir $(MAKEFILE_LIST)))
# C defines
C_DEFS += -D__FPU_PRESENT
C_DEFS += -DARM_MATH_CM4
# C sources
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/BasicMathFunctions/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/CommonTables/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/ComplexMathFunctions/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/ControllerFunctions/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/FastMathFunctions/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/FilteringFunctions/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/MatrixFunctions/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/StatisticsFunctions/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/SupportFunctions/*.c)
C_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/TransformFunctions/*.c)
# ASM sources
ASM2_SOURCES += $(wildcard $(CURRENT_DIR)CMSIS/DSP_Lib/Source/TransformFunctions/*.S)
