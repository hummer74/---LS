/PROG  DI5ONN	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 947;
CREATE		= DATE 17-07-03  TIME 17:54:10;
MODIFIED	= DATE 17-07-05  TIME 10:31:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1331;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  ARC Welding Equipment : 1,*,*,*,*;

MPAS ;
MPAS_NUM_PASSES        : 0;
MPAS_LAST_PASS         : 0;
MPAS_CURRENT_PASS      : 0;
MPAS_STATUS_PASS       : 0;
/MN
   1:  LBL[1] ;
   2:   ;
   3:  R[15]=.1    ;
   4:  DO[15]=ON ;
   5:   ;
   6:  TIMER[1]=STOP ;
   7:  TIMER[1]=RESET ;
   8:   ;
   9:  IF DI[5:p1_accept]=ON,JMP LBL[1] ;
  10:   ;
  11:  TIMER[1]=START ;
  12:  LBL[2] ;
  13:  R[16]=TIMER[1]    ;
  14:   ;
  15:  IF DI[5:p1_accept]=ON,JMP LBL[1] ;
  16:   ;
  17:  IF R[16]<R[15],JMP LBL[2] ;
  18:   ;
  19:  DO[15]=OFF ;
  20:   ;
  21:   ;
  22:   ;
  23:   ;
  24:   ;
  25:   ;
  26:   ;
  27:   ;
  28:   ;
  29:   ;
  30:   ;
/POS
/END
