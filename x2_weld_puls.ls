/PROG  X2_WELD_PULS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "INCLUDE WELD.H";
PROG_SIZE	= 1490;
CREATE		= DATE 22-01-24  TIME 14:26:22;
MODIFIED	= DATE 22-01-24  TIME 17:05:58;
FILE_NAME	= X_WELD_P;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 1826;
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
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  ! ;
   5:  ! Go to approach point. ;
   6:J P[1:APPROACH] 30% FINE    ;
   7:J P[8] 15% CNT100    ;
   8:  ! ;
   9:  ! SET UP WELDER! ;
  10:  DO[56:OnLine]=ON ;
  11:  GO[3:memoryCHANNEL]=5 ;
  12:   ;
  13:  ! Go to START welding point and r ;
  14:L P[3] 200mm/sec FINE
    :  Weld Start[1,20]    ;
  15:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  16:  ! END welding point. ;
  17:L P[2:START] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  18:   ;
  19:  ! FREE WELDER! ;
  20:  WAIT (!DI[41:cycleON])    ;
  21:L P[8] 100mm/sec CNT100    ;
  22:  //J P[1:APPROACH] 10% CNT100    ;
  23:  //J P[5] 10% CNT100    ;
  24:   ;
  25:   ;
  26:  PAUSE ;
  27:  DO[56:OnLine]=ON ;
  28:  GO[3:memoryCHANNEL]=3 ;
  29:   ;
  30:L P[3] 100mm/sec FINE
    :  Weld Start[1,19]    ;
  31:  Weave Circle[1.0Hz,3.0mm,0.0s,0.0s] ;
  32:L P[2:START] WELD_SPEED FINE
    :  Weld End[1,19]    ;
  33:   ;
  34:  ! ;
  35:  ! FREE WELDER! ;
  36:  WAIT (!DI[41:cycleON])    ;
  37:L P[8] 200mm/sec CNT100    ;
  38:  ! ;
  39:  ! Return to approach point. ;
  40:J P[1:APPROACH] 30% FINE    ;
  41:   ;
/POS
P[1:"APPROACH"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    59.037 deg,	J2=    -9.587 deg,	J3=   -42.594 deg,
	J4=      .072 deg,	J5=   -38.406 deg,	J6=  -180.336 deg
};
P[2:"START"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    46.193 deg,	J2=     6.650 deg,	J3=   -54.093 deg,
	J4=   -57.291 deg,	J5=   -34.295 deg,	J6=   -46.801 deg
};
P[3:""]{
   GP1:
	UF : 0, UT : 1,	
	J1=    47.407 deg,	J2=    15.598 deg,	J3=   -65.132 deg,
	J4=   -78.657 deg,	J5=   -26.696 deg,	J6=   -29.334 deg
};
P[5:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   623.047  mm,	Y =  1063.069  mm,	Z =  -424.130  mm,
	W =     -.733 deg,	P =    42.835 deg,	R =   -90.577 deg
};
P[8:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.303  mm,	Y =   965.703  mm,	Z =  -242.175  mm,
	W =    75.284 deg,	P =    73.378 deg,	R =    13.285 deg
};
/END
