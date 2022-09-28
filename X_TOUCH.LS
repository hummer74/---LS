/PROG  X_TOUCH
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BASE TOUCH";
PROG_SIZE	= 2228;
CREATE		= DATE 22-01-21  TIME 12:26:14;
MODIFIED	= DATE 22-01-21  TIME 12:37:30;
FILE_NAME	= _0_MAIN;
VERSION		= 0;
LINE_COUNT	= 64;
MEMORY_SIZE	= 2740;
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
   1:  !***** ;
   2:  !TOUCH PROGRAM ;
   3:  !***** ;
   4:   ;
   5:  !INIT ;
   6:  LBL[1:INIT] ;
   7:  UTOOL_NUM=1 ;
   8:  UFRAME_NUM=0 ;
   9:   ;
  10:  !START ;
  11:  LBL[100:START] ;
  12:  IF (RO[8:HOME REF POS]),JMP LBL[110] ;
  13:  CALL A_HOME_00    ;
  14:  JMP LBL[999] ;
  15:   ;
  16:   ;
  17:  !WORK ;
  18:  LBL[110:WORK] ;
  19:  Touch Offset End ;
  20:   ;
  21:  PR[32:TOUCH]=LPOS-LPOS    ;
  22:J PR[1:HOME_00] 10% FINE    ;
  23:  DO[55:touchSENSING]=(ON) ;
  24:  Search Start [1] PR[32] ;
  25:J P[1] 100% CNT50    ;
  26:J P[2] 50% CNT50    ;
  27:J P[2] 5% CNT50 Search[-X]    ;
  28:J P[3] 50% CNT50    ;
  29:J P[3] 5% CNT50 Search[-X]    ;
  30:J P[1] 50% CNT50    ;
  31:J P[4] 50% CNT50    ;
  32:J P[5] 50% CNT50    ;
  33:J P[5] 5% CNT50 Search[-Y]    ;
  34:J P[6] 50% CNT50    ;
  35:J P[6] 5% CNT50 Search[-Y]    ;
  36:J P[4] 50% CNT50    ;
  37:J P[7] 50% CNT50    ;
  38:J P[8] 50% CNT50    ;
  39:J P[8] 5% CNT50 Search[-Z]    ;
  40:J P[9] 50% CNT50    ;
  41:J P[9] 5% CNT50 Search[-Z]    ;
  42:J P[10] 50% CNT50    ;
  43:J P[10] 5% CNT50 Search[-Z]    ;
  44:J P[7] 50% CNT50    ;
  45:   ;
  46:  Search End ;
  47:L P[20] 200mm/sec CNT50    ;
  48:  Touch Offset PR[32] ;
  49:L P[14] 200mm/sec FINE    ;
  50:  Weld Start[5,5] ;
  51:L P[11] 30mm/sec FINE    ;
  52:L P[12] 30mm/sec FINE    ;
  53:L P[13] 30mm/sec FINE    ;
  54:L P[14] 30mm/sec FINE    ;
  55:   ;
  56:L P[12] 30mm/sec FINE    ;
  57:  Weld End[5,5] ;
  58:L P[20] 200mm/sec CNT50    ;
  59:  Touch Offset End ;
  60:   ;
  61:  JMP LBL[100] ;
  62:   ;
  63:  !END ALL ;
  64:  LBL[999] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   756.585  mm,	Y = -1052.522  mm,	Z =  -225.797  mm,
	W =     -.053 deg,	P =    51.095 deg,	R =     1.494 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   719.625  mm,	Y = -1063.082  mm,	Z =  -486.436  mm,
	W =     -.053 deg,	P =    51.095 deg,	R =     1.494 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   719.625  mm,	Y = -1021.802  mm,	Z =  -486.436  mm,
	W =     -.053 deg,	P =    51.096 deg,	R =     1.494 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   617.385  mm,	Y =  -931.563  mm,	Z =  -285.317  mm,
	W =      .817 deg,	P =    46.495 deg,	R =    90.969 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   674.985  mm,	Y =  -977.163  mm,	Z =  -487.397  mm,
	W =      .817 deg,	P =    46.495 deg,	R =    87.693 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   554.504  mm,	Y =  -977.163  mm,	Z =  -487.396  mm,
	W =      .817 deg,	P =    46.495 deg,	R =    87.693 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   617.384  mm,	Y = -1043.882  mm,	Z =  -285.318  mm,
	W =      .342 deg,	P =    26.770 deg,	R =      .969 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   683.625  mm,	Y = -1043.882  mm,	Z =  -434.597  mm,
	W =      .342 deg,	P =    26.770 deg,	R =      .969 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   625.544  mm,	Y = -1065.482  mm,	Z =  -434.597  mm,
	W =      .342 deg,	P =    26.770 deg,	R =      .969 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   545.383  mm,	Y = -1019.881  mm,	Z =  -434.597  mm,
	W =      .342 deg,	P =    26.770 deg,	R =      .969 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   706.017  mm,	Y =  -999.029  mm,	Z =  -449.444  mm,
	W =     -.249 deg,	P =   -10.841 deg,	R =      .871 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   528.018  mm,	Y =  -999.030  mm,	Z =  -449.447  mm,
	W =      .284 deg,	P =    23.384 deg,	R =      .932 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   528.156  mm,	Y = -1085.124  mm,	Z =  -449.364  mm,
	W =   -19.163 deg,	P =    22.472 deg,	R =    -6.706 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   705.944  mm,	Y = -1084.993  mm,	Z =  -449.575  mm,
	W =   -15.938 deg,	P =    -5.980 deg,	R =    -6.229 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   639.054  mm,	Y = -1040.910  mm,	Z =   -93.336  mm,
	W =      .687 deg,	P =    41.996 deg,	R =     1.166 deg
};
/END
