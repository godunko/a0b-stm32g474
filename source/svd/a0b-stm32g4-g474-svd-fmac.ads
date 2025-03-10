pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32G474.svd


with A0B.Types.SVD;
with System;

package A0B.STM32G4.G474.SVD.FMAC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype X1BUFCFG_X1_BASE_Field is A0B.Types.SVD.Byte;
   subtype X1BUFCFG_X1_BUF_SIZE_Field is A0B.Types.SVD.Byte;
   subtype X1BUFCFG_FULL_WM_Field is A0B.Types.SVD.UInt2;

   --  FMAC X1 Buffer Configuration register
   type X1BUFCFG_Register is record
      --  X1_BASE
      X1_BASE        : X1BUFCFG_X1_BASE_Field := 16#0#;
      --  X1_BUF_SIZE
      X1_BUF_SIZE    : X1BUFCFG_X1_BUF_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : A0B.Types.SVD.Byte := 16#0#;
      --  FULL_WM
      FULL_WM        : X1BUFCFG_FULL_WM_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for X1BUFCFG_Register use record
      X1_BASE        at 0 range 0 .. 7;
      X1_BUF_SIZE    at 0 range 8 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      FULL_WM        at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype X2BUFCFG_X2_BASE_Field is A0B.Types.SVD.Byte;
   subtype X2BUFCFG_X2_BUF_SIZE_Field is A0B.Types.SVD.Byte;

   --  FMAC X2 Buffer Configuration register
   type X2BUFCFG_Register is record
      --  X1_BASE
      X2_BASE        : X2BUFCFG_X2_BASE_Field := 16#0#;
      --  X1_BUF_SIZE
      X2_BUF_SIZE    : X2BUFCFG_X2_BUF_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for X2BUFCFG_Register use record
      X2_BASE        at 0 range 0 .. 7;
      X2_BUF_SIZE    at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype YBUFCFG_Y_BASE_Field is A0B.Types.SVD.Byte;
   subtype YBUFCFG_Y_BUF_SIZE_Field is A0B.Types.SVD.Byte;
   subtype YBUFCFG_EMPTY_WM_Field is A0B.Types.SVD.UInt2;

   --  FMAC Y Buffer Configuration register
   type YBUFCFG_Register is record
      --  X1_BASE
      Y_BASE         : YBUFCFG_Y_BASE_Field := 16#0#;
      --  X1_BUF_SIZE
      Y_BUF_SIZE     : YBUFCFG_Y_BUF_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : A0B.Types.SVD.Byte := 16#0#;
      --  EMPTY_WM
      EMPTY_WM       : YBUFCFG_EMPTY_WM_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for YBUFCFG_Register use record
      Y_BASE         at 0 range 0 .. 7;
      Y_BUF_SIZE     at 0 range 8 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      EMPTY_WM       at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype PARAM_P_Field is A0B.Types.SVD.Byte;
   subtype PARAM_Q_Field is A0B.Types.SVD.Byte;
   subtype PARAM_R_Field is A0B.Types.SVD.Byte;
   subtype PARAM_FUNC_Field is A0B.Types.SVD.UInt7;

   --  FMAC Parameter register
   type PARAM_Register is record
      --  P
      P     : PARAM_P_Field := 16#0#;
      --  Q
      Q     : PARAM_Q_Field := 16#0#;
      --  R
      R     : PARAM_R_Field := 16#0#;
      --  FUNC
      FUNC  : PARAM_FUNC_Field := 16#0#;
      --  START
      START : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PARAM_Register use record
      P     at 0 range 0 .. 7;
      Q     at 0 range 8 .. 15;
      R     at 0 range 16 .. 23;
      FUNC  at 0 range 24 .. 30;
      START at 0 range 31 .. 31;
   end record;

   --  FMAC Control register
   type CR_Register is record
      --  RIEN
      RIEN           : Boolean := False;
      --  WIEN
      WIEN           : Boolean := False;
      --  OVFLIEN
      OVFLIEN        : Boolean := False;
      --  UNFLIEN
      UNFLIEN        : Boolean := False;
      --  SATIEN
      SATIEN         : Boolean := False;
      --  unspecified
      Reserved_5_7   : A0B.Types.SVD.UInt3 := 16#0#;
      --  DMAREN
      DMAREN         : Boolean := False;
      --  DMAWEN
      DMAWEN         : Boolean := False;
      --  unspecified
      Reserved_10_14 : A0B.Types.SVD.UInt5 := 16#0#;
      --  CLIPEN
      CLIPEN         : Boolean := False;
      --  RESET
      RESET          : Boolean := False;
      --  unspecified
      Reserved_17_31 : A0B.Types.SVD.UInt15 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      RIEN           at 0 range 0 .. 0;
      WIEN           at 0 range 1 .. 1;
      OVFLIEN        at 0 range 2 .. 2;
      UNFLIEN        at 0 range 3 .. 3;
      SATIEN         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DMAREN         at 0 range 8 .. 8;
      DMAWEN         at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CLIPEN         at 0 range 15 .. 15;
      RESET          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  FMAC Status register
   type SR_Register is record
      --  Read-only. YEMPTY
      YEMPTY         : Boolean;
      --  Read-only. X1FULL
      X1FULL         : Boolean;
      --  unspecified
      Reserved_2_7   : A0B.Types.SVD.UInt6;
      --  Read-only. OVFL
      OVFL           : Boolean;
      --  Read-only. UNFL
      UNFL           : Boolean;
      --  Read-only. SAT
      SAT            : Boolean;
      --  unspecified
      Reserved_11_31 : A0B.Types.SVD.UInt21;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SR_Register use record
      YEMPTY         at 0 range 0 .. 0;
      X1FULL         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      OVFL           at 0 range 8 .. 8;
      UNFL           at 0 range 9 .. 9;
      SAT            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype WDATA_WDATA_Field is A0B.Types.SVD.UInt16;

   --  FMAC Write Data register
   type WDATA_Register is record
      --  Write-only. WDATA
      WDATA          : WDATA_WDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for WDATA_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RDATA_RDATA_Field is A0B.Types.SVD.UInt16;

   --  FMAC Read Data register
   type RDATA_Register is record
      --  Read-only. RDATA
      RDATA          : RDATA_RDATA_Field;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for RDATA_Register use record
      RDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Filter Math Accelerator
   type FMAC_Peripheral is record
      --  FMAC X1 Buffer Configuration register
      X1BUFCFG : aliased X1BUFCFG_Register;
      pragma Volatile_Full_Access (X1BUFCFG);
      --  FMAC X2 Buffer Configuration register
      X2BUFCFG : aliased X2BUFCFG_Register;
      pragma Volatile_Full_Access (X2BUFCFG);
      --  FMAC Y Buffer Configuration register
      YBUFCFG  : aliased YBUFCFG_Register;
      pragma Volatile_Full_Access (YBUFCFG);
      --  FMAC Parameter register
      PARAM    : aliased PARAM_Register;
      pragma Volatile_Full_Access (PARAM);
      --  FMAC Control register
      CR       : aliased CR_Register;
      pragma Volatile_Full_Access (CR);
      --  FMAC Status register
      SR       : aliased SR_Register;
      pragma Volatile_Full_Access (SR);
      --  FMAC Write Data register
      WDATA    : aliased WDATA_Register;
      pragma Volatile_Full_Access (WDATA);
      --  FMAC Read Data register
      RDATA    : aliased RDATA_Register;
      pragma Volatile_Full_Access (RDATA);
   end record
     with Volatile;

   for FMAC_Peripheral use record
      X1BUFCFG at 16#0# range 0 .. 31;
      X2BUFCFG at 16#4# range 0 .. 31;
      YBUFCFG  at 16#8# range 0 .. 31;
      PARAM    at 16#C# range 0 .. 31;
      CR       at 16#10# range 0 .. 31;
      SR       at 16#14# range 0 .. 31;
      WDATA    at 16#18# range 0 .. 31;
      RDATA    at 16#1C# range 0 .. 31;
   end record;

   --  Filter Math Accelerator
   FMAC_Periph : aliased FMAC_Peripheral
     with Import, Address => FMAC_Base;

end A0B.STM32G4.G474.SVD.FMAC;
