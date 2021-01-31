/******************************************************************************
*
* The minimal vector table for a Cortex-M4.  Note that the proper constructs
* must be placed on this to ensure that it ends up at physical address
* 0x0000.0000.
*
******************************************************************************/
.syntax unified
.cpu cortex-m0
.fpu softvfp
.thumb

.global	vtable
.global default_interrupt_handler

.section .vector_table,"a",%progbits
.type vtable, %object

vtable:
	.word	_estack
	.word	reset_handler
	.word	NMI_Handler
	.word	HardFault_Handler
	.word	MemManage_Handler
	.word	BusFault_Handler
	.word	UsageFault_Handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	SVC_Handler
	.word	DebugMon_Handler
	.word	0
	.word	PendSV_Handler
	.word	SysTick_Handler
	.word	WWDG_IRQHandler
	.word	PVD_IRQHandler
	.word	TAMP_STAMP_IRQHandler
	.word	RTC_WKUP_IRQHandler
	.word	FLASH_IRQHandler
	.word	RCC_IRQHandler
	.word	EXTI0_IRQHandler
	.word	EXTI1_IRQHandler
	.word	EXTI2_TSC_IRQHandler
	.word	EXTI3_IRQHandler
	.word	EXTI4_IRQHandler
	.word	DMA1_Channel1_IRQHandler
	.word	DMA1_Channel2_IRQHandler
	.word	DMA1_Channel3_IRQHandler
	.word	DMA1_Channel4_IRQHandler
	.word	DMA1_Channel5_IRQHandler
	.word	DMA1_Channel6_IRQHandler
	.word	DMA1_Channel7_IRQHandler
	.word	ADC1_2_IRQHandler
	.word	USB_HP_CAN_TX_IRQHandler
	.word	USB_LP_CAN_RX0_IRQHandler
	.word	CAN_RX1_IRQHandler
	.word	CAN_SCE_IRQHandler
	.word	EXTI9_5_IRQHandler
	.word	TIM1_BRK_TIM15_IRQHandler
	.word	TIM1_UP_TIM16_IRQHandler
	.word	TIM1_TRG_COM_TIM17_IRQHandler
	.word	TIM1_CC_IRQHandler
	.word	TIM2_IRQHandler
	.word	TIM3_IRQHandler
	.word	TIM4_IRQHandler
	.word	I2C1_EV_IRQHandler
	.word	I2C1_ER_IRQHandler
	.word	I2C2_EV_IRQHandler
	.word	I2C2_ER_IRQHandler
	.word	SPI1_IRQHandler
	.word	SPI2_IRQHandler
	.word	USART1_IRQHandler
	.word	USART2_IRQHandler
	.word	USART3_IRQHandler
	.word	EXTI15_10_IRQHandler
	.word	RTC_Alarm_IRQHandler
	.word	USBWakeUp_IRQHandler
	.word	TIM8_BRK_IRQHandler
	.word	TIM8_UP_IRQHandler
	.word	TIM8_TRG_COM_IRQHandler
	.word	TIM8_CC_IRQHandler
	.word	ADC3_IRQHandler
	.word	0
	.word	0
	.word	0
	.word	SPI3_IRQHandler
	.word	UART4_IRQHandler
	.word	UART5_IRQHandler
	.word	TIM6_DAC_IRQHandler
	.word	TIM7_IRQHandler
	.word	DMA2_Channel1_IRQHandler
	.word	DMA2_Channel2_IRQHandler
	.word	DMA2_Channel3_IRQHandler
	.word	DMA2_Channel4_IRQHandler
	.word	DMA2_Channel5_IRQHandler
	.word	ADC4_IRQHandler
	.word	0
	.word	0
	.word	COMP1_2_3_IRQHandler
	.word	COMP4_5_6_IRQHandler
	.word	COMP7_IRQHandler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	USB_HP_IRQHandler
	.word	USB_LP_IRQHandler
	.word	USBWakeUp_RMP_IRQHandler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	FPU_IRQHandler

