pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32G474.svd


with A0B.Types.SVD;
with System;

package A0B.STM32G4.G474.SVD.CORDIC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CSR_FUNC_Field is A0B.Types.SVD.UInt4;
   subtype CSR_PRECISION_Field is A0B.Types.SVD.UInt4;
   subtype CSR_SCALE_Field is A0B.Types.SVD.UInt3;

   --  CORDIC Control Status register
   type CSR_Register is record
      --  FUNC
      FUNC           : CSR_FUNC_Field := 16#0#;
      --  PRECISION
      PRECISION      : CSR_PRECISION_Field := 16#0#;
      --  SCALE
      SCALE          : CSR_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : A0B.Types.SVD.UInt5 := 16#0#;
      --  IEN
      IEN            : Boolean := False;
      --  DMAREN
      DMAREN         : Boolean := False;
      --  DMAWEN
      DMAWEN         : Boolean := False;
      --  NRES
      NRES           : Boolean := False;
      --  NARGS
      NARGS          : Boolean := False;
      --  RESSIZE
      RESSIZE        : Boolean := False;
      --  ARGSIZE
      ARGSIZE        : Boolean := False;
      --  unspecified
      Reserved_23_30 : A0B.Types.SVD.Byte := 16#0#;
      --  RRDY
      RRDY           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      FUNC           at 0 range 0 .. 3;
      PRECISION      at 0 range 4 .. 7;
      SCALE          at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      IEN            at 0 range 16 .. 16;
      DMAREN         at 0 range 17 .. 17;
      DMAWEN         at 0 range 18 .. 18;
      NRES           at 0 range 19 .. 19;
      NARGS          at 0 range 20 .. 20;
      RESSIZE        at 0 range 21 .. 21;
      ARGSIZE        at 0 range 22 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      RRDY           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CORDIC Co-processor
   type CORDIC_Peripheral is record
      --  CORDIC Control Status register
      CSR   : aliased CSR_Register;
      pragma Volatile_Full_Access (CSR);
      --  FMAC Write Data register
      WDATA : aliased A0B.Types.SVD.UInt32;
      --  FMAC Read Data register
      RDATA : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for CORDIC_Peripheral use record
      CSR   at 16#0# range 0 .. 31;
      WDATA at 16#4# range 0 .. 31;
      RDATA at 16#8# range 0 .. 31;
   end record;

   --  CORDIC Co-processor
   CORDIC_Periph : aliased CORDIC_Peripheral
     with Import, Address => CORDIC_Base;

end A0B.STM32G4.G474.SVD.CORDIC;
