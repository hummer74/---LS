/PROG  Z_DANGER_DANCE_OLD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DANGER_DANCE";
PROG_SIZE	= 1544;
CREATE		= DATE 21-12-10  TIME 14:28:22;
MODIFIED	= DATE 21-12-10  TIME 14:28:22;
FILE_NAME	= A_HOME;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1816;
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
   1:  !program "HOME" ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:J P[1] 25% CNT100    ;
   5:J P[13] 100% CNT50    ;
   6:J P[14] 100% CNT50    ;
   7:J P[15] 100% CNT50    ;
   8:J P[16] 100% CNT50    ;
   9:J P[17] 100% CNT100    ;
  10:J P[3] 100% CNT100    ;
  11:J P[2:Max00] 100% CNT100    ;
  12:J P[5] 100% CNT100    ;
  13:J P[4:MaxTable1 ] 100% CNT100    ;
  14:J P[6] 100% CNT100    ;
  15:L P[10] 360deg/sec CNT50    ;
  16:L P[11] 360deg/sec CNT50    ;
  17:L P[12] 360deg/sec CNT50    ;
  18:J P[3] 100% CNT100    ;
  19:J P[3] 100% CNT100    ;
  20:J P[9] 100% CNT100    ;
  21:J P[8:MaxTable2 ] 100% CNT100    ;
  22:J P[7] 100% CNT100    ;
  23:J P[2:Max00] 100% CNT100    ;
  24:J P[1] 20% FINE    ;
  25:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   -66.554 deg,	J3=     6.850 deg,
	J4=     -.657 deg,	J5=   -58.200 deg,	J6=      .001 deg
};
P[2:"Max00"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    -1.080 deg,	J2=   -20.843 deg,	J3=    38.469 deg,
	J4=    -1.234 deg,	J5=   -89.830 deg,	J6=      .502 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,	
	J1=    -2.030 deg,	J2=   -27.412 deg,	J3=    -5.134 deg,
	J4=   178.705 deg,	J5=    97.234 deg,	J6=    -1.045 deg
};
P[4:"MaxTable1 "]{
   GP1:
	UF : 0, UT : 1,	
	J1=  -109.784 deg,	J2=    30.057 deg,	J3=   -12.779 deg,
	J4=      .421 deg,	J5=    18.940 deg,	J6=     2.631 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,	
	J1=  -130.212 deg,	J2=   -51.713 deg,	J3=   -26.916 deg,
	J4=    -1.449 deg,	J5=    60.299 deg,	J6=     2.317 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   604.686  mm,	Y = -1285.559  mm,	Z =    23.892  mm,
	W =     7.208 deg,	P =    81.121 deg,	R =   -56.953 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   648.554  mm,	Y =  1263.996  mm,	Z =    23.892  mm,
	W =     7.208 deg,	P =    81.121 deg,	R =    70.694 deg
};
P[8:"MaxTable2 "]{
   GP1:
	UF : 0, UT : 1,	
	J1=   110.280 deg,	J2=    30.216 deg,	J3=   -12.734 deg,
	J4=    -3.435 deg,	J5=     6.503 deg,	J6=     4.077 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -672.983  mm,	Y =   790.660  mm,	Z =   473.216  mm,
	W =    -3.254 deg,	P =   -78.348 deg,	R =   132.421 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   604.771  mm,	Y = -1285.511  mm,	Z =    23.809  mm,
	W =   141.626 deg,	P =    81.125 deg,	R =   -56.932 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   604.771  mm,	Y = -1285.511  mm,	Z =    23.809  mm,
	W =     5.562 deg,	P =    -8.820 deg,	R =   160.252 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   604.771  mm,	Y = -1285.511  mm,	Z =    23.809  mm,
	W =     1.237 deg,	P =    10.343 deg,	R =    19.530 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .473 deg,	J2=   -48.157 deg,	J3=    21.638 deg,
	J4=     -.078 deg,	J5=   -74.109 deg,	J6=      .822 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,	
	J1=     1.553 deg,	J2=   -13.635 deg,	J3=     7.015 deg,
	J4=     2.872 deg,	J5=  -134.461 deg,	J6=   185.384 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,	
	J1=    45.593 deg,	J2=   -75.888 deg,	J3=    13.671 deg,
	J4=    88.335 deg,	J5=   -79.420 deg,	J6=   189.982 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,	
	J1=    39.371 deg,	J2=   -30.004 deg,	J3=   -13.667 deg,
	J4=    80.103 deg,	J5=  -128.353 deg,	J6=   159.445 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,	
	J1=    29.108 deg,	J2=   -26.977 deg,	J3=   -33.551 deg,
	J4=   129.620 deg,	J5=  -132.255 deg,	J6=   268.605 deg
};
/END
