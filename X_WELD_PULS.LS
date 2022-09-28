/PROG  X_WELD_PULS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "INCLUDE WELD.H";
PROG_SIZE	= 1505;
CREATE		= DATE 22-01-24  TIME 10:45:32;
MODIFIED	= DATE 22-01-24  TIME 13:46:50;
FILE_NAME	= X_WELD_S;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 1841;
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
   7:   ;
   8:  ! ;
   9:  ! SET UP WELDER! ;
  10:  DO[56:OnLine]=ON ;
  11:  GO[3:memoryCHANNEL]=3 ;
  12:   ;
  13:  ! Go to START welding point and r ;
  14:L P[2:START] 50mm/sec FINE
    :  Weld Start[1,18]    ;
  15:  Weave Sine[4.0Hz,2.0mm,0.0s,0.0s] ;
  16:  ! END welding point. ;
  17:L P[3] WELD_SPEED FINE
    :  Weld End[1,18]    ;
  18:   ;
  19:  ! FREE WELDER! ;
  20:  WAIT (!DI[41:cycleON])    ;
  21:   ;
  22:J P[1:APPROACH] 10% CNT100    ;
  23:J P[5] 10% CNT100    ;
  24:   ;
  25:   ;
  26:  PAUSE ;
  27:  DO[56:OnLine]=ON ;
  28:  GO[3:memoryCHANNEL]=3 ;
  29:   ;
  30:L P[4] 50mm/sec FINE
    :  Weld Start[1,18]    ;
  31:  Weave Sine[4.0Hz,2.0mm,0.0s,0.0s] ;
  32:L P[6] WELD_SPEED FINE
    :  Weld End[1,18]    ;
  33:   ;
  34:  ! ;
  35:  ! FREE WELDER! ;
  36:  WAIT (!DI[41:cycleON])    ;
  37:J P[5] 10% CNT100    ;
  38:  ! ;
  39:  ! Return to approach point. ;
  40:J P[1:APPROACH] 30% FINE    ;
  41:   ;
/POS
P[1:"APPROACH"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    62.009 deg,	J2=    22.756 deg,	J3=   -49.738 deg,
	J4=     -.804 deg,	J5=   -38.093 deg,	J6=    27.503 deg
};
P[2:"START"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    59.543 deg,	J2=    27.558 deg,	J3=   -53.650 deg,
	J4=    -1.048 deg,	J5=   -34.206 deg,	J6=    30.202 deg
};
P[3:""]{
   GP1:
	UF : 0, UT : 1,	
	J1=    65.143 deg,	J2=    23.688 deg,	J3=   -55.228 deg,
	J4=     -.699 deg,	J5=   -32.578 deg,	J6=    24.329 deg
};
P[4:""]{
   GP1:
	UF : 0, UT : 1,	
	J1=    56.427 deg,	J2=    22.519 deg,	J3=   -55.784 deg,
	J4=     1.256 deg,	J5=   -36.323 deg,	J6=  -147.520 deg
};
P[5:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   623.047  mm,	Y =  1063.069  mm,	Z =  -424.130  mm,
	W =     -.733 deg,	P =    42.835 deg,	R =   -90.577 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   537.515  mm,	Y =  1079.484  mm,	Z =  -509.092  mm,
	W =     -.733 deg,	P =    42.835 deg,	R =   -90.577 deg
};
/END