/*******************************************************************************
*
* Provide weak aliases for each Exception handler to the default_interrupt_handle.
* As they are weak aliases, any function with the same name will override
* this definition.
*
*******************************************************************************/

  .weak	NMI_Handler
	.thumb_set NMI_Handler,default_interrupt_handler

  .weak	HardFault_Handler
	.thumb_set HardFault_Handler,default_interrupt_handler

  .weak	MemManage_Handler
	.thumb_set MemManage_Handler,default_interrupt_handler

  .weak	BusFault_Handler
	.thumb_set BusFault_Handler,default_interrupt_handler

	.weak	UsageFault_Handler
	.thumb_set UsageFault_Handler,default_interrupt_handler

	.weak	SVC_Handler
	.thumb_set SVC_Handler,default_interrupt_handler

	.weak	DebugMon_Handler
	.thumb_set DebugMon_Handler,default_interrupt_handler

	.weak	PendSV_Handler
	.thumb_set PendSV_Handler,default_interrupt_handler

	.weak	SysTick_Handler
	.thumb_set SysTick_Handler,default_interrupt_handler

	.weak	WWDG_IRQHandler
	.thumb_set WWDG_IRQHandler,default_interrupt_handler

	.weak	PVD_IRQHandler
	.thumb_set PVD_IRQHandler,default_interrupt_handler

	.weak	TAMP_STAMP_IRQHandler
	.thumb_set TAMP_STAMP_IRQHandler,default_interrupt_handler

	.weak	RTC_WKUP_IRQHandler
	.thumb_set RTC_WKUP_IRQHandler,default_interrupt_handler

	.weak	FLASH_IRQHandler
	.thumb_set FLASH_IRQHandler,default_interrupt_handler

	.weak	RCC_IRQHandler
	.thumb_set RCC_IRQHandler,default_interrupt_handler

	.weak	EXTI0_IRQHandler
	.thumb_set EXTI0_IRQHandler,default_interrupt_handler

	.weak	EXTI1_IRQHandler
	.thumb_set EXTI1_IRQHandler,default_interrupt_handler

	.weak	EXTI2_TSC_IRQHandler
	.thumb_set EXTI2_TSC_IRQHandler,default_interrupt_handler

	.weak	EXTI3_IRQHandler
	.thumb_set EXTI3_IRQHandler,default_interrupt_handler

	.weak	EXTI4_IRQHandler
	.thumb_set EXTI4_IRQHandler,default_interrupt_handler

	.weak	DMA1_Channel1_IRQHandler
	.thumb_set DMA1_Channel1_IRQHandler,default_interrupt_handler

	.weak	DMA1_Channel2_IRQHandler
	.thumb_set DMA1_Channel2_IRQHandler,default_interrupt_handler

	.weak	DMA1_Channel3_IRQHandler
	.thumb_set DMA1_Channel3_IRQHandler,default_interrupt_handler

	.weak	DMA1_Channel4_IRQHandler
	.thumb_set DMA1_Channel4_IRQHandler,default_interrupt_handler

	.weak	DMA1_Channel5_IRQHandler
	.thumb_set DMA1_Channel5_IRQHandler,default_interrupt_handler

	.weak	DMA1_Channel6_IRQHandler
	.thumb_set DMA1_Channel6_IRQHandler,default_interrupt_handler

	.weak	DMA1_Channel7_IRQHandler
	.thumb_set DMA1_Channel7_IRQHandler,default_interrupt_handler

	.weak	ADC1_2_IRQHandler
	.thumb_set ADC1_2_IRQHandler,default_interrupt_handler

	.weak	USB_HP_CAN_TX_IRQHandler
	.thumb_set USB_HP_CAN_TX_IRQHandler,default_interrupt_handler

	.weak	USB_LP_CAN_RX0_IRQHandler
	.thumb_set USB_LP_CAN_RX0_IRQHandler,default_interrupt_handler

	.weak	CAN_RX1_IRQHandler
	.thumb_set CAN_RX1_IRQHandler,default_interrupt_handler

	.weak	CAN_SCE_IRQHandler
	.thumb_set CAN_SCE_IRQHandler,default_interrupt_handler

	.weak	EXTI9_5_IRQHandler
	.thumb_set EXTI9_5_IRQHandler,default_interrupt_handler

	.weak	TIM1_BRK_TIM15_IRQHandler
	.thumb_set TIM1_BRK_TIM15_IRQHandler,default_interrupt_handler

	.weak	TIM1_UP_TIM16_IRQHandler
	.thumb_set TIM1_UP_TIM16_IRQHandler,default_interrupt_handler

	.weak	TIM1_TRG_COM_TIM17_IRQHandler
	.thumb_set TIM1_TRG_COM_TIM17_IRQHandler,default_interrupt_handler

	.weak	TIM1_CC_IRQHandler
	.thumb_set TIM1_CC_IRQHandler,default_interrupt_handler

	.weak	TIM2_IRQHandler
	.thumb_set TIM2_IRQHandler,default_interrupt_handler

	.weak	TIM3_IRQHandler
	.thumb_set TIM3_IRQHandler,default_interrupt_handler

	.weak	TIM4_IRQHandler
	.thumb_set TIM4_IRQHandler,default_interrupt_handler

	.weak	I2C1_EV_IRQHandler
	.thumb_set I2C1_EV_IRQHandler,default_interrupt_handler

	.weak	I2C1_ER_IRQHandler
	.thumb_set I2C1_ER_IRQHandler,default_interrupt_handler

	.weak	I2C2_EV_IRQHandler
	.thumb_set I2C2_EV_IRQHandler,default_interrupt_handler

	.weak	I2C2_ER_IRQHandler
	.thumb_set I2C2_ER_IRQHandler,default_interrupt_handler

	.weak	SPI1_IRQHandler
	.thumb_set SPI1_IRQHandler,default_interrupt_handler

	.weak	SPI2_IRQHandler
	.thumb_set SPI2_IRQHandler,default_interrupt_handler

	.weak	USART1_IRQHandler
	.thumb_set USART1_IRQHandler,default_interrupt_handler

	.weak	USART2_IRQHandler
	.thumb_set USART2_IRQHandler,default_interrupt_handler

	.weak	USART3_IRQHandler
	.thumb_set USART3_IRQHandler,default_interrupt_handler

	.weak	EXTI15_10_IRQHandler
	.thumb_set EXTI15_10_IRQHandler,default_interrupt_handler

	.weak	RTC_Alarm_IRQHandler
	.thumb_set RTC_Alarm_IRQHandler,default_interrupt_handler

	.weak	USBWakeUp_IRQHandler
	.thumb_set USBWakeUp_IRQHandler,default_interrupt_handler

	.weak	TIM8_BRK_IRQHandler
	.thumb_set TIM8_BRK_IRQHandler,default_interrupt_handler

	.weak	TIM8_UP_IRQHandler
	.thumb_set TIM8_UP_IRQHandler,default_interrupt_handler

	.weak	TIM8_TRG_COM_IRQHandler
	.thumb_set TIM8_TRG_COM_IRQHandler,default_interrupt_handler

	.weak	TIM8_CC_IRQHandler
	.thumb_set TIM8_CC_IRQHandler,default_interrupt_handler

	.weak	ADC3_IRQHandler
	.thumb_set ADC3_IRQHandler,default_interrupt_handler

	.weak	SPI3_IRQHandler
	.thumb_set SPI3_IRQHandler,default_interrupt_handler

	.weak	UART4_IRQHandler
	.thumb_set UART4_IRQHandler,default_interrupt_handler

	.weak	UART5_IRQHandler
	.thumb_set UART5_IRQHandler,default_interrupt_handler

	.weak	TIM6_DAC_IRQHandler
	.thumb_set TIM6_DAC_IRQHandler,default_interrupt_handler

	.weak	TIM7_IRQHandler
	.thumb_set TIM7_IRQHandler,default_interrupt_handler

	.weak	DMA2_Channel1_IRQHandler
	.thumb_set DMA2_Channel1_IRQHandler,default_interrupt_handler

	.weak	DMA2_Channel2_IRQHandler
	.thumb_set DMA2_Channel2_IRQHandler,default_interrupt_handler

	.weak	DMA2_Channel3_IRQHandler
	.thumb_set DMA2_Channel3_IRQHandler,default_interrupt_handler

	.weak	DMA2_Channel4_IRQHandler
	.thumb_set DMA2_Channel4_IRQHandler,default_interrupt_handler

	.weak	DMA2_Channel5_IRQHandler
	.thumb_set DMA2_Channel5_IRQHandler,default_interrupt_handler

	.weak	ADC4_IRQHandler
	.thumb_set ADC4_IRQHandler,default_interrupt_handler	
	
	.weak	COMP1_2_3_IRQHandler
	.thumb_set COMP1_2_3_IRQHandler,default_interrupt_handler
	
	.weak	COMP4_5_6_IRQHandler
	.thumb_set COMP4_5_6_IRQHandler,default_interrupt_handler
	
	.weak	COMP7_IRQHandler
	.thumb_set COMP7_IRQHandler,default_interrupt_handler	
	
	.weak	USB_HP_IRQHandler
	.thumb_set USB_HP_IRQHandler,default_interrupt_handler
	
	.weak	USB_LP_IRQHandler
	.thumb_set USB_LP_IRQHandler,default_interrupt_handler
	
	.weak	USBWakeUp_RMP_IRQHandler
	.thumb_set USBWakeUp_RMP_IRQHandler,default_interrupt_handler
	
	.weak	FPU_IRQHandler
	.thumb_set FPU_IRQHandler,default_interrupt_handler
.size	vtable, .-vtable

/*
 * A 'Default' interrupt handler. This is where interrupts
 * which are not otherwise configured will go.
 * It is an infinite loop, because...well, we weren't
 * expecting the interrupt, so what can we do?
 */
.section .text.default_interrupt_handler,"ax",%progbits
default_interrupt_handler:
    default_interrupt_loop:
      B default_interrupt_loop
.size default_interrupt_handler, .-default_interrupt_handler