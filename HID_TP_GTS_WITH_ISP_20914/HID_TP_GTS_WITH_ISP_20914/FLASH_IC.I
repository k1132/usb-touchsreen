
#line 1 "FLASH_IC.C" /0






 
 
 
 







 
 
 
 
  
#line 1 "C:\Keil\C51\Inc\intrins.h" /0






 
 
 
 
 
 #pragma SAVE
 
 
#line 15 "C:\Keil\C51\Inc\intrins.h" /1
 
 
 
#line 18 "C:\Keil\C51\Inc\intrins.h" /0
 
 extern void          _nop_     (void);
 extern bit           _testbit_ (bit);
 extern unsigned char _cror_    (unsigned char, unsigned char);
 extern unsigned int  _iror_    (unsigned int,  unsigned char);
 extern unsigned long _lror_    (unsigned long, unsigned char);
 extern unsigned char _crol_    (unsigned char, unsigned char);
 extern unsigned int  _irol_    (unsigned int,  unsigned char);
 extern unsigned long _lrol_    (unsigned long, unsigned char);
 extern unsigned char _chkfloat_(float);
 
#line 29 "C:\Keil\C51\Inc\intrins.h" /1
 
 
#line 31 "C:\Keil\C51\Inc\intrins.h" /0
 
 extern void          _push_    (unsigned char _sfr);
 extern void          _pop_     (unsigned char _sfr);
 
 
 #pragma RESTORE
 
 
 
#line 22 "FLASH_IC.C" /0
 
  
#line 1 "C:\Keil\C51\Inc\stdio.h" /0






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned int size_t;
 
 
 #pragma SAVE
 #pragma REGPARMS
 extern char _getkey (void);
 extern char getchar (void);
 extern char ungetchar (char);
 extern char putchar (char);
 extern int printf   (const char *, ...);
 extern int sprintf  (char *, const char *, ...);
 extern int vprintf  (const char *, char *);
 extern int vsprintf (char *, const char *, char *);
 extern char *gets (char *, int n);
 extern int scanf (const char *, ...);
 extern int sscanf (char *, const char *, ...);
 extern int puts (const char *);
 
 #pragma RESTORE
 
 
 
#line 23 "FLASH_IC.C" /0
 
  
#line 1 "CH554.H" /0







 
 
 
 
 
 
 
 
#line 16 "CH554.H" /1
 
 
#line 18 "CH554.H" /0
 
 
 
 
 
 
 
 
#line 26 "CH554.H" /1
  
 
#line 28 "CH554.H" /0
 
 
 typedef bit                             BOOL;
 
 
 typedef unsigned char                   UINT8;
 
 
 typedef unsigned short                  UINT16;
 
 
 typedef unsigned long                   UINT32;
 
 
 typedef unsigned char  data             UINT8D;
 
 
 typedef unsigned short data             UINT16D;
 
 
 typedef unsigned long  data             UINT32D;
 
 
 typedef unsigned char  idata            UINT8I;
 
 
 typedef unsigned short idata            UINT16I;
 
 
 typedef unsigned long  idata            UINT32I;
 
 
 typedef unsigned char  xdata            UINT8X;
 
 
 typedef unsigned short xdata            UINT16X;
 
 
 typedef unsigned long  xdata            UINT32X;
 
 
 typedef unsigned char volatile          UINT8V;
 
 
 typedef unsigned char volatile data     UINT8DV;
 
 
 typedef unsigned char volatile xdata    UINT8XV;
 
 
 typedef unsigned char volatile pdata    UINT8PV;
 
 
 typedef const unsigned char code        UINT8C;
 
 
 typedef unsigned char                 *PUINT8;
 
 
 typedef unsigned short                *PUINT16;
 
 
 typedef unsigned long                 *PUINT32;
 
 
 typedef unsigned char  idata          *PUINT8I;
 
 
 typedef unsigned short idata          *PUINT16I;
 
 
 typedef unsigned long  idata          *PUINT32I;
 
 
 typedef unsigned char  xdata          *PUINT8X;
 
 
 typedef unsigned short xdata          *PUINT16X;
 
 
 typedef unsigned long  xdata          *PUINT32X;
 
 
 typedef unsigned char volatile        *PUINT8V;
 
 
 typedef unsigned char volatile data   *PUINT8DV;
 
 
 typedef unsigned char volatile xdata  *PUINT8XV;
 
 
 typedef unsigned char volatile pdata  *PUINT8PV;
 
 
 typedef const unsigned char code      *PUINT8C;
 
 
 
 
 
 
 
