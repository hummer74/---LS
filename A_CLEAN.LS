/PROG  A_CLEAN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CLEAN PROGRAMM";
PROG_SIZE	= 1651;
CREATE		= DATE 22-01-14  TIME 11:54:50;
MODIFIED	= DATE 22-09-27  TIME 10:25:18;
FILE_NAME	= CLEAN;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 2091;
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
   2:  ! ;
   3:  !CLEAN ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=1 ;
   6:  R[200:weld count]=(0) ;
   7:  CALL A_HOME_CLNH    ;
   8:  CALL A_HOME_CLN    ;
   9:  ! ;
  10:  LBL[100:CUT] ;
  11:  !CUT ;
  12:L P[5] 300mm/sec CNT100    ;
  13:L P[6] 300mm/sec CNT100    ;
  14:  DO[3:blow]=ON ;
  15:L P[7] 100mm/sec FINE    ;
  16:  DO[51:wireINCH]=PULSE,1.2sec ;
  17:  WAIT   2.00(sec) ;
  18:  DO[4:BRScut]=PULSE,1.0sec ;
  19:  DO[3:blow]=OFF ;
  20:  WAIT   2.00(sec) ;
  21:L P[6] 100mm/sec CNT100    ;
  22:L P[5] 300mm/sec CNT100    ;
  23:   ;
  24:  ! ;
  25:  LBL[110:GRIND] ;
  26:  !GRIND ;
  27:L P[8] 300mm/sec CNT100    ;
  28:L P[9] 300mm/sec CNT100    ;
  29:L P[10] 100mm/sec FINE    ;
  30:  DO[3:blow]=ON ;
  31:  DO[7:BRSgrindstart]=ON ;
  32:  DO[6:BRSgrindup]=PULSE,2.5sec ;
  33:  WAIT   3.00(sec) ;
  34:  DO[7:BRSgrindstart]=OFF ;
  35:  DO[3:blow]=OFF ;
  36:  WAIT    .50(sec) ;
  37:L P[9] 300mm/sec CNT100    ;
  38:L P[8] 300mm/sec CNT100    ;
  39:   ;
  40:  ! ;
  41:  LBL[120:SPRAY] ;
  42:  !SPRAY ;
  43:L P[11] 300mm/sec CNT100    ;
  44:L P[12] 100mm/sec FINE    ;
  45:  DO[5:BRSspray]=PULSE,1.5sec ;
  46:  WAIT   4.50(sec) ;
  47:L P[11] 300mm/sec CNT100    ;
  48:  WAIT  10.00(sec) ;
  49:   ;
  50:  ! ;
  51:  LBL[999:EXIT] ;
  52:  !EXIT ;
  53:  CALL A_HOME_CLNH    ;
  54:  CALL A_SOUNDL    ;
  55:  CALL A_HOME_00H    ;
  56:  CALL A_HOME_00    ;
  57:  CALL A_SOUNDL    ;
  58:  END ;
/POS
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -996.267  mm,	Y =    64.839  mm,	Z =  -166.321  mm,
	W =     -.165 deg,	P =     2.202 deg,	R =   -91.082 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -990.507  mm,	Y =    64.839  mm,	Z =  -342.866  mm,
	W =     -.165 deg,	P =     2.202 deg,	R =   -91.082 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -989.044  mm,	Y =   103.194  mm,	Z =  -344.498  mm,
	W =     2.006 deg,	P =     1.170 deg,	R =   -45.483 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1022.185  mm,	Y =   -30.201  mm,	Z =  -166.321  mm,
	W =     -.165 deg,	P =     2.202 deg,	R =   -91.082 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1022.186  mm,	Y =   -26.245  mm,	Z =  -311.484  mm,
	W =     -.165 deg,	P =     2.202 deg,	R =   -91.082 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1017.922  mm,	Y =   -24.810  mm,	Z =  -318.438  mm,
	W =     -.153 deg,	P =     1.840 deg,	R =   -91.082 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -995.868  mm,	Y =  -146.110  mm,	Z =  -149.629  mm,
	W =     -.164 deg,	P =     2.204 deg,	R =   -91.083 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -995.548  mm,	Y =  -143.108  mm,	Z =  -252.051  mm,
	W =      .455 deg,	P =     1.485 deg,	R =   -91.081 deg
};
/END
