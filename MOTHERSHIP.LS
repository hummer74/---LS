/PROG  MOTHERSHIP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BASE";
PROG_SIZE	= 1240;
CREATE		= DATE 15-07-21  TIME 23:18:30;
MODIFIED	= DATE 15-12-18  TIME 18:23:26;
FILE_NAME	= MOTHERSH;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 1728;
PROTECT		= READ;
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
   2:  CALL HOME    ;
   3:  F[1019:table1 ready]=(OFF) ;
   4:  F[1015:table2 ready]=(OFF) ;
   5:  F[1022:table1 work]=(OFF) ;
   6:  F[1018:table2 work]=(OFF) ;
   7:   ;
   8:J P[1] 40% CNT100    ;
   9:  CALL HOME    ;
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
  24:  CALL A11_1    ;
  25:  CALL A11_2    ;
  26:  !**TABLE 1 END** ;
  27:  CALL CLEAN    ;
  28:  CALL HOME    ;
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
  41:  CALL A11_3    ;
  42:  CALL A11_4    ;
  43:  !**TABLE 2 END** ;
  44:  CALL HOME    ;
  45:  DO[10:table1 ring]=PULSE,1.0sec ;
  46:  DO[13:table2 ring]=PULSE,1.0sec ;
  47:  F[1018:table2 work]=(OFF) ;
  48:  JMP LBL[1] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1026.151  mm,	Y =   -48.811  mm,	Z =   171.214  mm,
	W =      .267 deg,	P =    15.000 deg,	R =    -2.689 deg
};
/END
