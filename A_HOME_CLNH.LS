/PROG  A_HOME_CLNH
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CLEANER HI HOME";
PROG_SIZE	= 307;
CREATE		= DATE 21-04-22  TIME 17:01:32;
MODIFIED	= DATE 22-09-22  TIME 10:47:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 647;
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
   2:  !HOME CLEAN PROGRAM ;
   3:  !***** ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=1 ;
   6:  !START ;
   7:J PR[8:HOME_CLNH] 33% FINE    ;
   8:  CALL A_SOUNDS    ;
   9:  !END ;
  10:  END ;
/POS
/END
