/PROG  T_1718_00
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "T_1718";
PROG_SIZE	= 785;
CREATE		= DATE 22-05-11  TIME 15:13:40;
MODIFIED	= DATE 22-08-01  TIME 14:08:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 42;
MEMORY_SIZE	= 1297;
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
   1:   ;
   2:  LBL[1:INIT] ;
   3:  UTOOL_NUM=1 ;
   4:  UFRAME_NUM=0 ;
   5:  R[111:GAS-CNT]=0    ;
   6:   ;
   7:   ;
   8:   ;
   9:  LBL[2:START] ;
  10:  CALL A_HOME_01    ;
  11:  !WAIT BUTTON ;
  12:  CALL A_BUTTON1    ;
  13:  CALL T_1718_99    ;
  14:   ;
  15:   ;
  16:   ;
  17:  !CYCLE WIRE COUNTER ;
  18:  LBL[3:WIRE CNT] ;
  19:  R[110:WIRE-CNT]=R[110:WIRE-CNT]+1    ;
  20:  IF R[110:WIRE-CNT]<=16,JMP LBL[5] ;
  21:  !WIRE CHANGE ;
  22:  LBL[4:CHANGE WIRE] ;
  23:  CALL A_SOUNDLLL    ;
  24:  CALL A_SOUNDLLL    ;
  25:  CALL A_WIRE_CNG    ;
  26:  R[110:WIRE-CNT]=0    ;
  27:  JMP LBL[2] ;
  28:   ;
  29:   ;
  30:  LBL[5:CLEAN] ;
  31:  CALL A_CLEAN    ;
  32:  JMP LBL[2] ;
  33:   ;
  34:   ;
  35:   ;
  36:   ;
  37:   ;
  38:   ;
  39:   ;
  40:   ;
  41:   ;
  42:  LBL[999:END] ;
/POS
/END
