/PROG  DAN_X945_23
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DAN X-PROJCT";
PROG_SIZE	= 1673;
CREATE		= DATE 22-01-21  TIME 11:47:38;
MODIFIED	= DATE 22-01-21  TIME 11:52:36;
FILE_NAME	= DAN_X945;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 1961;
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
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  CALL A_HOME_2H    ;
   4:  DO[10:table1 ring]=PULSE,1.3sec ;
   5:  DO[13:table2 ring]=PULSE,1.3sec ;
   6:  F[1019:table1 ready]=(OFF) ;
   7:  F[1015:table2 ready]=(OFF) ;
   8:  F[1022:table1 work]=(OFF) ;
   9:  F[1018:table2 work]=(OFF) ;
  10:   ;
  11:  !**TABLE2 POSITION 1 START** ;
  12:  WAIT DI[7:p2_accept]=ON    ;
  13:  F[1015:table2 ready]=(OFF) ;
  14:  F[1018:table2 work]=(ON) ;
  15:J P[5] 7% FINE    ;
  16:   ;
  17:  !**TABLE2 POSITION 1 END** ;
  18:  DO[10:table1 ring]=PULSE,0.2sec ;
  19:  DO[13:table2 ring]=PULSE,0.2sec ;
  20:  F[1015:table2 ready]=(ON) ;
  21:  F[1018:table2 work]=(OFF) ;
  22:   ;
  23:  !**TABLE2 POSITION 2 START** ;
  24:  WAIT DI[7:p2_accept]=ON    ;
  25:  F[1015:table2 ready]=(OFF) ;
  26:  F[1018:table2 work]=(ON) ;
  27:L P[4] 200mm/sec CNT100    ;
  28:L P[6] 200mm/sec FINE    ;
  29:   ;
  30:  !**TABLE2 POSITION 2 END** ;
  31:  DO[10:table1 ring]=PULSE,0.2sec ;
  32:  DO[13:table2 ring]=PULSE,0.2sec ;
  33:  PAUSE ;
  34:   ;
  35:   ;
  36:  !WORK ;
  37:  GO[3:memoryCHANNEL]=3 ;
  38:  DO[56:OnLine]=ON ;
  39:   ;
  40:L P[2] 50mm/sec FINE
    :  Weld Start[2,16]    ;
  41:  Weave Circle[1.0Hz,3.0mm,0.050s,0.050s] ;
  42:   ;
  43:L P[1] WELD_SPEED FINE
    :  Weld End[2,16]    ;
  44:  Weave End ;
  45:   ;
  46:  WAIT (!DI[41:cycleON])    ;
  47:L P[5] 20deg/sec CNT100    ;
  48:J P[3] 15% CNT100    ;
  49:  CALL A_HOME_2H    ;
  50:  F[1019:table1 ready]=(OFF) ;
  51:  F[1015:table2 ready]=(OFF) ;
  52:  F[1022:table1 work]=(OFF) ;
  53:  F[1018:table2 work]=(OFF) ;
  54:  //PAUSE ;
  55:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   727.251  mm,	Y =  1051.635  mm,	Z =  -395.857  mm,
	W =    -1.028 deg,	P =    18.056 deg,	R =  -179.387 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -208.004  mm,	Y =  1042.418  mm,	Z =  -392.004  mm,
	W =    -1.027 deg,	P =    18.056 deg,	R =  -179.391 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   153.058  mm,	Y =  1054.518  mm,	Z =  -263.997  mm,
	W =     -.540 deg,	P =    49.485 deg,	R =  -179.103 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   285.169  mm,	Y =  1048.714  mm,	Z =  -365.241  mm,
	W =    -1.028 deg,	P =    18.056 deg,	R =  -179.387 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   727.251  mm,	Y =  1051.064  mm,	Z =  -379.754  mm,
	W =     -.612 deg,	P =    46.134 deg,	R =  -179.159 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -208.005  mm,	Y =  1042.390  mm,	Z =  -382.852  mm,
	W =    -1.026 deg,	P =    18.056 deg,	R =  -179.384 deg
};
/END
