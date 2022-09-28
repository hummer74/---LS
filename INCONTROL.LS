/PROG  INCONTROL	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1015;
CREATE		= DATE 17-07-03  TIME 12:46:14;
MODIFIED	= DATE 17-07-04  TIME 14:23:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1399;
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

MPAS ;
MPAS_NUM_PASSES        : 0;
MPAS_LAST_PASS         : 0;
MPAS_CURRENT_PASS      : 0;
MPAS_STATUS_PASS       : 0;
/MN
   1:  !R[1] - zaderzgka v sekundax ;
   2:   ;
   3:  R[15]=3    ;
   4:   ;
   5:  WAIT (15)    ;
   6:  IF (DI[5:p1_accept]) THEN ;
   7:   ;
   8:  LBL[2] ;
   9:  DO[15]=ON ;
  10:  TIMER[1]=STOP ;
  11:  TIMER[1]=RESET ;
  12:   ;
  13:  ENDIF ;
  14:   ;
  15:  IF (!DI[5:p1_accept] AND DO[15]) THEN ;
  16:   ;
  17:  TIMER[1]=START ;
  18:  LBL[1] ;
  19:   ;
  20:  IF (DI[5:p1_accept]),JMP LBL[2] ;
  21:   ;
  22:  R[16]=TIMER[1]    ;
  23:  IF R[16]<R[15],JMP LBL[1] ;
  24:   ;
  25:  DO[15]=OFF ;
  26:  TIMER[1]=STOP ;
  27:  TIMER[1]=RESET ;
  28:   ;
  29:  ENDIF ;
  30:   ;
/POS
/END
