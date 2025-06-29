--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Startup utilities for STM32G474

with A0B.Types;

package A0B.STM32G474.Startup_Utilities
  with Preelaborate, No_Elaboration_Code_All
is

   generic
      FLASH_LATENCY : A0B.Types.Unsigned_32;
      PLL_M         : A0B.Types.Unsigned_32;
      PLL_N         : A0B.Types.Unsigned_32;
      PLL_P         : A0B.Types.Unsigned_32;
      PLL_Q         : A0B.Types.Unsigned_32;
      PLL_R         : A0B.Types.Unsigned_32;
      AHB           : A0B.Types.Unsigned_32;
      APB1          : A0B.Types.Unsigned_32;
      APB2          : A0B.Types.Unsigned_32;

   procedure Generic_Configure_System_Clocks;
   --  Configure system clocks:
   --    * set VOS to 01
   --    * adjust flash latency
   --    * set R1MODE to 1
   --    * activate HSE
   --    * configure PLL
   --    * enable PLLR
   --    * start PLL
   --    * set bus prescalers

end A0B.STM32G474.Startup_Utilities;
