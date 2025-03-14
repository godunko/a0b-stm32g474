--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32G474 interrupt numbers

with A0B.ARMv7M;
with A0B.STM32G4.Interrupts;

package A0B.STM32G474.Interrupts
  with Preelaborate, No_Elaboration_Code_All
is

   subtype Interrupt_Number is
     A0B.ARMv7M.External_Interrupt_Number range 0 .. 101;

   WWDG                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.WWDG;
   PVD_PVM                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.PVD_PVM;
   RTC_TAMP_CSS_LSE                      : Interrupt_Number
     renames A0B.STM32G4.Interrupts.RTC_TAMP_CSS_LSE;
   RTC_WKUP                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.RTC_WKUP;
   FLASH                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FLASH;
   RCC                                   : Interrupt_Number
     renames A0B.STM32G4.Interrupts.RCC;
   EXTI0                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.EXTI0;
   EXTI1                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.EXTI1;
   EXTI2                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.EXTI2;
   EXTI3                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.EXTI3;
   EXTI4                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.EXTI4;
   DMA1_CH1                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA1_CH1;
   DMA1_CH2                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA1_CH2;
   DMA1_CH3                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA1_CH3;
   DMA1_CH4                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA1_CH4;
   DMA1_CH5                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA1_CH5;
   DMA1_CH6                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA1_CH6;
   DMA1_CH7                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA1_CH7;
   ADC1_2                                : Interrupt_Number
     renames A0B.STM32G4.Interrupts.ADC1_2;
   USB_HP                                : Interrupt_Number
     renames A0B.STM32G4.Interrupts.USB_HP;
   USB_LP                                : Interrupt_Number
     renames A0B.STM32G4.Interrupts.USB_LP;
   FDCAN1_IT0                            : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FDCAN1_IT0;
   FDCAN1_IT1                            : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FDCAN1_IT1;
   EXTI9_5                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.EXTI9_5;
   TIM1_BRK_TIM15                        : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM1_BRK_TIM15;
   TIM1_UP_TIM16                         : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM1_UP_TIM16;
   TIM1_TRG_COM_TIM17_TIM1_DIR_TIM1_IDX  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM1_TRG_COM_TIM17_TIM1_DIR_TIM1_IDX;
   TIM1_CC                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM1_CC;
   TIM2                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM2;
   TIM3                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM3;
   TIM4                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM4;
   I2C1_EV                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.I2C1_EV;
   I2C1_ER                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.I2C1_ER;
   I2C2_EV                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.I2C2_EV;
   I2C2_ER                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.I2C2_ER;
   SPI1                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.SPI1;
   SPI2                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.SPI2;
   USART1                                : Interrupt_Number
     renames A0B.STM32G4.Interrupts.USART1;
   USART2                                : Interrupt_Number
     renames A0B.STM32G4.Interrupts.USART2;
   USART3                                : Interrupt_Number
     renames A0B.STM32G4.Interrupts.USART3;
   EXTI15_10                             : Interrupt_Number
     renames A0B.STM32G4.Interrupts.EXTI15_10;
   RTC_ALARM                             : Interrupt_Number
     renames A0B.STM32G4.Interrupts.RTC_ALARM;
   USBWakeUP                             : Interrupt_Number
     renames A0B.STM32G4.Interrupts.USBWakeUP;
   TIM8_BRK_TIM8_TERR_TIM8_BRK_TIM8_IERR : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM8_BRK_TIM8_TERR_TIM8_BRK_TIM8_IERR;
   TIM8_UP                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM8_UP;
   TIM8_TRG_COM_TIM8_DIR_TIM8_IDX        : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM8_TRG_COM_TIM8_DIR_TIM8_IDX;
   TIM8_CC                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM8_CC;
   ADC3                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.ADC3;
   FSMC                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FSMC;
   LPTIM1                                : Interrupt_Number
     renames A0B.STM32G4.Interrupts.LPTIM1;
   TIM5                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM5;
   SPI3                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.SPI3;
   UART4                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.UART4;
   UART5                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.UART5;
   TIM6_DACUNDER                         : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM6_DACUNDER;
   TIM7_DACUNDER                         : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM7_DACUNDER;
   DMA2_CH1                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA2_CH1;
   DMA2_CH2                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA2_CH2;
   DMA2_CH3                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA2_CH3;
   DMA2_CH4                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA2_CH4;
   DMA2_CH5                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA2_CH5;
   ADC4                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.ADC4;
   ADC5                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.ADC5;
   UCPD1                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.UCPD1;
   COMP1_2_3                             : Interrupt_Number
     renames A0B.STM32G4.Interrupts.COMP1_2_3;
   COMP4_5_6                             : Interrupt_Number
     renames A0B.STM32G4.Interrupts.COMP4_5_6;
   COMP7                                 : Interrupt_Number
     renames A0B.STM32G4.Interrupts.COMP7;
   HRTIM_Master_IRQn                     : Interrupt_Number
     renames A0B.STM32G4.Interrupts.HRTIM_Master_IRQn;
   HRTIM_TIMA_IRQn                       : Interrupt_Number
     renames A0B.STM32G4.Interrupts.HRTIM_TIMA_IRQn;
   HRTIM_TIMB_IRQn                       : Interrupt_Number
     renames A0B.STM32G4.Interrupts.HRTIM_TIMB_IRQn;
   HRTIM_TIMC_IRQn                       : Interrupt_Number
     renames A0B.STM32G4.Interrupts.HRTIM_TIMC_IRQn;
   HRTIM_TIMD_IRQn                       : Interrupt_Number
     renames A0B.STM32G4.Interrupts.HRTIM_TIMD_IRQn;
   HRTIM_TIME_IRQn                       : Interrupt_Number
     renames A0B.STM32G4.Interrupts.HRTIM_TIME_IRQn;
   HRTIM_TIM_FLT_IRQn                    : Interrupt_Number
     renames A0B.STM32G4.Interrupts.HRTIM_TIM_FLT_IRQn;
   HRTIM_TIMF_IRQn                       : Interrupt_Number
     renames A0B.STM32G4.Interrupts.HRTIM_TIMF_IRQn;
   CRS                                   : Interrupt_Number
     renames A0B.STM32G4.Interrupts.CRS;
   SAI                                   : Interrupt_Number
     renames A0B.STM32G4.Interrupts.SAI;
   TIM20_BRK_TIM20_TERR_TIM20_IERR       : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM20_BRK_TIM20_TERR_TIM20_IERR;
   TIM20_UP                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM20_UP;
   TIM20_TRG_COM_TIM20_DIR_TIM20_IDX     : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM20_TRG_COM_TIM20_DIR_TIM20_IDX;
   TIM20_CC                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.TIM20_CC;
   FPU                                   : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FPU;
   I2C4_EV                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.I2C4_EV;
   I2C4_ER                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.I2C4_ER;
   SPI4                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.SPI4;
   FDCAN2_IT0                            : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FDCAN2_IT0;
   FDCAN2_IT1                            : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FDCAN2_IT1;
   FDCAN3_IT0                            : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FDCAN3_IT0;
   FDCAN3_IT1                            : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FDCAN3_IT1;
   RNG                                   : Interrupt_Number
     renames A0B.STM32G4.Interrupts.RNG;
   LPUART                                : Interrupt_Number
     renames A0B.STM32G4.Interrupts.LPUART;
   I2C3_EV                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.I2C3_EV;
   I2C3_ER                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.I2C3_ER;
   DMAMUX_OVR                            : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMAMUX_OVR;
   QUADSPI                               : Interrupt_Number
     renames A0B.STM32G4.Interrupts.QUADSPI;
   DMA1_CH8                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA1_CH8;
   DMA2_CH6                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA2_CH6;
   DMA2_CH7                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA2_CH7;
   DMA2_CH8                              : Interrupt_Number
     renames A0B.STM32G4.Interrupts.DMA2_CH8;
   CORDIC                                : Interrupt_Number
     renames A0B.STM32G4.Interrupts.CORDIC;
   FMAC                                  : Interrupt_Number
     renames A0B.STM32G4.Interrupts.FMAC;

end A0B.STM32G474.Interrupts;
