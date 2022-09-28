/PROG  X_0000CLR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EMPTY_PROG";
PROG_SIZE	= 788;
CREATE		= DATE 22-01-21  TIME 12:27:18;
MODIFIED	= DATE 22-02-22  TIME 12:14:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 1124;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  CALL A_HOME_01    ;
   2:  PAUSE ;
   3:J P[1] 50% CNT50    ;
   4:J P[2] 30% CNT5    ;
   5:J P[3] 30% FINE
    :  Weld Start[1,1]    ;
   6:L P[4] WELD_SPEED FINE
    :  Weld End[1,1]    ;
   7:J P[1] 50% CNT100    ;
   8:  CALL A_HOME_01    ;
   9:   ;
  10:   ;
  11:   ;
/POS
P[1:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   480.793  mm,	Y = -1521.900  mm,	Z =  -364.142  mm,
	W =    -1.170 deg,	P =    63.928 deg,	R =    -1.306 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   440.566  mm,	Y = -1528.808  mm,	Z =  -511.200  mm,
	W =     -.987 deg,	P =    60.130 deg,	R =    -1.148 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   440.566  mm,	Y = -1528.808  mm,	Z =  -511.200  mm,
	W =     -.987 deg,	P =    60.130 deg,	R =    -1.148 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   440.566  mm,	Y = -1528.807  mm,	Z =  -468.863  mm,
	W =     -.987 deg,	P =    60.130 deg,	R =    -1.148 deg
};
/END
