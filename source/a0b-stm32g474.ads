--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  This package renames common package for STM32G4xx family.

with A0B.STM32G4XX;

package A0B.STM32G474 renames A0B.STM32G4XX
  with Preelaborate, No_Elaboration_Code_All;
