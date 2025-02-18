pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32G474.svd


with A0B.Types.SVD;
with System;

package A0B.STM32G4XX.SVD.SYSCFG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype MEMRMP_MEM_MODE_Field is A0B.Types.SVD.UInt3;

   --  Remap Memory register
   type MEMRMP_Register is record
      --  Memory mapping selection
      MEM_MODE      : MEMRMP_MEM_MODE_Field := 16#0#;
      --  unspecified
      Reserved_3_7  : A0B.Types.SVD.UInt5 := 16#0#;
      --  User Flash Bank mode
      FB_mode       : Boolean := False;
      --  unspecified
      Reserved_9_31 : A0B.Types.SVD.UInt23 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MEMRMP_Register use record
      MEM_MODE      at 0 range 0 .. 2;
      Reserved_3_7  at 0 range 3 .. 7;
      FB_mode       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype CFGR1_FPU_IE_Field is A0B.Types.SVD.UInt6;

   --  peripheral mode configuration register
   type CFGR1_Register is record
      --  unspecified
      Reserved_0_7   : A0B.Types.SVD.Byte := 16#1#;
      --  BOOSTEN
      BOOSTEN        : Boolean := False;
      --  GPIO analog switch control voltage selection
      ANASWVDD       : Boolean := False;
      --  unspecified
      Reserved_10_15 : A0B.Types.SVD.UInt6 := 16#0#;
      --  FM+ drive capability on PB6
      I2C_PB6_FMP    : Boolean := False;
      --  FM+ drive capability on PB6
      I2C_PB7_FMP    : Boolean := False;
      --  FM+ drive capability on PB6
      I2C_PB8_FMP    : Boolean := False;
      --  FM+ drive capability on PB6
      I2C_PB9_FMP    : Boolean := False;
      --  I2C1 FM+ drive capability enable
      I2C1_FMP       : Boolean := False;
      --  I2C1 FM+ drive capability enable
      I2C2_FMP       : Boolean := False;
      --  I2C1 FM+ drive capability enable
      I2C3_FMP       : Boolean := False;
      --  I2C1 FM+ drive capability enable
      I2C4_FMP       : Boolean := False;
      --  unspecified
      Reserved_24_25 : A0B.Types.SVD.UInt2 := 16#0#;
      --  FPU Interrupts Enable
      FPU_IE         : CFGR1_FPU_IE_Field := 16#1F#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CFGR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      BOOSTEN        at 0 range 8 .. 8;
      ANASWVDD       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      I2C_PB6_FMP    at 0 range 16 .. 16;
      I2C_PB7_FMP    at 0 range 17 .. 17;
      I2C_PB8_FMP    at 0 range 18 .. 18;
      I2C_PB9_FMP    at 0 range 19 .. 19;
      I2C1_FMP       at 0 range 20 .. 20;
      I2C2_FMP       at 0 range 21 .. 21;
      I2C3_FMP       at 0 range 22 .. 22;
      I2C4_FMP       at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      FPU_IE         at 0 range 26 .. 31;
   end record;

   --  EXTICR1_EXTI array element
   subtype EXTICR1_EXTI_Element is A0B.Types.SVD.UInt4;

   --  EXTICR1_EXTI array
   type EXTICR1_EXTI_Field_Array is array (0 .. 3) of EXTICR1_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR1_EXTI
   type EXTICR1_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : A0B.Types.SVD.UInt16;
         when True =>
            --  EXTI as an array
            Arr : EXTICR1_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR1_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 1
   type EXTICR1_Register is record
      --  EXTI x configuration (x = 0 to 3)
      EXTI           : EXTICR1_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for EXTICR1_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTICR2_EXTI array element
   subtype EXTICR2_EXTI_Element is A0B.Types.SVD.UInt4;

   --  EXTICR2_EXTI array
   type EXTICR2_EXTI_Field_Array is array (4 .. 7) of EXTICR2_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR2_EXTI
   type EXTICR2_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : A0B.Types.SVD.UInt16;
         when True =>
            --  EXTI as an array
            Arr : EXTICR2_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR2_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 2
   type EXTICR2_Register is record
      --  EXTI x configuration (x = 4 to 7)
      EXTI           : EXTICR2_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for EXTICR2_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTICR3_EXTI array element
   subtype EXTICR3_EXTI_Element is A0B.Types.SVD.UInt4;

   --  EXTICR3_EXTI array
   type EXTICR3_EXTI_Field_Array is array (8 .. 11) of EXTICR3_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR3_EXTI
   type EXTICR3_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : A0B.Types.SVD.UInt16;
         when True =>
            --  EXTI as an array
            Arr : EXTICR3_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR3_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 3
   type EXTICR3_Register is record
      --  EXTI x configuration (x = 8 to 11)
      EXTI           : EXTICR3_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for EXTICR3_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTICR4_EXTI array element
   subtype EXTICR4_EXTI_Element is A0B.Types.SVD.UInt4;

   --  EXTICR4_EXTI array
   type EXTICR4_EXTI_Field_Array is array (12 .. 15) of EXTICR4_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR4_EXTI
   type EXTICR4_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : A0B.Types.SVD.UInt16;
         when True =>
            --  EXTI as an array
            Arr : EXTICR4_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR4_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 4
   type EXTICR4_Register is record
      --  EXTI x configuration (x = 12 to 15)
      EXTI           : EXTICR4_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for EXTICR4_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CCM SRAM control and status register
   type SCSR_Register is record
      --  CCM SRAM Erase
      CCMER         : Boolean := False;
      --  Read-only. CCM SRAM busy by erase operation
      CCMBSY        : Boolean := False;
      --  unspecified
      Reserved_2_31 : A0B.Types.SVD.UInt30 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SCSR_Register use record
      CCMER         at 0 range 0 .. 0;
      CCMBSY        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  configuration register 2
   type CFGR2_Register is record
      --  Core Lockup Lock
      CLL           : Boolean := False;
      --  SRAM Parity Lock
      SPL           : Boolean := False;
      --  PVD Lock
      PVDL          : Boolean := False;
      --  ECC Lock
      ECCL          : Boolean := False;
      --  unspecified
      Reserved_4_7  : A0B.Types.SVD.UInt4 := 16#0#;
      --  SRAM Parity Flag
      SPF           : Boolean := False;
      --  unspecified
      Reserved_9_31 : A0B.Types.SVD.UInt23 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CFGR2_Register use record
      CLL           at 0 range 0 .. 0;
      SPL           at 0 range 1 .. 1;
      PVDL          at 0 range 2 .. 2;
      ECCL          at 0 range 3 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      SPF           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SRAM Write protection register 1
   type SWPR_Register is record
      --  Write protection
      Page0_WP  : Boolean := False;
      --  Write protection
      Page1_WP  : Boolean := False;
      --  Write protection
      Page2_WP  : Boolean := False;
      --  Write protection
      Page3_WP  : Boolean := False;
      --  Write protection
      Page4_WP  : Boolean := False;
      --  Write protection
      Page5_WP  : Boolean := False;
      --  Write protection
      Page6_WP  : Boolean := False;
      --  Write protection
      Page7_WP  : Boolean := False;
      --  Write protection
      Page8_WP  : Boolean := False;
      --  Write protection
      Page9_WP  : Boolean := False;
      --  Write protection
      Page10_WP : Boolean := False;
      --  Write protection
      Page11_WP : Boolean := False;
      --  Write protection
      Page12_WP : Boolean := False;
      --  Write protection
      Page13_WP : Boolean := False;
      --  Write protection
      Page14_WP : Boolean := False;
      --  Write protection
      Page15_WP : Boolean := False;
      --  Write protection
      Page16_WP : Boolean := False;
      --  Write protection
      Page17_WP : Boolean := False;
      --  Write protection
      Page18_WP : Boolean := False;
      --  Write protection
      Page19_WP : Boolean := False;
      --  Write protection
      Page20_WP : Boolean := False;
      --  Write protection
      Page21_WP : Boolean := False;
      --  Write protection
      Page22_WP : Boolean := False;
      --  Write protection
      Page23_WP : Boolean := False;
      --  Write protection
      Page24_WP : Boolean := False;
      --  Write protection
      Page25_WP : Boolean := False;
      --  Write protection
      Page26_WP : Boolean := False;
      --  Write protection
      Page27_WP : Boolean := False;
      --  Write protection
      Page28_WP : Boolean := False;
      --  Write protection
      Page29_WP : Boolean := False;
      --  Write protection
      Page30_WP : Boolean := False;
      --  Write protection
      Page31_WP : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SWPR_Register use record
      Page0_WP  at 0 range 0 .. 0;
      Page1_WP  at 0 range 1 .. 1;
      Page2_WP  at 0 range 2 .. 2;
      Page3_WP  at 0 range 3 .. 3;
      Page4_WP  at 0 range 4 .. 4;
      Page5_WP  at 0 range 5 .. 5;
      Page6_WP  at 0 range 6 .. 6;
      Page7_WP  at 0 range 7 .. 7;
      Page8_WP  at 0 range 8 .. 8;
      Page9_WP  at 0 range 9 .. 9;
      Page10_WP at 0 range 10 .. 10;
      Page11_WP at 0 range 11 .. 11;
      Page12_WP at 0 range 12 .. 12;
      Page13_WP at 0 range 13 .. 13;
      Page14_WP at 0 range 14 .. 14;
      Page15_WP at 0 range 15 .. 15;
      Page16_WP at 0 range 16 .. 16;
      Page17_WP at 0 range 17 .. 17;
      Page18_WP at 0 range 18 .. 18;
      Page19_WP at 0 range 19 .. 19;
      Page20_WP at 0 range 20 .. 20;
      Page21_WP at 0 range 21 .. 21;
      Page22_WP at 0 range 22 .. 22;
      Page23_WP at 0 range 23 .. 23;
      Page24_WP at 0 range 24 .. 24;
      Page25_WP at 0 range 25 .. 25;
      Page26_WP at 0 range 26 .. 26;
      Page27_WP at 0 range 27 .. 27;
      Page28_WP at 0 range 28 .. 28;
      Page29_WP at 0 range 29 .. 29;
      Page30_WP at 0 range 30 .. 30;
      Page31_WP at 0 range 31 .. 31;
   end record;

   subtype SKR_KEY_Field is A0B.Types.SVD.Byte;

   --  SRAM2 Key Register
   type SKR_Register is record
      --  Write-only. SRAM2 Key for software erase
      KEY           : SKR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SKR_Register use record
      KEY           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System configuration controller
   type SYSCFG_Peripheral is record
      --  Remap Memory register
      MEMRMP  : aliased MEMRMP_Register;
      pragma Volatile_Full_Access (MEMRMP);
      --  peripheral mode configuration register
      CFGR1   : aliased CFGR1_Register;
      pragma Volatile_Full_Access (CFGR1);
      --  external interrupt configuration register 1
      EXTICR1 : aliased EXTICR1_Register;
      pragma Volatile_Full_Access (EXTICR1);
      --  external interrupt configuration register 2
      EXTICR2 : aliased EXTICR2_Register;
      pragma Volatile_Full_Access (EXTICR2);
      --  external interrupt configuration register 3
      EXTICR3 : aliased EXTICR3_Register;
      pragma Volatile_Full_Access (EXTICR3);
      --  external interrupt configuration register 4
      EXTICR4 : aliased EXTICR4_Register;
      pragma Volatile_Full_Access (EXTICR4);
      --  CCM SRAM control and status register
      SCSR    : aliased SCSR_Register;
      pragma Volatile_Full_Access (SCSR);
      --  configuration register 2
      CFGR2   : aliased CFGR2_Register;
      pragma Volatile_Full_Access (CFGR2);
      --  SRAM Write protection register 1
      SWPR    : aliased SWPR_Register;
      pragma Volatile_Full_Access (SWPR);
      --  SRAM2 Key Register
      SKR     : aliased SKR_Register;
      pragma Volatile_Full_Access (SKR);
   end record
     with Volatile;

   for SYSCFG_Peripheral use record
      MEMRMP  at 16#0# range 0 .. 31;
      CFGR1   at 16#4# range 0 .. 31;
      EXTICR1 at 16#8# range 0 .. 31;
      EXTICR2 at 16#C# range 0 .. 31;
      EXTICR3 at 16#10# range 0 .. 31;
      EXTICR4 at 16#14# range 0 .. 31;
      SCSR    at 16#18# range 0 .. 31;
      CFGR2   at 16#1C# range 0 .. 31;
      SWPR    at 16#20# range 0 .. 31;
      SKR     at 16#24# range 0 .. 31;
   end record;

   --  System configuration controller
   SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_Base;

end A0B.STM32G4XX.SVD.SYSCFG;
