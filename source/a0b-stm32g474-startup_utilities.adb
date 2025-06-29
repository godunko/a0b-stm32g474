--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with A0B.STM32G4.Peripherals.FLASH;
with A0B.STM32G4.Peripherals.PWR;
with A0B.STM32G4.Peripherals.RCC;

package body A0B.STM32G474.Startup_Utilities is

   -------------------------------------
   -- Generic_Configure_System_Clocks --
   -------------------------------------

   procedure Generic_Configure_System_Clocks is
   begin
      --  1. Program the VOS bits to “01” in the PWR_CR1 register.
      --
      --  2. Wait until the VOSF flag is cleared in the PWR_SR2 register.

      declare
         Aux : A0B.STM32G4.Peripherals.PWR.PWR_CR1_Register :=
           A0B.STM32G4.Peripherals.PWR.PWR_CR1;

      begin
         Aux.VOS := A0B.STM32G4.Peripherals.PWR.Range_1;  --  01: Range 1

         A0B.STM32G4.Peripherals.PWR.PWR_CR1 := Aux;
      end;

      while A0B.STM32G4.Peripherals.PWR.PWR_SR2.VOSF loop
         null;
      end loop;

      --  3. Adjust number of wait states according new frequency target in
      --  Range 1 (LATENCY bits in the FLASH_ACR).

      declare
         Aux : A0B.STM32G4.Peripherals.FLASH.FLASH_ACR_Register :=
           A0B.STM32G4.Peripherals.FLASH.FLASH_ACR;

      begin
         Aux.LATENCY := A0B.Types.Unsigned_4 (FLASH_LATENCY);
         Aux.PRFTEN  := True;
         Aux.ICEN    := True;
         Aux.DCEN    := True;

         A0B.STM32G4.Peripherals.FLASH.FLASH_ACR := Aux;
      end;

      declare
         use type A0B.Types.Unsigned_32;

      begin
         while
           A0B.Types.Unsigned_32
             (A0B.STM32G4.Peripherals.FLASH.FLASH_ACR.LATENCY)
                /= FLASH_LATENCY
         loop
            null;
         end loop;
      end;

      --  4. ... Select the Range 1 normal mode by setting R1MODE bit in the
      --  PWR_CR5 register.

      A0B.STM32G4.Peripherals.PWR.PWR_CR5.R1MODE := True;

      --  Activate HSE clock/crystal

      declare
         Aux : A0B.STM32G4.Peripherals.RCC.RCC_CR_Register :=
           A0B.STM32G4.Peripherals.RCC.RCC_CR;

      begin
         Aux.HSEBYP := False;
         Aux.HSEON  := True;

         A0B.STM32G4.Peripherals.RCC.RCC_CR := Aux;
      end;

      while not A0B.STM32G4.Peripherals.RCC.RCC_CR.HSERDY loop
         null;
      end loop;

      --  Configure PLL

      declare
         use type A0B.Types.Unsigned_32;

         Aux : A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR_Register :=
           A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR;

      begin
         Aux.PLLSRC  := A0B.STM32G4.Peripherals.RCC.HSE;
         Aux.PLLM    := A0B.Types.Unsigned_4 (PLL_M - 1);
         Aux.PLLN    := A0B.Types.Unsigned_7 (PLL_N);
         Aux.PLLPEN  := False;
         --  Aux.PLLP    :=
         --    (case PLL_P is
         --        when 7      => A0B.STM32G4.Peripherals.RCC.PLLP_7,
         --        when 17     => A0B.STM32G4.Peripherals.RCC.PLLP_17,
         --        when others => raise Program_Error);
         --  XXX PLLP is not used, see PLLPDIV
         Aux.PLLQEN  := False;
         Aux.PLLQ    :=
           (case PLL_Q is
               when 2      => A0B.STM32G4.Peripherals.RCC.PLLQ_2,
               when 4      => A0B.STM32G4.Peripherals.RCC.PLLQ_4,
               when 6      => A0B.STM32G4.Peripherals.RCC.PLLQ_6,
               when 8      => A0B.STM32G4.Peripherals.RCC.PLLQ_8,
               when others => raise Program_Error);
         Aux.PLLREN  := False;
         Aux.PLLR    :=
           (case PLL_R is
               when 2      => A0B.STM32G4.Peripherals.RCC.PLLR_2,
               when 4      => A0B.STM32G4.Peripherals.RCC.PLLR_4,
               when 6      => A0B.STM32G4.Peripherals.RCC.PLLR_6,
               when 8      => A0B.STM32G4.Peripherals.RCC.PLLR_8,
               when others => raise Program_Error);
         Aux.PLLPDIV := A0B.Types.Unsigned_5 (PLL_P);

         A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR := Aux;
      end;

      --  Enable PLL and wait till it is ready

      A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR.PLLREN := True;
      A0B.STM32G4.Peripherals.RCC.RCC_CR.PLLON := True;

      while not A0B.STM32G4.Peripherals.RCC.RCC_CR.PLLRDY loop
         null;
      end loop;

      --  Configure system clock source and bus prescalers.

      declare
         use type A0B.STM32G4.Peripherals.RCC.RCC_CFGR_SW_Field;

         Aux : A0B.STM32G4.Peripherals.RCC.RCC_CFGR_Regiter :=
           A0B.STM32G4.Peripherals.RCC.RCC_CFGR;

      begin
         Aux.SW    := A0B.STM32G4.Peripherals.RCC.PLL;
         Aux.HPRE  :=
           (case AHB is
               when 1      => A0B.STM32G4.Peripherals.RCC.SYSCLK_1,
               when 2      => A0B.STM32G4.Peripherals.RCC.SYSCLK_2,
               when 4      => A0B.STM32G4.Peripherals.RCC.SYSCLK_4,
               when 8      => A0B.STM32G4.Peripherals.RCC.SYSCLK_8,
               when 16     => A0B.STM32G4.Peripherals.RCC.SYSCLK_16,
               when 64     => A0B.STM32G4.Peripherals.RCC.SYSCLK_64,
               when 128    => A0B.STM32G4.Peripherals.RCC.SYSCLK_128,
               when 256    => A0B.STM32G4.Peripherals.RCC.SYSCLK_256,
               when 512    => A0B.STM32G4.Peripherals.RCC.SYSCLK_512,
               when others => raise Program_Error);
         Aux.PPRE1 :=
           (case APB1 is
               when 1      => A0B.STM32G4.Peripherals.RCC.HCLK_1,
               when 2      => A0B.STM32G4.Peripherals.RCC.HCLK_2,
               when 4      => A0B.STM32G4.Peripherals.RCC.HCLK_4,
               when 8      => A0B.STM32G4.Peripherals.RCC.HCLK_8,
               when 16     => A0B.STM32G4.Peripherals.RCC.HCLK_16,
               when others => raise Program_Error);
         Aux.PPRE2 :=
           (case APB2 is
               when 1      => A0B.STM32G4.Peripherals.RCC.HCLK_1,
               when 2      => A0B.STM32G4.Peripherals.RCC.HCLK_2,
               when 4      => A0B.STM32G4.Peripherals.RCC.HCLK_4,
               when 8      => A0B.STM32G4.Peripherals.RCC.HCLK_8,
               when 16     => A0B.STM32G4.Peripherals.RCC.HCLK_16,
               when others => raise Program_Error);

         A0B.STM32G4.Peripherals.RCC.RCC_CFGR := Aux;

         while A0B.STM32G4.Peripherals.RCC.RCC_CFGR.SWS
                 /= A0B.STM32G4.Peripherals.RCC.PLL
         loop
            null;
         end loop;
      end;
   end Generic_Configure_System_Clocks;

end A0B.STM32G474.Startup_Utilities;