#line 131 "CH554.H" /1
 
 
#line 133 "CH554.H" /0
 
 
 
 
 
 
 
#line 140 "CH554.H" /1
 
 
#line 142 "CH554.H" /0
 
 
 
 
 
 sfr PSW             = 0xD0;          
 sbit CY            = PSW^7;         
 sbit AC            = PSW^6;         
 sbit F0            = PSW^5;         
 sbit RS1           = PSW^4;         
 sbit RS0           = PSW^3;         
 
 
 
 
 
 
 sbit OV            = PSW^2;         
 sbit F1            = PSW^1;         
 sbit P             = PSW^0;         
 sfr ACC             = 0xE0;          
 sfr B               = 0xF0;          
 sfr SP              = 0x81;          
 
 sfr DPL             = 0x82;          
 sfr DPH             = 0x83;          
 sfr SAFE_MOD        = 0xA1;          
 
 
 sfr GLOBAL_CFG      = 0xB1;          
 
 
 
 
 
 
 
 
 sfr PCON            = 0x87;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr CLOCK_CFG       = 0xB9;          
 
 
 
 
 
 
 
 














 
 sfr WAKE_CTRL       = 0xA9;          
 
 
 
 
 
 
 
 
 sfr RESET_KEEP      = 0xFE;          
 sfr WDOG_COUNT      = 0xFF;          
 
 
 sfr IE              = 0xA8;          
 sbit EA            = IE^7;          
 sbit E_DIS         = IE^6;          
 sbit ET2           = IE^5;          
 sbit ES            = IE^4;          
 sbit ET1           = IE^3;          
 sbit EX1           = IE^2;          
 sbit ET0           = IE^1;          
 sbit EX0           = IE^0;          
 sfr IP              = 0xB8;          
 sbit PH_FLAG       = IP^7;          
 sbit PL_FLAG       = IP^6;          
 
 
 
 
 
 sbit PT2           = IP^5;          
 sbit PS            = IP^4;          
 sbit PT1           = IP^3;          
 sbit PX1           = IP^2;          
 sbit PT0           = IP^1;          
 sbit PX0           = IP^0;          
 sfr IE_EX           = 0xE8;          
 sbit IE_WDOG       = IE_EX^7;       
 sbit IE_GPIO       = IE_EX^6;       
 sbit IE_PWMX       = IE_EX^5;       
 sbit IE_UART1      = IE_EX^4;       
 sbit IE_ADC        = IE_EX^3;       
 sbit IE_USB        = IE_EX^2;       
 sbit IE_TKEY       = IE_EX^1;       
 sbit IE_SPI0       = IE_EX^0;       
 sfr IP_EX           = 0xE9;          
 
 
 
 
 
 
 
 
 sfr GPIO_IE         = 0xC7;          
 
 
 
 
 
 
 
 
 
 
 sfr16 ROM_ADDR      = 0x84;          
 sfr ROM_ADDR_L      = 0x84;          
 sfr ROM_ADDR_H      = 0x85;          
 sfr16 ROM_DATA      = 0x8E;          
 sfr ROM_DATA_L      = 0x8E;          
 sfr ROM_DATA_H      = 0x8F;          
 sfr ROM_CTRL        = 0x86;          
 
 
 
 
 
 
 
 
 sfr P1              = 0x90;          
 sbit SCK           = P1^7;          
 sbit TXD1          = P1^7;          
 sbit TIN5          = P1^7;          
 sbit MISO          = P1^6;          
 sbit RXD1          = P1^6;          
 sbit TIN4          = P1^6;          
 sbit MOSI          = P1^5;          
 sbit PWM1          = P1^5;          
 sbit TIN3          = P1^5;          
 sbit UCC2          = P1^5;          
 sbit AIN2          = P1^5;          
 sbit T2_           = P1^4;          
 sbit CAP1_         = P1^4;          
 sbit SCS           = P1^4;          
 sbit TIN2          = P1^4;          
 sbit UCC1          = P1^4;          
 sbit AIN1          = P1^4;          
 sbit TXD_          = P1^3;          
 sbit RXD_          = P1^2;          
 sbit T2EX          = P1^1;          
 sbit CAP2          = P1^1;          
 sbit TIN1          = P1^1;          
 sbit VBUS2         = P1^1;          
 sbit AIN0          = P1^1;          
 sbit T2            = P1^0;          
 sbit CAP1          = P1^0;          
 sbit TIN0          = P1^0;          
 sfr P1_MOD_OC       = 0x92;          
 sfr P1_DIR_PU       = 0x93;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr P2              = 0xA0;          
 sfr P3              = 0xB0;          
 sbit UDM           = P3^7;          
 sbit UDP           = P3^6;          
 sbit T1            = P3^5;          
 sbit PWM2          = P3^4;          
 sbit RXD1_         = P3^4;          
 sbit T0            = P3^4;          
 sbit INT1          = P3^3;          
 sbit TXD1_         = P3^2;          
 sbit INT0          = P3^2;          
 sbit VBUS1         = P3^2;          
 sbit AIN3          = P3^2;          
 sbit PWM2_         = P3^1;          
 sbit TXD           = P3^1;          
 sbit PWM1_         = P3^0;          
 sbit RXD           = P3^0;          
 sfr P3_MOD_OC       = 0x96;          
 sfr P3_DIR_PU       = 0x97;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr PIN_FUNC        = 0xC6;          
 
 
 
 
 
 
 
 
 sfr XBUS_AUX        = 0xA2;          
 
 
 
 
 
 
 
 
 sfr TCON            = 0x88;          
 sbit TF1           = TCON^7;        
 sbit TR1           = TCON^6;        
 sbit TF0           = TCON^5;        
 sbit TR0           = TCON^4;        
 sbit IE1           = TCON^3;        
 sbit IT1           = TCON^2;        
 sbit IE0           = TCON^1;        
 sbit IT0           = TCON^0;        
 sfr TMOD            = 0x89;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr TL0             = 0x8A;          
 sfr TL1             = 0x8B;          
 sfr TH0             = 0x8C;          
 sfr TH1             = 0x8D;          
 
 
 sfr SCON            = 0x98;          
 sbit SM0           = SCON^7;        
 sbit SM1           = SCON^6;        
 
 
 
 
 
 sbit SM2           = SCON^5;        
 
 sbit REN           = SCON^4;        
 sbit TB8           = SCON^3;        
 sbit RB8           = SCON^2;        
 sbit TI            = SCON^1;        
 sbit RI            = SCON^0;        
 sfr SBUF            = 0x99;          
 
 
 sfr T2CON           = 0xC8;          
 sbit TF2           = T2CON^7;       
 sbit CAP1F         = T2CON^7;       
 sbit EXF2          = T2CON^6;       
 sbit RCLK          = T2CON^5;       
 sbit TCLK          = T2CON^4;       
 sbit EXEN2         = T2CON^3;       
 sbit TR2           = T2CON^2;       
 sbit C_T2          = T2CON^1;       
 sbit CP_RL2        = T2CON^0;       
 sfr T2MOD           = 0xC9;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr16 RCAP2         = 0xCA;          
 sfr RCAP2L          = 0xCA;          
 sfr RCAP2H          = 0xCB;          
 sfr16 T2COUNT       = 0xCC;          
 sfr TL2             = 0xCC;          
 sfr TH2             = 0xCD;          
 sfr16 T2CAP1        = 0xCE;          
 sfr T2CAP1L         = 0xCE;          
 sfr T2CAP1H         = 0xCF;          
 
 
 sfr PWM_DATA2       = 0x9B;          
 sfr PWM_DATA1       = 0x9C;          
 sfr PWM_CTRL        = 0x9D;          
 
 
 
 
 
 
 
 sfr PWM_CK_SE       = 0x9E;          
 
 
 sfr SPI0_STAT       = 0xF8;          
 sbit S0_FST_ACT    = SPI0_STAT^7;   
 sbit S0_IF_OV      = SPI0_STAT^6;   
 sbit S0_IF_FIRST   = SPI0_STAT^5;   
 sbit S0_IF_BYTE    = SPI0_STAT^4;   
 sbit S0_FREE       = SPI0_STAT^3;   
 sbit S0_T_FIFO     = SPI0_STAT^2;   
 sbit S0_R_FIFO     = SPI0_STAT^0;   
 sfr SPI0_DATA       = 0xF9;          
 sfr SPI0_CTRL       = 0xFA;          
 
 
 
 
 
 
 
 
 sfr SPI0_CK_SE      = 0xFB;          
 
 
 sfr SPI0_SETUP      = 0xFC;          
 
 
 
 
 
 
 
 
 
 sfr SCON1           = 0xC0;          
 sbit U1SM0         = SCON1^7;       
 sbit U1SMOD        = SCON1^5;       
 sbit U1REN         = SCON1^4;       
 sbit U1TB8         = SCON1^3;       
 sbit U1RB8         = SCON1^2;       
 sbit U1TI          = SCON1^1;       
 sbit U1RI          = SCON1^0;       
 sfr SBUF1           = 0xC1;          
 sfr SBAUD1          = 0xC2;          
 
 
 sfr ADC_CTRL        = 0x80;          
 sbit CMPO          = ADC_CTRL^7;    
 sbit CMP_IF        = ADC_CTRL^6;    
 sbit ADC_IF        = ADC_CTRL^5;    
 sbit ADC_START     = ADC_CTRL^4;    
 sbit CMP_CHAN      = ADC_CTRL^3;    
 sbit ADC_CHAN1     = ADC_CTRL^1;    
 sbit ADC_CHAN0     = ADC_CTRL^0;    
 
 
 
 
 
 sfr ADC_CFG         = 0x9A;          
 
 
 
 sfr ADC_DATA        = 0x9F;          
 
 
 sfr TKEY_CTRL       = 0xC3;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr16 TKEY_DAT      = 0xC4;          
 sfr TKEY_DATL       = 0xC4;          
 sfr TKEY_DATH       = 0xC5;          
 
 
 
 sfr USB_C_CTRL      = 0x91;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr UDEV_CTRL       = 0xD1;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr UEP1_CTRL       = 0xD2;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr UEP1_T_LEN      = 0xD3;          
 sfr UEP2_CTRL       = 0xD4;          
 sfr UEP2_T_LEN      = 0xD5;          
 sfr UEP3_CTRL       = 0xD6;          
 sfr UEP3_T_LEN      = 0xD7;          
 sfr USB_INT_FG      = 0xD8;          
 sbit U_IS_NAK      = USB_INT_FG^7;  
 sbit U_TOG_OK      = USB_INT_FG^6;  
 sbit U_SIE_FREE    = USB_INT_FG^5;  
 sbit UIF_FIFO_OV   = USB_INT_FG^4;  
 sbit UIF_HST_SOF   = USB_INT_FG^3;  
 sbit UIF_SUSPEND   = USB_INT_FG^2;  
 sbit UIF_TRANSFER  = USB_INT_FG^1;  
 sbit UIF_DETECT    = USB_INT_FG^0;  
 sbit UIF_BUS_RST   = USB_INT_FG^0;  
 sfr USB_INT_ST      = 0xD9;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr USB_MIS_ST      = 0xDA;          
 
 
 
 
 
 
 
 
 sfr USB_RX_LEN      = 0xDB;          
 sfr UEP0_CTRL       = 0xDC;          
 sfr UEP0_T_LEN      = 0xDD;          
 sfr UEP4_CTRL       = 0xDE;          
 sfr UEP4_T_LEN      = 0xDF;          
 sfr USB_INT_EN      = 0xE1;          
 
 
 
 
 
 
 
 
 sfr USB_CTRL        = 0xE2;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr USB_DEV_AD      = 0xE3;          
 
 
 sfr16 UEP2_DMA      = 0xE4;          
 sfr UEP2_DMA_L      = 0xE4;          
 sfr UEP2_DMA_H      = 0xE5;          
 sfr16 UEP3_DMA      = 0xE6;          
 sfr UEP3_DMA_L      = 0xE6;          
 sfr UEP3_DMA_H      = 0xE7;          
 sfr UEP4_1_MOD      = 0xEA;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr UEP2_3_MOD      = 0xEB;          
 
 
 
 
 
 
 sfr16 UEP0_DMA      = 0xEC;          
 sfr UEP0_DMA_L      = 0xEC;          
 sfr UEP0_DMA_H      = 0xED;          
 sfr16 UEP1_DMA      = 0xEE;          
 sfr UEP1_DMA_L      = 0xEE;          
 sfr UEP1_DMA_H      = 0xEF;          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

















 
 
 
