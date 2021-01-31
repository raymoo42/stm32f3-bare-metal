# Usage

# Install openOCD and arm-none-eabi in PATH

1. Connect Board
2. start openocd: openocd -f /usr/share/openocd/scripts/board/stm32f3discovery.cfg -f /usr/share/openocd/scripts/interface/stlink-v2-1.cfg

#  Build and flash manually
1. make clean && make 
2. start debugger: arm-none-eabi-gdb main.elf
3. connect to target: target extended-remote :3333
4. flash: load
5. optional, set breakpoints: break main and/or break reset_handler
6. step through / continue to run
