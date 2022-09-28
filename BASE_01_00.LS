/PROG  BASE_01_00
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PODOSHVA";
PROG_SIZE	= 1233;
CREATE		= DATE 22-01-21  TIME 14:15:16;
MODIFIED	= DATE 22-02-07  TIME 11:34:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 71;
MEMORY_SIZE	= 1757;
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
   1:  !***** ;
   2:  !PODOSHVA PROGRAM ;
   3:  !***** ;
   4:   ;
   5:  !***** ;
   6:  !INIT ;
   7:  LBL[1:INIT] ;
   8:  UTOOL_NUM=1 ;
   9:  UFRAME_NUM=0 ;
  10:   ;
  11:   ;
  12:   ;
  13:   ;
  14:   ;
  15:  !***** ;
  16:  !START ;
  17:  LBL[100:START] ;
  18:  !***** ;
  19:  !HOME CHECK ;
  20:  IF (RO[8:HOME REF POS]),JMP LBL[110] ;
  21:  CALL A_SOUNDL    ;
  22:  CALL A_HOME_CHK    ;
  23:  CALL A_SOUNDS    ;
  24:  F[1022:table1 work]=(OFF) ;
  25:  F[1018:table2 work]=(OFF) ;
  26:  F[1019:table1 ready]=(ON) ;
  27:  F[1015:table2 ready]=(ON) ;
  28:   ;
  29:   ;
  30:  !***** ;
  31:  !SELECT TABLE ;
  32:  LBL[110:SELECT] ;
  33:  CALL A_SOUNDLL    ;
  34:  F[1022:table1 work]=(OFF) ;
  35:  F[1018:table2 work]=(OFF) ;
  36:  F[1019:table1 ready]=(ON) ;
  37:  F[1015:table2 ready]=(ON) ;
  38:  WAIT (DI[5:p1_accept]=ON OR DI[7:p2_accept]=ON)    ;
  39:  IF DI[5:p1_accept]=ON,JMP LBL[111] ;
  40:  IF DI[7:p2_accept]=ON,JMP LBL[112] ;
  41:   ;
  42:   ;
  43:  !***** ;
  44:  !TABLE-1 SELECTED ;
  45:  LBL[111:TABLE_1] ;
  46:  F[1022:table1 work]=(ON) ;
  47:  F[1019:table1 ready]=(OFF) ;
  48:  CALL BASE_01_01    ;
  49:  JMP LBL[900] ;
  50:   ;
  51:   ;
  52:  !***** ;
  53:  !TABLE-1 SELECTED ;
  54:  LBL[112:TABLE_2] ;
  55:  F[1022:table1 work]=(ON) ;
  56:  F[1019:table1 ready]=(OFF) ;
  57:  CALL BASE_01_02    ;
  58:  JMP LBL[900] ;
  59:   ;
  60:   ;
  61:  !***** ;
  62:  !LOOP ;
  63:  LBL[900:LOOP] ;
  64:  JMP LBL[100] ;
  65:   ;
  66:   ;
  67:  !***** ;
  68:  !END ALL ;
  69:  LBL[999:END] ;
  70:  !END ALL ;
  71:  !***** ;
/POS
/END
