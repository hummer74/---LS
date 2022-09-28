/PROG  _MOTHERSHIP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BASE";
PROG_SIZE	= 1280;
CREATE		= DATE 21-04-15  TIME 13:34:42;
MODIFIED	= DATE 21-04-19  TIME 13:58:58;
FILE_NAME	= MOTHERSH;
VERSION		= 0;
LINE_COUNT	= 49;
MEMORY_SIZE	= 1764;
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
   1:  !PROGRAM MOTHERSHIP ;
   2:  CALL A_HOME    ;
   3:  F[1019:table1 ready]=(OFF) ;
   4:  F[1015:table2 ready]=(OFF) ;
   5:  F[1022:table1 work]=(OFF) ;
   6:  F[1018:table2 work]=(OFF) ;
   7:   ;
   8:J P[1] 40% CNT100    ;
   9:  CALL A_HOME    ;
  10:   ;
  11:   ;
  12:   ;
  13:  LBL[1] ;
  14:  WAIT (F[1015:table2 ready] OR F[1019:table1 ready])    ;
  15:  IF (F[1019:table1 ready]),JMP LBL[2] ;
  16:  IF (F[1015:table2 ready]),JMP LBL[3] ;
  17:   ;
  18:  LBL[2] ;
  19:  WAIT DI[5:p1_accept]=OFF    ;
  20:  F[1019:table1 ready]=(OFF) ;
  21:  F[1022:table1 work]=(ON) ;
  22:   ;
  23:  !**TABLE 1** ;
  24:  CALL A_GO_NULL    ;
  25:  CALL A_HOME_0    ;
  26:  !**TABLE 1 END** ;
  27:  CALL X_CLEAN_0    ;
  28:  CALL A_HOME    ;
  29:  DO[10:table1 ring]=PULSE,1.0sec ;
  30:  DO[13:table2 ring]=PULSE,1.0sec ;
  31:  F[1022:table1 work]=(OFF) ;
  32:  JMP LBL[1] ;
  33:   ;
  34:   ;
  35:  LBL[3] ;
  36:  WAIT DI[7:p2_accept]=OFF    ;
  37:  F[1015:table2 ready]=(OFF) ;
  38:  F[1018:table2 work]=(ON) ;
  39:   ;
  40:  !**TABLE 2** ;
  41:  CALL DAN_X138_1    ;
  42:  CALL DAN_X138_1    ;
  43:  !**TABLE 2 END** ;
  44:  CALL X_CLEAN_1    ;
  45:  CALL A_HOME    ;
  46:  DO[10:table1 ring]=PULSE,1.0sec ;
  47:  DO[13:table2 ring]=PULSE,1.0sec ;
  48:  F[1018:table2 work]=(OFF) ;
  49:  JMP LBL[1] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   702.408  mm,	Y =     5.225  mm,	Z =   423.144  mm,
	W =     -.573 deg,	P =     7.587 deg,	R =      .875 deg
};
/END