#line 881 "CH554.H" /1
 
 
#line 883 "CH554.H" /0
 
 
 
 
 
 
 
#line 890 "CH554.H" /1
 
 
#line 892 "CH554.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct _USB_SETUP_REQ {
 UINT8 bRequestType;
 UINT8 bRequest;
 UINT8 wValueL;
 UINT8 wValueH;
 UINT8 wIndexL;
 UINT8 wIndexH;
 UINT8 wLengthL;
 UINT8 wLengthH;
 } USB_SETUP_REQ, *PUSB_SETUP_REQ;
 
 typedef USB_SETUP_REQ xdata *PXUSB_SETUP_REQ;
 
 typedef struct _USB_DEVICE_DESCR {
 UINT8 bLength;
 UINT8 bDescriptorType;
 UINT8 bcdUSBL;
 UINT8 bcdUSBH;
 UINT8 bDeviceClass;
 UINT8 bDeviceSubClass;
 UINT8 bDeviceProtocol;
 UINT8 bMaxPacketSize0;
 UINT8 idVendorL;
 UINT8 idVendorH;
 UINT8 idProductL;
 UINT8 idProductH;
 UINT8 bcdDeviceL;
 UINT8 bcdDeviceH;
 UINT8 iManufacturer;
 UINT8 iProduct;
 UINT8 iSerialNumber;
 UINT8 bNumConfigurations;
 } USB_DEV_DESCR, *PUSB_DEV_DESCR;
 
 typedef USB_DEV_DESCR xdata *PXUSB_DEV_DESCR;
 
 typedef struct _USB_CONFIG_DESCR {
 UINT8 bLength;
 UINT8 bDescriptorType;
 UINT8 wTotalLengthL;
 UINT8 wTotalLengthH;
 UINT8 bNumInterfaces;
 UINT8 bConfigurationValue;
 UINT8 iConfiguration;
 UINT8 bmAttributes;
 UINT8 MaxPower;
 } USB_CFG_DESCR, *PUSB_CFG_DESCR;
 
 typedef USB_CFG_DESCR xdata *PXUSB_CFG_DESCR;
 
 typedef struct _USB_INTERF_DESCR {
 UINT8 bLength;
 UINT8 bDescriptorType;
 UINT8 bInterfaceNumber;
 UINT8 bAlternateSetting;
 UINT8 bNumEndpoints;
 UINT8 bInterfaceClass;
 UINT8 bInterfaceSubClass;
 UINT8 bInterfaceProtocol;
 UINT8 iInterface;
 } USB_ITF_DESCR, *PUSB_ITF_DESCR;
 
 typedef USB_ITF_DESCR xdata *PXUSB_ITF_DESCR;
 
 typedef struct _USB_ENDPOINT_DESCR {
 UINT8 bLength;
 UINT8 bDescriptorType;
 UINT8 bEndpointAddress;
 UINT8 bmAttributes;
 UINT8 wMaxPacketSizeL;
 UINT8 wMaxPacketSizeH;
 UINT8 bInterval;
 } USB_ENDP_DESCR, *PUSB_ENDP_DESCR;
 
 typedef USB_ENDP_DESCR xdata *PXUSB_ENDP_DESCR;
 
 typedef struct _USB_CONFIG_DESCR_LONG {
 USB_CFG_DESCR   cfg_descr;
 USB_ITF_DESCR   itf_descr;
 USB_ENDP_DESCR  endp_descr[1];
 } USB_CFG_DESCR_LONG, *PUSB_CFG_DESCR_LONG;
 
 typedef USB_CFG_DESCR_LONG xdata *PXUSB_CFG_DESCR_LONG;
 
 typedef struct _USB_HUB_DESCR {
 UINT8 bDescLength;
 UINT8 bDescriptorType;
 UINT8 bNbrPorts;
 UINT8 wHubCharacteristicsL;
 UINT8 wHubCharacteristicsH;
 UINT8 bPwrOn2PwrGood;
 UINT8 bHubContrCurrent;
 UINT8 DeviceRemovable;
 UINT8 PortPwrCtrlMask;
 } USB_HUB_DESCR, *PUSB_HUB_DESCR;
 
 typedef USB_HUB_DESCR xdata *PXUSB_HUB_DESCR;
 
 typedef struct _USB_HID_DESCR {
 UINT8 bLength;
 UINT8 bDescriptorType;
 UINT8 bcdHIDL;
 UINT8 bcdHIDH;
 UINT8 bCountryCode;
 UINT8 bNumDescriptors;
 UINT8 bDescriptorTypeX;
 UINT8 wDescriptorLengthL;
 UINT8 wDescriptorLengthH;
 } USB_HID_DESCR, *PUSB_HID_DESCR;
 
 typedef USB_HID_DESCR xdata *PXUSB_HID_DESCR;
 
 typedef struct _UDISK_BOC_CBW {          
 UINT8 mCBW_Sig0;
 UINT8 mCBW_Sig1;
 UINT8 mCBW_Sig2;
 UINT8 mCBW_Sig3;
 UINT8 mCBW_Tag0;
 UINT8 mCBW_Tag1;
 UINT8 mCBW_Tag2;
 UINT8 mCBW_Tag3;
 UINT8 mCBW_DataLen0;
 UINT8 mCBW_DataLen1;
 UINT8 mCBW_DataLen2;
 UINT8 mCBW_DataLen3;                 
 UINT8 mCBW_Flag;                     
 UINT8 mCBW_LUN;
 UINT8 mCBW_CB_Len;                   
 UINT8 mCBW_CB_Buf[16];               
 } UDISK_BOC_CBW, *PUDISK_BOC_CBW;
 
 typedef UDISK_BOC_CBW xdata *PXUDISK_BOC_CBW;
 
 typedef struct _UDISK_BOC_CSW {          
 UINT8 mCSW_Sig0;
 UINT8 mCSW_Sig1;
 UINT8 mCSW_Sig2;
 UINT8 mCSW_Sig3;
 UINT8 mCSW_Tag0;
 UINT8 mCSW_Tag1;
 UINT8 mCSW_Tag2;
 UINT8 mCSW_Tag3;
 UINT8 mCSW_Residue0;                 
 UINT8 mCSW_Residue1;
 UINT8 mCSW_Residue2;
 UINT8 mCSW_Residue3;                 
 UINT8 mCSW_Status;                   
 } UDISK_BOC_CSW, *PUDISK_BOC_CSW;
 
 typedef UDISK_BOC_CSW xdata *PXUDISK_BOC_CSW;
 
 
