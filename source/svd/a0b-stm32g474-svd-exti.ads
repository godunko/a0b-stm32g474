pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32G474.svd


with A0B.Types.SVD;
with System;

package A0B.STM32G474.SVD.EXTI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  IMR1_IM array
   type IMR1_IM_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt mask register
   type IMR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : A0B.Types.SVD.UInt32;
         when True =>
            --  IM as an array
            Arr : IMR1_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EMR1_EM array
   type EMR1_EM_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Event mask register
   type EMR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : A0B.Types.SVD.UInt32;
         when True =>
            --  EM as an array
            Arr : EMR1_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RTSR1_RT array
   type RTSR1_RT_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for RTSR1_RT
   type RTSR1_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : A0B.Types.SVD.UInt17;
         when True =>
            --  RT as an array
            Arr : RTSR1_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for RTSR1_RT_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  RTSR1_RT array
   type RTSR1_RT_Field_Array_1 is array (18 .. 22) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for RTSR1_RT
   type RTSR1_RT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : A0B.Types.SVD.UInt5;
         when True =>
            --  RT as an array
            Arr : RTSR1_RT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for RTSR1_RT_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype RTSR1_RT_Field_2 is A0B.Types.SVD.UInt3;

   --  Rising Trigger selection register
   type RTSR1_Register is record
      --  Rising trigger event configuration of line 0
      RT             : RTSR1_RT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_17_17 : A0B.Types.SVD.Bit := 16#0#;
      --  Rising trigger event configuration of line 18
      RT_1           : RTSR1_RT_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_28 : A0B.Types.SVD.UInt6 := 16#0#;
      --  RT
      RT_2           : RTSR1_RT_Field_2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for RTSR1_Register use record
      RT             at 0 range 0 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      RT_1           at 0 range 18 .. 22;
      Reserved_23_28 at 0 range 23 .. 28;
      RT_2           at 0 range 29 .. 31;
   end record;

   --  FTSR1_FT array
   type FTSR1_FT_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for FTSR1_FT
   type FTSR1_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : A0B.Types.SVD.UInt17;
         when True =>
            --  FT as an array
            Arr : FTSR1_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for FTSR1_FT_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  FTSR1_FT array
   type FTSR1_FT_Field_Array_1 is array (18 .. 22) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for FTSR1_FT
   type FTSR1_FT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : A0B.Types.SVD.UInt5;
         when True =>
            --  FT as an array
            Arr : FTSR1_FT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for FTSR1_FT_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Falling Trigger selection register
   type FTSR1_Register is record
      --  Falling trigger event configuration of line 0
      FT             : FTSR1_FT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_17_17 : A0B.Types.SVD.Bit := 16#0#;
      --  Falling trigger event configuration of line 18
      FT_1           : FTSR1_FT_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : A0B.Types.SVD.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FTSR1_Register use record
      FT             at 0 range 0 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      FT_1           at 0 range 18 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  SWIER1_SWI array
   type SWIER1_SWI_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for SWIER1_SWI
   type SWIER1_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : A0B.Types.SVD.UInt17;
         when True =>
            --  SWI as an array
            Arr : SWIER1_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for SWIER1_SWI_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  SWIER1_SWI array
   type SWIER1_SWI_Field_Array_1 is array (18 .. 22) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for SWIER1_SWI
   type SWIER1_SWI_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : A0B.Types.SVD.UInt5;
         when True =>
            --  SWI as an array
            Arr : SWIER1_SWI_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for SWIER1_SWI_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Software interrupt event register
   type SWIER1_Register is record
      --  Software Interrupt on line 0
      SWI            : SWIER1_SWI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_17_17 : A0B.Types.SVD.Bit := 16#0#;
      --  Software Interrupt on line 18
      SWI_1          : SWIER1_SWI_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : A0B.Types.SVD.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SWIER1_Register use record
      SWI            at 0 range 0 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SWI_1          at 0 range 18 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  PR1_PIF array
   type PR1_PIF_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for PR1_PIF
   type PR1_PIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIF as a value
            Val : A0B.Types.SVD.UInt17;
         when True =>
            --  PIF as an array
            Arr : PR1_PIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for PR1_PIF_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  PR1_PIF array
   type PR1_PIF_Field_Array_1 is array (18 .. 22) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for PR1_PIF
   type PR1_PIF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIF as a value
            Val : A0B.Types.SVD.UInt5;
         when True =>
            --  PIF as an array
            Arr : PR1_PIF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for PR1_PIF_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Pending register
   type PR1_Register is record
      --  Pending bit 0
      PIF            : PR1_PIF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_17_17 : A0B.Types.SVD.Bit := 16#0#;
      --  Pending bit 18
      PIF_1          : PR1_PIF_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : A0B.Types.SVD.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PR1_Register use record
      PIF            at 0 range 0 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PIF_1          at 0 range 18 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  IMR2_IM array
   type IMR2_IM_Field_Array is array (32 .. 43) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for IMR2_IM
   type IMR2_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : A0B.Types.SVD.UInt12;
         when True =>
            --  IM as an array
            Arr : IMR2_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for IMR2_IM_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Interrupt mask register
   type IMR2_Register is record
      --  Interrupt Mask on external/internal line 32
      IM             : IMR2_IM_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20 := 16#FFFFF#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for IMR2_Register use record
      IM             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  EMR2_EM array
   type EMR2_EM_Field_Array is array (32 .. 40) of Boolean
     with Component_Size => 1, Size => 9;

   --  Type definition for EMR2_EM
   type EMR2_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : A0B.Types.SVD.UInt9;
         when True =>
            --  EM as an array
            Arr : EMR2_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for EMR2_EM_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Event mask register
   type EMR2_Register is record
      --  Event mask on external/internal line 32
      EM            : EMR2_EM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_31 : A0B.Types.SVD.UInt23 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for EMR2_Register use record
      EM            at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RTSR2_RT array
   type RTSR2_RT_Field_Array is array (32 .. 33) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RTSR2_RT
   type RTSR2_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  RT as an array
            Arr : RTSR2_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RTSR2_RT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RTSR2_RT array
   type RTSR2_RT_Field_Array_1 is array (38 .. 41) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for RTSR2_RT
   type RTSR2_RT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : A0B.Types.SVD.UInt4;
         when True =>
            --  RT as an array
            Arr : RTSR2_RT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RTSR2_RT_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Rising Trigger selection register
   type RTSR2_Register is record
      --  Rising trigger event configuration bit of line 32
      RT             : RTSR2_RT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_5   : A0B.Types.SVD.UInt4 := 16#0#;
      --  Rising trigger event configuration bit of line 38
      RT_1           : RTSR2_RT_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : A0B.Types.SVD.UInt22 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for RTSR2_Register use record
      RT             at 0 range 0 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      RT_1           at 0 range 6 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  FTSR2_FT array
   type FTSR2_FT_Field_Array is array (35 .. 38) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for FTSR2_FT
   type FTSR2_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : A0B.Types.SVD.UInt4;
         when True =>
            --  FT as an array
            Arr : FTSR2_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for FTSR2_FT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Falling Trigger selection register
   type FTSR2_Register is record
      --  unspecified
      Reserved_0_2  : A0B.Types.SVD.UInt3 := 16#0#;
      --  Falling trigger event configuration bit of line 35
      FT            : FTSR2_FT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_31 : A0B.Types.SVD.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FTSR2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      FT            at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  SWIER2_SWI array
   type SWIER2_SWI_Field_Array is array (35 .. 38) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for SWIER2_SWI
   type SWIER2_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : A0B.Types.SVD.UInt4;
         when True =>
            --  SWI as an array
            Arr : SWIER2_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SWIER2_SWI_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Software interrupt event register
   type SWIER2_Register is record
      --  unspecified
      Reserved_0_2  : A0B.Types.SVD.UInt3 := 16#0#;
      --  Software interrupt on line 35
      SWI           : SWIER2_SWI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_31 : A0B.Types.SVD.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SWIER2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      SWI           at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  PR2_PIF array
   type PR2_PIF_Field_Array is array (35 .. 38) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PR2_PIF
   type PR2_PIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIF as a value
            Val : A0B.Types.SVD.UInt4;
         when True =>
            --  PIF as an array
            Arr : PR2_PIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PR2_PIF_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Pending register
   type PR2_Register is record
      --  unspecified
      Reserved_0_2  : A0B.Types.SVD.UInt3 := 16#0#;
      --  Pending interrupt flag on line 35
      PIF           : PR2_PIF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_31 : A0B.Types.SVD.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PR2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      PIF           at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External interrupt/event controller
   type EXTI_Peripheral is record
      --  Interrupt mask register
      IMR1   : aliased IMR1_Register;
      pragma Volatile_Full_Access (IMR1);
      --  Event mask register
      EMR1   : aliased EMR1_Register;
      pragma Volatile_Full_Access (EMR1);
      --  Rising Trigger selection register
      RTSR1  : aliased RTSR1_Register;
      pragma Volatile_Full_Access (RTSR1);
      --  Falling Trigger selection register
      FTSR1  : aliased FTSR1_Register;
      pragma Volatile_Full_Access (FTSR1);
      --  Software interrupt event register
      SWIER1 : aliased SWIER1_Register;
      pragma Volatile_Full_Access (SWIER1);
      --  Pending register
      PR1    : aliased PR1_Register;
      pragma Volatile_Full_Access (PR1);
      --  Interrupt mask register
      IMR2   : aliased IMR2_Register;
      pragma Volatile_Full_Access (IMR2);
      --  Event mask register
      EMR2   : aliased EMR2_Register;
      pragma Volatile_Full_Access (EMR2);
      --  Rising Trigger selection register
      RTSR2  : aliased RTSR2_Register;
      pragma Volatile_Full_Access (RTSR2);
      --  Falling Trigger selection register
      FTSR2  : aliased FTSR2_Register;
      pragma Volatile_Full_Access (FTSR2);
      --  Software interrupt event register
      SWIER2 : aliased SWIER2_Register;
      pragma Volatile_Full_Access (SWIER2);
      --  Pending register
      PR2    : aliased PR2_Register;
      pragma Volatile_Full_Access (PR2);
   end record
     with Volatile;

   for EXTI_Peripheral use record
      IMR1   at 16#0# range 0 .. 31;
      EMR1   at 16#4# range 0 .. 31;
      RTSR1  at 16#8# range 0 .. 31;
      FTSR1  at 16#C# range 0 .. 31;
      SWIER1 at 16#10# range 0 .. 31;
      PR1    at 16#14# range 0 .. 31;
      IMR2   at 16#20# range 0 .. 31;
      EMR2   at 16#24# range 0 .. 31;
      RTSR2  at 16#28# range 0 .. 31;
      FTSR2  at 16#2C# range 0 .. 31;
      SWIER2 at 16#30# range 0 .. 31;
      PR2    at 16#34# range 0 .. 31;
   end record;

   --  External interrupt/event controller
   EXTI_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_Base;

end A0B.STM32G474.SVD.EXTI;
