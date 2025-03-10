pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32G474.svd


with A0B.Types.SVD;
with System;

package A0B.STM32G4.G474.SVD.COMP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype COMP_C1CSR_INMSEL_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C1CSR_HYST_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C1CSR_BLANKSEL_Field is A0B.Types.SVD.UInt3;

   --  Comparator control/status register
   type COMP_C1CSR_Register is record
      --  EN
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#0#;
      --  INMSEL
      INMSEL         : COMP_C1CSR_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  INPSEL
      INPSEL         : Boolean := False;
      --  unspecified
      Reserved_9_14  : A0B.Types.SVD.UInt6 := 16#0#;
      --  POL
      POL            : Boolean := False;
      --  HYST
      HYST           : COMP_C1CSR_HYST_Field := 16#0#;
      --  BLANKSEL
      BLANKSEL       : COMP_C1CSR_BLANKSEL_Field := 16#0#;
      --  BRGEN
      BRGEN          : Boolean := False;
      --  SCALEN
      SCALEN         : Boolean := False;
      --  unspecified
      Reserved_24_29 : A0B.Types.SVD.UInt6 := 16#0#;
      --  Read-only. VALUE
      VALUE          : Boolean := False;
      --  LOCK
      LOCK           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for COMP_C1CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      INMSEL         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      INPSEL         at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      POL            at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 18;
      BLANKSEL       at 0 range 19 .. 21;
      BRGEN          at 0 range 22 .. 22;
      SCALEN         at 0 range 23 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP_C2CSR_INMSEL_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C2CSR_HYST_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C2CSR_BLANKSEL_Field is A0B.Types.SVD.UInt3;

   --  Comparator control/status register
   type COMP_C2CSR_Register is record
      --  EN
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#0#;
      --  INMSEL
      INMSEL         : COMP_C2CSR_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  INPSEL
      INPSEL         : Boolean := False;
      --  unspecified
      Reserved_9_14  : A0B.Types.SVD.UInt6 := 16#0#;
      --  POL
      POL            : Boolean := False;
      --  HYST
      HYST           : COMP_C2CSR_HYST_Field := 16#0#;
      --  BLANKSEL
      BLANKSEL       : COMP_C2CSR_BLANKSEL_Field := 16#0#;
      --  BRGEN
      BRGEN          : Boolean := False;
      --  SCALEN
      SCALEN         : Boolean := False;
      --  unspecified
      Reserved_24_29 : A0B.Types.SVD.UInt6 := 16#0#;
      --  Read-only. VALUE
      VALUE          : Boolean := False;
      --  LOCK
      LOCK           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for COMP_C2CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      INMSEL         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      INPSEL         at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      POL            at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 18;
      BLANKSEL       at 0 range 19 .. 21;
      BRGEN          at 0 range 22 .. 22;
      SCALEN         at 0 range 23 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP_C3CSR_INMSEL_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C3CSR_HYST_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C3CSR_BLANKSEL_Field is A0B.Types.SVD.UInt3;

   --  Comparator control/status register
   type COMP_C3CSR_Register is record
      --  EN
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#0#;
      --  INMSEL
      INMSEL         : COMP_C3CSR_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  INPSEL
      INPSEL         : Boolean := False;
      --  unspecified
      Reserved_9_14  : A0B.Types.SVD.UInt6 := 16#0#;
      --  POL
      POL            : Boolean := False;
      --  HYST
      HYST           : COMP_C3CSR_HYST_Field := 16#0#;
      --  BLANKSEL
      BLANKSEL       : COMP_C3CSR_BLANKSEL_Field := 16#0#;
      --  BRGEN
      BRGEN          : Boolean := False;
      --  SCALEN
      SCALEN         : Boolean := False;
      --  unspecified
      Reserved_24_29 : A0B.Types.SVD.UInt6 := 16#0#;
      --  Read-only. VALUE
      VALUE          : Boolean := False;
      --  LOCK
      LOCK           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for COMP_C3CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      INMSEL         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      INPSEL         at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      POL            at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 18;
      BLANKSEL       at 0 range 19 .. 21;
      BRGEN          at 0 range 22 .. 22;
      SCALEN         at 0 range 23 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP_C4CSR_INMSEL_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C4CSR_HYST_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C4CSR_BLANKSEL_Field is A0B.Types.SVD.UInt3;

   --  Comparator control/status register
   type COMP_C4CSR_Register is record
      --  EN
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#0#;
      --  INMSEL
      INMSEL         : COMP_C4CSR_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  INPSEL
      INPSEL         : Boolean := False;
      --  unspecified
      Reserved_9_14  : A0B.Types.SVD.UInt6 := 16#0#;
      --  POL
      POL            : Boolean := False;
      --  HYST
      HYST           : COMP_C4CSR_HYST_Field := 16#0#;
      --  BLANKSEL
      BLANKSEL       : COMP_C4CSR_BLANKSEL_Field := 16#0#;
      --  BRGEN
      BRGEN          : Boolean := False;
      --  SCALEN
      SCALEN         : Boolean := False;
      --  unspecified
      Reserved_24_29 : A0B.Types.SVD.UInt6 := 16#0#;
      --  Read-only. VALUE
      VALUE          : Boolean := False;
      --  LOCK
      LOCK           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for COMP_C4CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      INMSEL         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      INPSEL         at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      POL            at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 18;
      BLANKSEL       at 0 range 19 .. 21;
      BRGEN          at 0 range 22 .. 22;
      SCALEN         at 0 range 23 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP_C5CSR_INMSEL_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C5CSR_HYST_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C5CSR_BLANKSEL_Field is A0B.Types.SVD.UInt3;

   --  Comparator control/status register
   type COMP_C5CSR_Register is record
      --  EN
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#0#;
      --  INMSEL
      INMSEL         : COMP_C5CSR_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  INPSEL
      INPSEL         : Boolean := False;
      --  unspecified
      Reserved_9_14  : A0B.Types.SVD.UInt6 := 16#0#;
      --  POL
      POL            : Boolean := False;
      --  HYST
      HYST           : COMP_C5CSR_HYST_Field := 16#0#;
      --  BLANKSEL
      BLANKSEL       : COMP_C5CSR_BLANKSEL_Field := 16#0#;
      --  BRGEN
      BRGEN          : Boolean := False;
      --  SCALEN
      SCALEN         : Boolean := False;
      --  unspecified
      Reserved_24_29 : A0B.Types.SVD.UInt6 := 16#0#;
      --  Read-only. VALUE
      VALUE          : Boolean := False;
      --  LOCK
      LOCK           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for COMP_C5CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      INMSEL         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      INPSEL         at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      POL            at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 18;
      BLANKSEL       at 0 range 19 .. 21;
      BRGEN          at 0 range 22 .. 22;
      SCALEN         at 0 range 23 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP_C6CSR_INMSEL_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C6CSR_HYST_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C6CSR_BLANKSEL_Field is A0B.Types.SVD.UInt3;

   --  Comparator control/status register
   type COMP_C6CSR_Register is record
      --  EN
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#0#;
      --  INMSEL
      INMSEL         : COMP_C6CSR_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  INPSEL
      INPSEL         : Boolean := False;
      --  unspecified
      Reserved_9_14  : A0B.Types.SVD.UInt6 := 16#0#;
      --  POL
      POL            : Boolean := False;
      --  HYST
      HYST           : COMP_C6CSR_HYST_Field := 16#0#;
      --  BLANKSEL
      BLANKSEL       : COMP_C6CSR_BLANKSEL_Field := 16#0#;
      --  BRGEN
      BRGEN          : Boolean := False;
      --  SCALEN
      SCALEN         : Boolean := False;
      --  unspecified
      Reserved_24_29 : A0B.Types.SVD.UInt6 := 16#0#;
      --  Read-only. VALUE
      VALUE          : Boolean := False;
      --  LOCK
      LOCK           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for COMP_C6CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      INMSEL         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      INPSEL         at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      POL            at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 18;
      BLANKSEL       at 0 range 19 .. 21;
      BRGEN          at 0 range 22 .. 22;
      SCALEN         at 0 range 23 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP_C7CSR_INMSEL_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C7CSR_HYST_Field is A0B.Types.SVD.UInt3;
   subtype COMP_C7CSR_BLANKSEL_Field is A0B.Types.SVD.UInt3;

   --  Comparator control/status register
   type COMP_C7CSR_Register is record
      --  EN
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : A0B.Types.SVD.UInt3 := 16#0#;
      --  INMSEL
      INMSEL         : COMP_C7CSR_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  INPSEL
      INPSEL         : Boolean := False;
      --  unspecified
      Reserved_9_14  : A0B.Types.SVD.UInt6 := 16#0#;
      --  POL
      POL            : Boolean := False;
      --  HYST
      HYST           : COMP_C7CSR_HYST_Field := 16#0#;
      --  BLANKSEL
      BLANKSEL       : COMP_C7CSR_BLANKSEL_Field := 16#0#;
      --  BRGEN
      BRGEN          : Boolean := False;
      --  SCALEN
      SCALEN         : Boolean := False;
      --  unspecified
      Reserved_24_29 : A0B.Types.SVD.UInt6 := 16#0#;
      --  Read-only. VALUE
      VALUE          : Boolean := False;
      --  LOCK
      LOCK           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for COMP_C7CSR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      INMSEL         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      INPSEL         at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      POL            at 0 range 15 .. 15;
      HYST           at 0 range 16 .. 18;
      BLANKSEL       at 0 range 19 .. 21;
      BRGEN          at 0 range 22 .. 22;
      SCALEN         at 0 range 23 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      VALUE          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Comparator control and status register
   type COMP_Peripheral is record
      --  Comparator control/status register
      COMP_C1CSR : aliased COMP_C1CSR_Register;
      pragma Volatile_Full_Access (COMP_C1CSR);
      --  Comparator control/status register
      COMP_C2CSR : aliased COMP_C2CSR_Register;
      pragma Volatile_Full_Access (COMP_C2CSR);
      --  Comparator control/status register
      COMP_C3CSR : aliased COMP_C3CSR_Register;
      pragma Volatile_Full_Access (COMP_C3CSR);
      --  Comparator control/status register
      COMP_C4CSR : aliased COMP_C4CSR_Register;
      pragma Volatile_Full_Access (COMP_C4CSR);
      --  Comparator control/status register
      COMP_C5CSR : aliased COMP_C5CSR_Register;
      pragma Volatile_Full_Access (COMP_C5CSR);
      --  Comparator control/status register
      COMP_C6CSR : aliased COMP_C6CSR_Register;
      pragma Volatile_Full_Access (COMP_C6CSR);
      --  Comparator control/status register
      COMP_C7CSR : aliased COMP_C7CSR_Register;
      pragma Volatile_Full_Access (COMP_C7CSR);
   end record
     with Volatile;

   for COMP_Peripheral use record
      COMP_C1CSR at 16#0# range 0 .. 31;
      COMP_C2CSR at 16#4# range 0 .. 31;
      COMP_C3CSR at 16#8# range 0 .. 31;
      COMP_C4CSR at 16#C# range 0 .. 31;
      COMP_C5CSR at 16#10# range 0 .. 31;
      COMP_C6CSR at 16#14# range 0 .. 31;
      COMP_C7CSR at 16#18# range 0 .. 31;
   end record;

   --  Comparator control and status register
   COMP_Periph : aliased COMP_Peripheral
     with Import, Address => COMP_Base;

end A0B.STM32G4.G474.SVD.COMP;