#line 1214 "CH554.H" /1
 
 
#line 1216 "CH554.H" /0
 
 
#line 24 "FLASH_IC.C" /0
 
  
#line 1 "DEBUG.H" /0








 
 
 
 
 
 
#line 15 "DEBUG.H" /1
 
 
#line 17 "DEBUG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void	CfgFsys					( void );                    
 void	mDelayuS				( UINT16 n );              	 
 void	mDelaymS				( UINT16 n );              	 
 void  	CH554UART0Alter			( void );                 	 
 void	mInitSTDIO				( void );                    
 UINT8 	CH554UART0RcvByte		( void );              		 
 void  	CH554UART0SendByte		(UINT8 SendDat); 			 
 
 void	UART1Setup				( void );                    
 UINT8 	CH554UART1RcvByte		( void );              		 
 void  	CH554UART1SendByte		(UINT8 SendDat); 			 
 
 void 	CH554WDTModeSelect		(UINT8 mode);    			 
 void 	CH554WDTFeed			(UINT8 tim);           		 
 
 
#line 69 "DEBUG.H" /1
 
 
#line 71 "DEBUG.H" /0
 
 
 
 
#line 25 "FLASH_IC.C" /0
 
  
#line 1 "FLASH_IC.H" /0






 
 
 
 
 
 
 
 
