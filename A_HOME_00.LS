/PROG  A_HOME_00
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "HOME_00";
PROG_SIZE	= 303;
CREATE		= DATE 21-04-22  TIME 15:32:06;
MODIFIED	= DATE 22-09-22  TIME 10:31:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 643;
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
   2:  !HOME-00 PROGRAM ;
   3:  !***** ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=1 ;
   6:  !START ;
   7:J PR[1:HOME_00] 25% FINE    ;
   8:  CALL A_SOUNDS    ;
   9:  !END ;
  10:  END ;
/POS
/END
