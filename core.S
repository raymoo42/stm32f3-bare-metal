.syntax unified
.cpu cortex-m4
.fpu softvfp
.thumb

.global	reset_handler

.type	reset_handler, %function
reset_handler:
// Set stack pointer to end of stack
  ldr   r0, =_estack
  mov   sp, r0

// Copy from flash to RAM data init 
  movs  r0, #0
  ldr   r1, =_sdata
  ldr   r2, =_edata
  ldr   r3, =_sidata
  b     copy_sidata_loop

copy_sidata:
    ldr r4, [r3, r0]
    str r4, [r1, r0]
    ADDS r0, r0, #4

copy_sidata_loop:
    ADDS r4, r0, r1
    CMP r4, r2
    BCC copy_sidata

MOVS r0, #0
LDR r1, =_sbss
LDR r2, =_ebss
B reset_bss_loop

reset_bss:
    STR r0, [r1]
    ADDS r1, r1, #4

reset_bss_loop:
    CMP r1, r2
    BCC reset_bss

B main

.size	reset_handler, .-reset_handler

/**
 * @brief  This is the code that gets called when the processor receives an
 *         unexpected interrupt.  This simply enters an infinite loop, preserving
 *         the system state for examination by a debugger.
 *
 * @param  None
 * @retval : None
*/
    .section	.text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
	b	Infinite_Loop
	.size	Default_Handler, .-Default_Handler
