--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  This package renames STM32G474 packages to simplified scheme.

with A0B.STM32G4.G474;

package A0B.STM32G474 renames A0B.STM32G4.G474
  with Preelaborate, No_Elaboration_Code_All;
