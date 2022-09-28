/PROG  TP7_2388_01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "T_2388";
PROG_SIZE	= 1771;
CREATE		= DATE 22-09-20  TIME 10:53:12;
MODIFIED	= DATE 22-09-21  TIME 14:17:50;
FILE_NAME	= T_1718_9;
VERSION		= 0;
LINE_COUNT	= 97;
MEMORY_SIZE	= 2287;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  ARC Welding Equipment : 1,*,*,*,*;

MPAS ;
MPAS_NUM_PASSES        : 0;
MPAS_LAST_PASS         : 0;
MPAS_CURRENT_PASS      : 0;
MPAS_STATUS_PASS       : 0;
/MN
   1:   ;
   2:  LBL[1:INIT] ;
   3:  UTOOL_NUM=1 ;
   4:  UFRAME_NUM=0 ;
   5:   ;
   6:  LBL[2:START] ;
   7:  CALL A_HOME_01    ;
   8:   ;
   9:  ! WELD-001 ;
  10:  ! WORK ;
  11:  ! TOP FIRST LINE ;
  12:  ! SELECT CHANNEL ON KEMPI ;
  13:  GO[3:memoryCHANNEL]=11 ;
  14:  DO[56:OnLine]=ON ;
  15:J P[1] 20% CNT50    ;
  16:L P[2] 100mm/sec FINE
    :  Weld Start[5,4]    ;
  17:  Weave Sine[2] ;
  18:   ;
  19:   ;
  20:   ;
  21:L P[4] WELD_SPEED FINE
    :  Weld End[5,7] DB    3.0mm,GO[3:memoryCHANNEL]=1    ;
  22:  Weave End ;
  23:  WAIT (!DI[41:cycleON])    ;
  24:   ;
  25:J P[5] 20% CNT50    ;
  26:   ;
  27:   ;
  28:   ;
  29:   ;
  30:   ;
  31:   ;
  32:   ;
  33:   ;
  34:   ;
  35:   ;
  36:   ;
  37:   ;
  38:   ;
  39:   ;
  40:   ;
  41:   ;
  42:   ;
  43:   ;
  44:   ;
  45:   ;
  46:   ;
  47:   ;
  48:   ;
  49:   ;
  50:   ;
  51:   ;
  52:   ;
  53:   ;
  54:   ;
  55:   ;
  56:   ;
  57:   ;
  58:   ;
  59:   ;
  60:   ;
  61:   ;
  62:   ;
  63:   ;
  64:   ;
  65:   ;
  66:   ;
  67:   ;
  68:   ;
  69:   ;
  70:   ;
  71:   ;
  72:   ;
  73:   ;
  74:   ;
  75:   ;
  76:   ;
  77:   ;
  78:   ;
  79:   ;
  80:   ;
  81:   ;
  82:   ;
  83:   ;
  84:   ;
  85:   ;
  86:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
  87:  R[112:START-CNT]=R[112:START-CNT]+1    ;
  88:  !END WELDING ;
  89:  CALL A_SOUNDLL    ;
  90:   ;
  91:   ;
  92:  LBL[4:END] ;
  93:  CALL A_HOME_01    ;
  94:   ;
  95:   ;
  96:   ;
  97:  LBL[999:STOP] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -150.516  mm,	Y = -1230.351  mm,	Z =  -214.481  mm,
	W =     -.674 deg,	P =    45.167 deg,	R =   -90.721 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -139.477  mm,	Y = -1224.785  mm,	Z =  -352.721  mm,
	W =     -.674 deg,	P =    45.167 deg,	R =   -90.721 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -77.652  mm,	Y = -1224.785  mm,	Z =  -352.721  mm,
	W =     -.674 deg,	P =    45.167 deg,	R =   -90.721 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -77.652  mm,	Y = -1224.785  mm,	Z =  -246.543  mm,
	W =     -.674 deg,	P =    45.167 deg,	R =   -90.721 deg
};
/END
