/PROG  DPTEST_01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EMPTY_PROG";
PROG_SIZE	= 1096;
CREATE		= DATE 22-01-21  TIME 12:27:18;
MODIFIED	= DATE 22-03-31  TIME 12:17:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1376;
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
   1:  CALL A_HOME_00    ;
   2:  CALL A_BUTTON1    ;
   3:J P[1] 50% CNT50    ;
   4:   ;
   5:  ! ;
   6:  ! SET UP WELDER! ;
   7:  DO[56:OnLine]=ON ;
   8:  GO[3:memoryCHANNEL]=7 ;
   9:   ;
  10:L P[2] 300mm/sec CNT5    ;
  11:L P[3] 10mm/sec FINE
    :  Weld Start[5,6]    ;
  12:  Weave Sine[2.0Hz,2.5mm,0.100s,0.100s] ;
  13:  //Weave L[0.3Hz,1.0mm,0.100s,0.100s,90.0deg] ;
  14:  //Weave Figure 8[2.0Hz,2.0mm,0.250s,0.250s] ;
  15:  //Weave Circle[0.8Hz,3.0mm,0.100s,0.100s] ;
  16:L P[4] WELD_SPEED FINE
    :  Weld End[5,6]    ;
  17:  Weave End ;
  18:  ! ;
  19:  ! FREE WELDER! ;
  20:  WAIT (!DI[41:cycleON])    ;
  21:   ;
  22:J P[1] 50% CNT100    ;
  23:  CALL A_BUTTON1    ;
  24:  CALL A_HOME_00    ;
  25:   ;
  26:   ;
  27:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   508.030  mm,	Y = -1422.969  mm,	Z =  -292.842  mm,
	W =     2.551 deg,	P =    60.594 deg,	R =     2.048 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   387.450  mm,	Y = -1345.744  mm,	Z =  -441.949  mm,
	W =      .472 deg,	P =    44.850 deg,	R =      .244 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   347.843  mm,	Y = -1345.691  mm,	Z =  -453.575  mm,
	W =     7.619 deg,	P =    88.602 deg,	R =     7.318 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   351.465  mm,	Y = -1345.691  mm,	Z =  -376.101  mm,
	W =     7.619 deg,	P =    88.602 deg,	R =     7.319 deg
};
/END
