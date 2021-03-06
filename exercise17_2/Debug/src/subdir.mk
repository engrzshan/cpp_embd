################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Uart.cpp \
../src/cr_cpp_config.cpp \
../src/cr_startup_lpc175x_6x.cpp \
../src/gpio.cpp \
../src/main.cpp \
../src/motor.cpp \
../src/motorstep.cpp \
../src/rinsestep.cpp \
../src/seven_segment.cpp \
../src/spinstep.cpp \
../src/step.cpp \
../src/wash_prog.cpp \
../src/washstep.cpp 

C_SRCS += \
../src/crp.c \
../src/sysinit.c \
../src/uart_17xx_40xx.c 

OBJS += \
./src/Uart.o \
./src/cr_cpp_config.o \
./src/cr_startup_lpc175x_6x.o \
./src/crp.o \
./src/gpio.o \
./src/main.o \
./src/motor.o \
./src/motorstep.o \
./src/rinsestep.o \
./src/seven_segment.o \
./src/spinstep.o \
./src/step.o \
./src/sysinit.o \
./src/uart_17xx_40xx.o \
./src/wash_prog.o \
./src/washstep.o 

C_DEPS += \
./src/crp.d \
./src/sysinit.d \
./src/uart_17xx_40xx.d 

CPP_DEPS += \
./src/Uart.d \
./src/cr_cpp_config.d \
./src/cr_startup_lpc175x_6x.d \
./src/gpio.d \
./src/main.d \
./src/motor.d \
./src/motorstep.d \
./src/rinsestep.d \
./src/seven_segment.d \
./src/spinstep.d \
./src/step.d \
./src/wash_prog.d \
./src/washstep.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DDEBUG -D__CODE_RED -DCORE_M3 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC17XX__ -I"/home/engrzshan/workspace/lpc/lpc_board_nxp_lpcxpresso_1769/inc" -I"/home/engrzshan/workspace/lpc/lpc_chip_175x_6x/inc" -I"/home/engrzshan/workspace/lpc/exercise17_2/inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DNO_BOARD_LIB -DDEBUG -D__CODE_RED -DCORE_M3 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC17XX__ -D__NEWLIB__ -I"/home/engrzshan/workspace/lpc/lpc_board_nxp_lpcxpresso_1769/inc" -I"/home/engrzshan/workspace/lpc/lpc_chip_175x_6x/inc" -I"/home/engrzshan/workspace/lpc/exercise17_2/inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


