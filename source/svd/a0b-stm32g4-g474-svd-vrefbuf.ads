pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32G474.svd


with A0B.Types.SVD;
with System;

package A0B.STM32G4.G474.SVD.VREFBUF is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype VREFBUF_CSR_VRS_Field is A0B.Types.SVD.UInt2;

   --  VREF_BUF Control and Status Register
   type VREFBUF_CSR_Register is record
      --  Enable Voltage Reference
      ENVR          : Boolean := False;
      --  High impedence mode for the VREF_BUF
      HIZ           : Boolean := True;
      --  unspecified
      Reserved_2_2  : A0B.Types.SVD.Bit := 16#0#;
      --  Read-only. Voltage reference buffer ready
      VRR           : Boolean := False;
      --  Voltage reference scale
      VRS           : VREFBUF_CSR_VRS_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for VREFBUF_CSR_Register use record
      ENVR          at 0 range 0 .. 0;
      HIZ           at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      VRR           at 0 range 3 .. 3;
      VRS           at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype VREFBUF_CCR_TRIM_Field is A0B.Types.SVD.UInt6;

   --  VREF_BUF Calibration Control Register
   type VREFBUF_CCR_Register is record
      --  Trimming code
      TRIM          : VREFBUF_CCR_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for VREFBUF_CCR_Register use record
      TRIM          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Voltage reference buffer
   type VREFBUF_Peripheral is record
      --  VREF_BUF Control and Status Register
      VREFBUF_CSR : aliased VREFBUF_CSR_Register;
      pragma Volatile_Full_Access (VREFBUF_CSR);
      --  VREF_BUF Calibration Control Register
      VREFBUF_CCR : aliased VREFBUF_CCR_Register;
      pragma Volatile_Full_Access (VREFBUF_CCR);
   end record
     with Volatile;

   for VREFBUF_Peripheral use record
      VREFBUF_CSR at 16#0# range 0 .. 31;
      VREFBUF_CCR at 16#4# range 0 .. 31;
   end record;

   --  Voltage reference buffer
   VREFBUF_Periph : aliased VREFBUF_Peripheral
     with Import, Address => VREFBUF_Base;

end A0B.STM32G4.G474.SVD.VREFBUF;
