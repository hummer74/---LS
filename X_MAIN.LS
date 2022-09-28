/PROG  X_MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BASE MAIN";
PROG_SIZE	= 495;
CREATE		= DATE 22-01-21  TIME 12:25:14;
MODIFIED	= DATE 22-01-21  TIME 14:25:28;
FILE_NAME	= Z_MAIN;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 911;
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
   2:  !MAIN PROGRAM ;
   3:  !***** ;
   4:   ;
   5:  !INIT ;
   6:  LBL[1:INIT] ;
   7:  UTOOL_NUM=1 ;
   8:  UFRAME_NUM=0 ;
   9:   ;
  10:  !START ;
  11:  LBL[100:START] ;
  12:  CALL A_HOME_CHK    ;
  13:  JMP LBL[999] ;
  14:   ;
  15:   ;
  16:  !WORK ;
  17:  LBL[110:WORK] ;
  18:   ;
  19:   ;
  20:   ;
  21:   ;
  22:  !END ALL ;
  23:  LBL[999:END] ;
  24:   ;
/POS
/END