#line 15 "FLASH_IC.H" /1
 
 
#line 17 "FLASH_IC.H" /0
 
 
 
 
 extern UINT8 Flash_Data[5-1];
 extern UINT8 Get_Config_Info( void );
 
 
#line 25 "FLASH_IC.H" /1
 
 
#line 27 "FLASH_IC.H" /0
 
 
 
#line 26 "FLASH_IC.C" /0
 
  
#line 1 "GT911.H" /0
 






 
 











 
 
 
 
 
 
#line 27 "GT911.H" /1
 
 
#line 29 "GT911.H" /0
 
  
#line 1 "CH554.H" /0







 
 
 
 
 
#line 13 "CH554.H" /1
  
 
 
 
 
 
 
 
 
  
  
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
#line 135 "CH554.H" /0
 
 
#line 137 "CH554.H" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
  
  
  
  
  
  
 
 
 
  
 
  
  
  
  
  
  
  
 
 
 
 
 
  
  
  
 
  
  
  
  
  
  
  
  














 
 
  
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
  
  
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
 
 
 
 
 
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
  
  
  
  
 
 
 
 
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
 
 
  
 
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
 
 
 
 
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
 
 
 
 
 
 
  
  
  
  
  
  
 
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
 
 
 
 
 
  
  
 
  
  
  
  
  
  
  
  
 
 
 
 
 
 
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
 
 
 
 
 
 
 
 
  
  
  
  
 
  
  
 
 
 
 
 
 
 
  
  
  
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
 
  
  
  
  
  
  
 
 
 
 
 
 
 
  
  
  
 
  
  
  
  
 
  
  
  
 
  
  
  
  
 
  
 
  
  
  
 
 
 
 
  
  
 
 
 
 
 
  
 
  
 
  
 
  
 
  
 
  
 
 
 
  
 
 
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
 

















 
 
 
 
 
 
 
#line 885 "CH554.H" /0
 
 
#line 887 "CH554.H" /1
  
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
  
 
 
 
  
 
 
  
 
 
  
 
 
  
  
 
 
  
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 30 "GT911.H" /0
#line 30 "GT911.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct
 {
 UINT8 Tip_Switch;
 UINT8 Contact_Identifier;
 UINT16 X_pos;		 
 UINT16 Y_pos;		 
 UINT16 Resolution_Multi;
 
 
 }POINTER;
 
 typedef struct 
 {
 UINT16 	x_max_pos;
 UINT16 	y_max_pos;
 UINT8 	x_mirror;
 UINT8	y_mirror;
 UINT8 	x_y_swap;
 double 	X_Resolution;
 double 	Y_Resolution;	
 UINT8 	Point_Num;
 UINT8 	IRQ_Flag;
 }_GT911_Info ;
 
 extern POINTER TP[(1)];
 extern _GT911_Info GT911_Info;
 
 
 extern UINT8 	GT911_Init					( void );
 extern void 	GT911_Get_Touch_Info		( void );
 extern UINT8 	GT911_Touch_Check			( void );
 extern void 	GT911_Gesture_Check			( void );
 extern void 	GT911_Get_Gesture_Info		( void );
 extern void 	GT911_Config				( void );
 extern UINT8 	GT911_Scan					( void );
 
