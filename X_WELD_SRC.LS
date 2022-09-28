/PROG  X_WELD_SRC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "INCLUDE WELD.H";
PROG_SIZE	= 1145;
CREATE		= DATE 22-01-21  TIME 12:26:34;
MODIFIED	= DATE 22-01-21  TIME 12:37:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 1401;
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
  11:  GO[3:memoryCHANNEL]=2 ;
  12:   ;
  13:  ! Go to START welding point and r ;
  14:L P[2:WELDSTART] 50mm/sec FINE
    :  Weld Start[1,2]    ;
  15:   ;
  16:  ! MIDDLE welding point. ;
  17:L P[3:WELDCONT] WELD_SPEED CNT100    ;
  18:   ;
  19:  ! END welding point. ;
  20:L P[4:WELDEND] WELD_SPEED FINE
    :  Weld End[1,2]    ;
  21:   ;
  22:  ! ;
  23:  ! FREE WELDER! ;
  24:  WAIT (!DI[41:cycleON])    ;
  25:   ;
  26:  ! ;
  27:  ! Return to approach point. ;
  28:J P[1:APPROACH] 30% FINE    ;
  29:   ;
/POS
P[1:"APPROACH"]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -30.000 deg,	J3=   -15.000 deg,
	J4=     0.000 deg,	J5=   -45.000 deg,	J6=     0.000 deg
};
P[2:"WELDSTART"]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -30.000 deg,	J3=   -15.000 deg,
	J4=     0.000 deg,	J5=   -50.000 deg,	J6=     0.000 deg
};
P[3:"WELDCONT"]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -30.000 deg,	J3=   -15.000 deg,
	J4=     0.000 deg,	J5=   -55.000 deg,	J6=     0.000 deg
};
P[4:"WELDEND"]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -30.000 deg,	J3=   -15.000 deg,
	J4=     0.000 deg,	J5=   -60.000 deg,	J6=     0.000 deg
};
/END
