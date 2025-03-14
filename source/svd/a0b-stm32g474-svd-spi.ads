pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32G474.svd


with A0B.Types.SVD;
with System;

package A0B.STM32G474.SVD.SPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_BR_Field is A0B.Types.SVD.UInt3;

   --  control register 1
   type CR1_Register is record
      --  Clock phase
      CPHA           : Boolean := False;
      --  Clock polarity
      CPOL           : Boolean := False;
      --  Master selection
      MSTR           : Boolean := False;
      --  Baud rate control
      BR             : CR1_BR_Field := 16#0#;
      --  SPI enable
      SPE            : Boolean := False;
      --  Frame format
      LSBFIRST       : Boolean := False;
      --  Internal slave select
      SSI            : Boolean := False;
      --  Software slave management
      SSM            : Boolean := False;
      --  Receive only
      RXONLY         : Boolean := False;
      --  Data frame format
      DFF            : Boolean := False;
      --  CRC transfer next
      CRCNEXT        : Boolean := False;
      --  Hardware CRC calculation enable
      CRCEN          : Boolean := False;
      --  Output enable in bidirectional mode
      BIDIOE         : Boolean := False;
      --  Bidirectional data mode enable
      BIDIMODE       : Boolean := False;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      CPHA           at 0 range 0 .. 0;
      CPOL           at 0 range 1 .. 1;
      MSTR           at 0 range 2 .. 2;
      BR             at 0 range 3 .. 5;
      SPE            at 0 range 6 .. 6;
      LSBFIRST       at 0 range 7 .. 7;
      SSI            at 0 range 8 .. 8;
      SSM            at 0 range 9 .. 9;
      RXONLY         at 0 range 10 .. 10;
      DFF            at 0 range 11 .. 11;
      CRCNEXT        at 0 range 12 .. 12;
      CRCEN          at 0 range 13 .. 13;
      BIDIOE         at 0 range 14 .. 14;
      BIDIMODE       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR2_DS_Field is A0B.Types.SVD.UInt4;

   --  control register 2
   type CR2_Register is record
      --  Rx buffer DMA enable
      RXDMAEN        : Boolean := False;
      --  Tx buffer DMA enable
      TXDMAEN        : Boolean := False;
      --  SS output enable
      SSOE           : Boolean := False;
      --  NSS pulse management
      NSSP           : Boolean := False;
      --  Frame format
      FRF            : Boolean := False;
      --  Error interrupt enable
      ERRIE          : Boolean := False;
      --  RX buffer not empty interrupt enable
      RXNEIE         : Boolean := False;
      --  Tx buffer empty interrupt enable
      TXEIE          : Boolean := False;
      --  Data size
      DS             : CR2_DS_Field := 16#7#;
      --  FIFO reception threshold
      FRXTH          : Boolean := False;
      --  Last DMA transfer for reception
      LDMA_RX        : Boolean := False;
      --  Last DMA transfer for transmission
      LDMA_TX        : Boolean := False;
      --  unspecified
      Reserved_15_31 : A0B.Types.SVD.UInt17 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      RXDMAEN        at 0 range 0 .. 0;
      TXDMAEN        at 0 range 1 .. 1;
      SSOE           at 0 range 2 .. 2;
      NSSP           at 0 range 3 .. 3;
      FRF            at 0 range 4 .. 4;
      ERRIE          at 0 range 5 .. 5;
      RXNEIE         at 0 range 6 .. 6;
      TXEIE          at 0 range 7 .. 7;
      DS             at 0 range 8 .. 11;
      FRXTH          at 0 range 12 .. 12;
      LDMA_RX        at 0 range 13 .. 13;
      LDMA_TX        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SR_FRLVL_Field is A0B.Types.SVD.UInt2;
   subtype SR_FTLVL_Field is A0B.Types.SVD.UInt2;

   --  status register
   type SR_Register is record
      --  Read-only. Receive buffer not empty
      RXNE           : Boolean := False;
      --  Read-only. Transmit buffer empty
      TXE            : Boolean := True;
      --  unspecified
      Reserved_2_3   : A0B.Types.SVD.UInt2 := 16#0#;
      --  CRC error flag
      CRCERR         : Boolean := False;
      --  Read-only. Mode fault
      MODF           : Boolean := False;
      --  Read-only. Overrun flag
      OVR            : Boolean := False;
      --  Read-only. Busy flag
      BSY            : Boolean := False;
      --  Read-only. TI frame format error
      TIFRFE         : Boolean := False;
      --  Read-only. FIFO reception level
      FRLVL          : SR_FRLVL_Field := 16#0#;
      --  Read-only. FIFO transmission level
      FTLVL          : SR_FTLVL_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : A0B.Types.SVD.UInt19 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RXNE           at 0 range 0 .. 0;
      TXE            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CRCERR         at 0 range 4 .. 4;
      MODF           at 0 range 5 .. 5;
      OVR            at 0 range 6 .. 6;
      BSY            at 0 range 7 .. 7;
      TIFRFE         at 0 range 8 .. 8;
      FRLVL          at 0 range 9 .. 10;
      FTLVL          at 0 range 11 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DR_DR_Field is A0B.Types.SVD.UInt16;

   --  data register
   type DR_Register is record
      --  Data register
      DR             : DR_DR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CRCPR_CRCPOLY_Field is A0B.Types.SVD.UInt16;

   --  CRC polynomial register
   type CRCPR_Register is record
      --  CRC polynomial register
      CRCPOLY        : CRCPR_CRCPOLY_Field := 16#7#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CRCPR_Register use record
      CRCPOLY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXCRCR_RxCRC_Field is A0B.Types.SVD.UInt16;

   --  RX CRC register
   type RXCRCR_Register is record
      --  Read-only. Rx CRC register
      RxCRC          : RXCRCR_RxCRC_Field;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for RXCRCR_Register use record
      RxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXCRCR_TxCRC_Field is A0B.Types.SVD.UInt16;

   --  TX CRC register
   type TXCRCR_Register is record
      --  Read-only. Tx CRC register
      TxCRC          : TXCRCR_TxCRC_Field;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for TXCRCR_Register use record
      TxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2SCFGR_DATLEN_Field is A0B.Types.SVD.UInt2;
   subtype I2SCFGR_I2SSTD_Field is A0B.Types.SVD.UInt2;
   subtype I2SCFGR_I2SCFG_Field is A0B.Types.SVD.UInt2;

   --  configuration register
   type I2SCFGR_Register is record
      --  CHLEN
      CHLEN          : Boolean := False;
      --  DATLEN
      DATLEN         : I2SCFGR_DATLEN_Field := 16#0#;
      --  CKPOL
      CKPOL          : Boolean := False;
      --  I2SSTD
      I2SSTD         : I2SCFGR_I2SSTD_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : A0B.Types.SVD.Bit := 16#0#;
      --  PCMSYNC
      PCMSYNC        : Boolean := False;
      --  I2SCFG
      I2SCFG         : I2SCFGR_I2SCFG_Field := 16#0#;
      --  I2SE
      I2SE           : Boolean := False;
      --  I2SMOD
      I2SMOD         : Boolean := False;
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for I2SCFGR_Register use record
      CHLEN          at 0 range 0 .. 0;
      DATLEN         at 0 range 1 .. 2;
      CKPOL          at 0 range 3 .. 3;
      I2SSTD         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PCMSYNC        at 0 range 7 .. 7;
      I2SCFG         at 0 range 8 .. 9;
      I2SE           at 0 range 10 .. 10;
      I2SMOD         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype I2SPR_I2SDIV_Field is A0B.Types.SVD.Byte;

   --  prescaler register
   type I2SPR_Register is record
      --  I2SDIV
      I2SDIV         : I2SPR_I2SDIV_Field := 16#2#;
      --  ODD
      ODD            : Boolean := False;
      --  MCKOE
      MCKOE          : Boolean := False;
      --  unspecified
      Reserved_10_31 : A0B.Types.SVD.UInt22 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for I2SPR_Register use record
      I2SDIV         at 0 range 0 .. 7;
      ODD            at 0 range 8 .. 8;
      MCKOE          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial peripheral interface/Inter-IC sound
   type SPI_Peripheral is record
      --  control register 1
      CR1     : aliased CR1_Register;
      pragma Volatile_Full_Access (CR1);
      --  control register 2
      CR2     : aliased CR2_Register;
      pragma Volatile_Full_Access (CR2);
      --  status register
      SR      : aliased SR_Register;
      pragma Volatile_Full_Access (SR);
      --  data register
      DR      : aliased DR_Register;
      pragma Volatile_Full_Access (DR);
      --  CRC polynomial register
      CRCPR   : aliased CRCPR_Register;
      pragma Volatile_Full_Access (CRCPR);
      --  RX CRC register
      RXCRCR  : aliased RXCRCR_Register;
      pragma Volatile_Full_Access (RXCRCR);
      --  TX CRC register
      TXCRCR  : aliased TXCRCR_Register;
      pragma Volatile_Full_Access (TXCRCR);
      --  configuration register
      I2SCFGR : aliased I2SCFGR_Register;
      pragma Volatile_Full_Access (I2SCFGR);
      --  prescaler register
      I2SPR   : aliased I2SPR_Register;
      pragma Volatile_Full_Access (I2SPR);
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR1     at 16#0# range 0 .. 31;
      CR2     at 16#4# range 0 .. 31;
      SR      at 16#8# range 0 .. 31;
      DR      at 16#C# range 0 .. 31;
      CRCPR   at 16#10# range 0 .. 31;
      RXCRCR  at 16#14# range 0 .. 31;
      TXCRCR  at 16#18# range 0 .. 31;
      I2SCFGR at 16#1C# range 0 .. 31;
      I2SPR   at 16#20# range 0 .. 31;
   end record;

   --  Serial peripheral interface/Inter-IC sound
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => SPI1_Base;

   --  Serial peripheral interface/Inter-IC sound
   SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => SPI2_Base;

   --  Serial peripheral interface/Inter-IC sound
   SPI3_Periph : aliased SPI_Peripheral
     with Import, Address => SPI3_Base;

   --  Serial peripheral interface/Inter-IC sound
   SPI4_Periph : aliased SPI_Peripheral
     with Import, Address => SPI4_Base;

end A0B.STM32G474.SVD.SPI;