#line 125 "GT911.H" /1
 
 
#line 127 "GT911.H" /0
 
 
 
 
#line 27 "FLASH_IC.C" /0
 
 
 UINT8 Flash_Data[5-1];
 
 UINT8 Get_Config_Info( void )			
 {
 UINT8 i;
 ROM_ADDR_H = 0xC000 >> 8;
 
 for(i=0; i<5; i++)
 {
 ROM_ADDR_L = i*2;                                                 
 ROM_CTRL = 0x8E;
 
 *(Flash_Data+i) = ROM_DATA_L;
 
 }
 
#line 45 "FLASH_IC.C" /1
 
 
 
 
 
 
#line 51 "FLASH_IC.C" /0
 
 
 
 
 
 
 
 
 
 
 {
 if( ( Flash_Data[0]&0x80 )!= 0 ) 
 {
 GT911_Info.x_mirror = 1;
 Flash_Data[0] &= ~0x7F;
 }
 if( ( Flash_Data[2]&0x80 )!= 0 ) 
 {
 GT911_Info.y_mirror = 1;
 Flash_Data[2] &= ~0x7F;
 }
 
 GT911_Info.x_max_pos = ( Flash_Data[0]<<8 ) + Flash_Data[1];
 GT911_Info.y_max_pos = ( Flash_Data[2]<<8 ) + Flash_Data[3];
 
 GT911_Info.x_y_swap = ( Flash_Data[4] == 0x01) ? 1 : 0;
 
 return 1;
 }
 }
 
