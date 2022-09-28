/PROG  X_D_DANCE1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DANGER_DANCE";
PROG_SIZE	= 1345;
CREATE		= DATE 22-01-21  TIME 12:24:58;
MODIFIED	= DATE 22-01-21  TIME 12:37:12;
FILE_NAME	= A_HOME;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1621;
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
   1:  !program "DANCER" ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:J PR[1:HOME_00] 25% CNT100    ;
   5:J P[2:Max00] 100% CNT100    ;
   6:J P[4:MaxTable1 ] 100% CNT100    ;
   7:L P[3] 2000mm/sec CNT25    ;
   8:L P[5] 2000mm/sec CNT30    ;
   9:L P[6] 2000mm/sec CNT30    ;
  10:L P[7] 2000mm/sec CNT30    ;
  11:L P[9] 2000mm/sec CNT30    ;
  12:L P[10] 2000mm/sec CNT30    ;
  13:L P[11] 1000mm/sec CNT30    ;
  14:L P[12] 1000mm/sec CNT30    ;
  15:L P[13] 1000mm/sec CNT30    ;
  16:L P[1] 1000mm/sec CNT30    ;
  17:L P[13] 1000mm/sec CNT30    ;
  18:L P[1] 1000mm/sec CNT30    ;
  19:L P[13] 1000mm/sec CNT30    ;
  20:L P[12] 1000mm/sec CNT30    ;
  21:J PR[1:HOME_00] 35% CNT100    ;
  22:J P[2:Max00] 100% CNT100    ;
  23:J PR[1:HOME_00] 25% FINE    ;
  24:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   784.109  mm,	Y = -1302.778  mm,	Z =   -11.049  mm,
	W =     -.394 deg,	P =    49.467 deg,	R =     -.518 deg
};
P[2:"Max00"]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -20.000 deg,	J3=    40.000 deg,
	J4=     0.000 deg,	J5=   -90.000 deg,	J6=     0.000 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -850.561  mm,	Y = -1293.167  mm,	Z =   -11.049  mm,
	W =   -30.787 deg,	P =     0.000 deg,	R =   -30.871 deg
};
P[4:"MaxTable1 "]{
   GP1:
	UF : 0, UT : 1,	
	J1=  -109.784 deg,	J2=    30.057 deg,	J3=   -12.779 deg,
	J4=      .421 deg,	J5=    18.940 deg,	J6=     2.631 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =     1.425  mm,	Y = -1298.177  mm,	Z =   -11.049  mm,
	W =    31.895 deg,	P =     0.000 deg,	R =     -.336 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   401.418  mm,	Y = -1300.528  mm,	Z =   -11.049  mm,
	W =   -19.649 deg,	P =     0.000 deg,	R =   -39.513 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   604.415  mm,	Y = -1301.721  mm,	Z =   -11.049  mm,
	W =    31.779 deg,	P =     0.000 deg,	R =     -.336 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   704.413  mm,	Y = -1302.309  mm,	Z =   -11.049  mm,
	W =   -25.504 deg,	P =     0.000 deg,	R =     -.336 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   746.804  mm,	Y = -1302.558  mm,	Z =   -11.049  mm,
	W =   -53.746 deg,	P =   -31.138 deg,	R =    34.724 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   757.334  mm,	Y = -1302.558  mm,	Z =   -71.929  mm,
	W =     0.000 deg,	P =   -45.291 deg,	R =     -.336 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   766.855  mm,	Y = -1302.558  mm,	Z =   -11.049  mm,
	W =    55.078 deg,	P =   -29.746 deg,	R =   -35.879 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   775.994  mm,	Y = -1302.558  mm,	Z =   -69.049  mm,
	W =     0.000 deg,	P =   -45.291 deg,	R =     -.336 deg
};
/END
