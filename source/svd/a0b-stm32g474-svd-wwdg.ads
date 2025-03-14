pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32G474.svd


with A0B.Types.SVD;
with System;

package A0B.STM32G474.SVD.WWDG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_T_Field is A0B.Types.SVD.UInt7;

   --  Control register
   type CR_Register is record
      --  7-bit counter (MSB to LSB)
      T             : CR_T_Field := 16#7F#;
      --  Activation bit
      WDGA          : Boolean := False;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      T             at 0 range 0 .. 6;
      WDGA          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CFR_W_Field is A0B.Types.SVD.UInt7;
   subtype CFR_WDGTB_Field is A0B.Types.SVD.UInt3;

   --  Configuration register
   type CFR_Register is record
      --  7-bit window value
      W              : CFR_W_Field := 16#7F#;
      --  unspecified
      Reserved_7_8   : A0B.Types.SVD.UInt2 := 16#0#;
      --  Early wakeup interrupt
      EWI            : Boolean := False;
      --  unspecified
      Reserved_10_10 : A0B.Types.SVD.Bit := 16#0#;
      --  Timer base
      WDGTB          : CFR_WDGTB_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : A0B.Types.SVD.UInt18 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CFR_Register use record
      W              at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      EWI            at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WDGTB          at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Status register
   type SR_Register is record
      --  Early wakeup interrupt flag
      EWIF          : Boolean := False;
      --  unspecified
      Reserved_1_31 : A0B.Types.SVD.UInt31 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SR_Register use record
      EWIF          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System window watchdog
   type WWDG_Peripheral is record
      --  Control register
      CR  : aliased CR_Register;
      pragma Volatile_Full_Access (CR);
      --  Configuration register
      CFR : aliased CFR_Register;
      pragma Volatile_Full_Access (CFR);
      --  Status register
      SR  : aliased SR_Register;
      pragma Volatile_Full_Access (SR);
   end record
     with Volatile;

   for WWDG_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      CFR at 16#4# range 0 .. 31;
      SR  at 16#8# range 0 .. 31;
   end record;

   --  System window watchdog
   WWDG_Periph : aliased WWDG_Peripheral
     with Import, Address => WWDG_Base;

end A0B.STM32G474.SVD.WWDG;
