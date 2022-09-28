/PROG  BGACCEPT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BACKGROUNG LOGIC";
PROG_SIZE	= 945;
CREATE		= DATE 14-03-29  TIME 13:01:24;
MODIFIED	= DATE 14-04-10  TIME 14:02:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 1265;
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
   1:  !ACCEPT ;
   2:  IF (DI[5:p1_accept]),F[1019:table1 ready]=(ON) ;
   3:  IF (DI[7:p2_accept]),F[1015:table2 ready]=(ON) ;
   4:  IF (!DI[6:p1_hold] OR !DI[2:t1curtain]),F[1019:table1 ready]=(OFF) ;
   5:  IF (!DI[4:t2curtain] OR !DI[8:p2_hold]),F[1015:table2 ready]=(OFF) ;
   6:   ;
   7:  !FLASH ;
   8:  IF ((($FAST_CLOCK) MOD 500)<250),F[1011:FLASH]=(ON) ;
   9:  IF ((($FAST_CLOCK) MOD 500)>250),F[1011:FLASH]=(OFF) ;
  10:   ;
  11:  !ERROR STATUS ;
  12:  IF ($ERSEVERITY=0),F[1013:no error]=(ON) ;
  13:  IF ($ERSEVERITY<>0),F[1013:no error]=(OFF) ;
  14:  DO[11:table2 red]=(!F[1013:no error]) ;
  15:  DO[8:table1 red]=(!F[1013:no error]) ;
  16:   ;
  17:  !GREEN LIGHT ;
  18:  IF (F[1019:table1 ready]),DO[9:table1 green]=(ON) ;
  19:  IF (F[1015:table2 ready]),DO[12:table2 green]=(ON) ;
  20:  IF (!F[1019:table1 ready] AND !F[1022:table1 work]),DO[9:table1 green]=(OFF) ;
  21:  IF (F[1022:table1 work]),DO[9:table1 green]=(F[1011:FLASH]) ;
  22:  IF (!F[1015:table2 ready] AND !F[1018:table2 work]),DO[12:table2 green]=(OFF) ;
  23:  IF (F[1018:table2 work]),DO[12:table2 green]=(F[1011:FLASH]) ;
  24:   ;
  25:  !WELD COUNT ;
  26:  IF (DO[49:start] AND !F[1010:weld count started]),R[199:weld start time]=($FAST_CLOCK) ;
  27:  IF (DO[49:start]),F[1010:weld count started]=(ON) ;
  28:  IF (!DO[49:start] AND F[1010:weld count started]),R[200:weld count]=(R[200:weld count]+$FAST_CLOCK-R[199:weld start time]) ;
  29:  IF (!DO[49:start]),F[1010:weld count started]=(OFF) ;
/POS
/END
