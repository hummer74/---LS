/PROG  T_1718_99
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "T_1718";
PROG_SIZE	= 8437;
CREATE		= DATE 22-05-20  TIME 10:47:46;
MODIFIED	= DATE 22-09-23  TIME 15:06:56;
FILE_NAME	= T_1718_0;
VERSION		= 0;
LINE_COUNT	= 189;
MEMORY_SIZE	= 8849;
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
   5:   ;
   6:   ;
   7:  LBL[2:START] ;
   8:  CALL A_HOME_01    ;
   9:   ;
  10:   ;
  11:   ;
  12:  !WELD-001 ;
  13:  !WORK ;
  14:  GO[3:memoryCHANNEL]=10 ;
  15:  DO[56:OnLine]=ON ;
  16:J P[1] 33% CNT75    ;
  17:L P[2] 250mm/sec CNT75    ;
  18:L P[4] 250mm/sec FINE
    :  Weld Start[5,3]    ;
  19:  Weave Sine[2] ;
  20:L P[5] WELD_SPEED FINE
    :  Weld End[5,3]    ;
  21:  Weave End ;
  22:  WAIT (!DI[41:cycleON])    ;
  23:L P[3] 250mm/sec CNT75    ;
  24:J P[6] 33% CNT75    ;
  25:   ;
  26:L P[7] 350mm/sec CNT75    ;
  27:L P[8] 250mm/sec FINE
    :  Weld Start[5,3]    ;
  28:  Weave Sine[2] ;
  29:L P[9] WELD_SPEED FINE
    :  Weld End[5,3]    ;
  30:  Weave End ;
  31:  WAIT (!DI[41:cycleON])    ;
  32:L P[10] 250mm/sec CNT75    ;
  33:J P[11] 33% CNT75    ;
  34:   ;
  35:L P[12] 350mm/sec CNT75    ;
  36:L P[13] 250mm/sec FINE
    :  Weld Start[5,3]    ;
  37:  Weave Sine[2] ;
  38:L P[14] WELD_SPEED FINE
    :  Weld End[5,3]    ;
  39:  Weave End ;
  40:  WAIT (!DI[41:cycleON])    ;
  41:L P[15] 250mm/sec CNT75    ;
  42:J P[16] 33% CNT75    ;
  43:   ;
  44:L P[17] 350mm/sec CNT75    ;
  45:L P[18] 250mm/sec FINE
    :  Weld Start[5,3]    ;
  46:  Weave Sine[2] ;
  47:L P[19] WELD_SPEED FINE
    :  Weld End[5,3]    ;
  48:  Weave End ;
  49:  WAIT (!DI[41:cycleON])    ;
  50:L P[20] 250mm/sec CNT75    ;
  51:J P[21] 33% CNT75    ;
  52:   ;
  53:L P[22] 350mm/sec CNT75    ;
  54:L P[23] 250mm/sec FINE
    :  Weld Start[5,3]    ;
  55:  Weave Sine[2] ;
  56:L P[24] WELD_SPEED FINE
    :  Weld End[5,3]    ;
  57:  Weave End ;
  58:  WAIT (!DI[41:cycleON])    ;
  59:L P[25] 250mm/sec CNT75    ;
  60:J P[26] 33% CNT75    ;
  61:   ;
  62:L P[27] 350mm/sec CNT75    ;
  63:L P[28] 250mm/sec FINE
    :  Weld Start[5,3]    ;
  64:  Weave Sine[2] ;
  65:L P[29] WELD_SPEED FINE
    :  Weld End[5,3]    ;
  66:  Weave End ;
  67:  WAIT (!DI[41:cycleON])    ;
  68:L P[30] 250mm/sec CNT75    ;
  69:J P[31] 33% CNT75    ;
  70:   ;
  71:L P[32] 350mm/sec CNT75    ;
  72:L P[33] 250mm/sec FINE
    :  Weld Start[5,3]    ;
  73:  Weave Sine[2] ;
  74:L P[34] WELD_SPEED FINE
    :  Weld End[5,3]    ;
  75:  Weave End ;
  76:  WAIT (!DI[41:cycleON])    ;
  77:L P[35] 250mm/sec CNT75    ;
  78:J P[36] 33% CNT75    ;
  79:   ;
  80:L P[37] 350mm/sec CNT75    ;
  81:L P[38] 250mm/sec FINE
    :  Weld Start[5,3]    ;
  82:  Weave Sine[2] ;
  83:L P[39] WELD_SPEED FINE
    :  Weld End[5,3]    ;
  84:  Weave End ;
  85:  WAIT (!DI[41:cycleON])    ;
  86:L P[40] 250mm/sec CNT75    ;
  87:J P[41] 33% CNT75    ;
  88:   ;
  89:   ;
  90:   ;
  91:   ;
  92:   ;
  93:J P[42] 33% CNT75    ;
  94:   ;
  95:L P[43] 350mm/sec CNT75    ;
  96:L P[44] 250mm/sec FINE
    :  Weld Start[5,3]    ;
  97:  Weave Sine[2] ;
  98:L P[45] WELD_SPEED FINE
    :  Weld End[5,3]    ;
  99:  Weave End ;
 100:  WAIT (!DI[41:cycleON])    ;
 101:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
 102:  R[112:START-CNT]=R[112:START-CNT]+1    ;
 103:L P[46] 250mm/sec CNT75    ;
 104:J P[47] 33% CNT75    ;
 105:   ;
 106:L P[48] 350mm/sec CNT75    ;
 107:L P[49] 250mm/sec FINE
    :  Weld Start[5,3]    ;
 108:  Weave Sine[2] ;
 109:L P[50] WELD_SPEED FINE
    :  Weld End[5,3]    ;
 110:  Weave End ;
 111:  WAIT (!DI[41:cycleON])    ;
 112:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
 113:  R[112:START-CNT]=R[112:START-CNT]+1    ;
 114:L P[51] 250mm/sec CNT75    ;
 115:J P[52] 33% CNT75    ;
 116:   ;
 117:L P[53] 350mm/sec CNT75    ;
 118:L P[54] 250mm/sec FINE
    :  Weld Start[5,3]    ;
 119:  Weave Sine[2] ;
 120:L P[55] WELD_SPEED FINE
    :  Weld End[5,3]    ;
 121:  Weave End ;
 122:  WAIT (!DI[41:cycleON])    ;
 123:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
 124:  R[112:START-CNT]=R[112:START-CNT]+1    ;
 125:L P[56] 250mm/sec CNT75    ;
 126:J P[57] 33% CNT75    ;
 127:   ;
 128:L P[58] 350mm/sec CNT75    ;
 129:L P[59] 250mm/sec FINE
    :  Weld Start[5,3]    ;
 130:  Weave Sine[2] ;
 131:L P[60] WELD_SPEED FINE
    :  Weld End[5,3]    ;
 132:  Weave End ;
 133:  WAIT (!DI[41:cycleON])    ;
 134:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
 135:  R[112:START-CNT]=R[112:START-CNT]+1    ;
 136:L P[61] 250mm/sec CNT75    ;
 137:J P[62] 33% CNT75    ;
 138:   ;
 139:L P[63] 350mm/sec CNT75    ;
 140:L P[64] 250mm/sec FINE
    :  Weld Start[5,3]    ;
 141:  Weave Sine[2] ;
 142:L P[65] WELD_SPEED FINE
    :  Weld End[5,3]    ;
 143:  Weave End ;
 144:  WAIT (!DI[41:cycleON])    ;
 145:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
 146:  R[112:START-CNT]=R[112:START-CNT]+1    ;
 147:L P[66] 250mm/sec CNT75    ;
 148:J P[67] 33% CNT75    ;
 149:   ;
 150:L P[68] 350mm/sec CNT75    ;
 151:L P[69] 250mm/sec FINE
    :  Weld Start[5,3]    ;
 152:  Weave Sine[2] ;
 153:L P[70] WELD_SPEED FINE
    :  Weld End[5,3]    ;
 154:  Weave End ;
 155:  WAIT (!DI[41:cycleON])    ;
 156:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
 157:  R[112:START-CNT]=R[112:START-CNT]+1    ;
 158:L P[71] 250mm/sec CNT75    ;
 159:J P[72] 33% CNT75    ;
 160:   ;
 161:L P[73] 350mm/sec CNT75    ;
 162:L P[74] 250mm/sec FINE
    :  Weld Start[5,3]    ;
 163:  Weave Sine[2] ;
 164:L P[75] WELD_SPEED FINE
    :  Weld End[5,3]    ;
 165:  Weave End ;
 166:  WAIT (!DI[41:cycleON])    ;
 167:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
 168:  R[112:START-CNT]=R[112:START-CNT]+1    ;
 169:L P[76] 250mm/sec CNT75    ;
 170:J P[77] 33% CNT75    ;
 171:   ;
 172:L P[78] 350mm/sec CNT75    ;
 173:L P[79] 250mm/sec FINE
    :  Weld Start[5,3]    ;
 174:  Weave Sine[2] ;
 175:L P[80] WELD_SPEED FINE
    :  Weld End[5,3]    ;
 176:  Weave End ;
 177:  WAIT (!DI[41:cycleON])    ;
 178:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
 179:  R[112:START-CNT]=R[112:START-CNT]+1    ;
 180:L P[81] 250mm/sec CNT75    ;
 181:J P[82] 33% CNT75    ;
 182:  !END WELDING ;
 183:   ;
 184:   ;
 185:  LBL[4:END] ;
 186:  CALL A_HOME_01H    ;
 187:  CALL A_CLEAN    ;
 188:   ;
 189:  LBL[999:STOP] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   651.688  mm,	Y = -1503.304  mm,	Z =  -345.407  mm,
	W =     -.316 deg,	P =    45.631 deg,	R =     -.377 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   635.374  mm,	Y = -1509.427  mm,	Z =  -487.773  mm,
	W =     -.315 deg,	P =    45.631 deg,	R =     -.376 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   636.222  mm,	Y = -1187.191  mm,	Z =  -489.014  mm,
	W =     -.315 deg,	P =    45.631 deg,	R =     -.376 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   612.809  mm,	Y = -1511.368  mm,	Z =  -516.483  mm,
	W =     -.316 deg,	P =    45.631 deg,	R =     -.377 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   609.065  mm,	Y = -1181.621  mm,	Z =  -515.619  mm,
	W =     -.316 deg,	P =    45.631 deg,	R =     -.377 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   636.222  mm,	Y = -1187.191  mm,	Z =  -400.311  mm,
	W =     -.315 deg,	P =    45.631 deg,	R =     -.376 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   533.692  mm,	Y = -1187.191  mm,	Z =  -400.311  mm,
	W =     -.315 deg,	P =    45.631 deg,	R =     -.376 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   459.963  mm,	Y = -1180.856  mm,	Z =  -514.934  mm,
	W =     -.315 deg,	P =    45.631 deg,	R =     -.376 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   461.903  mm,	Y = -1511.488  mm,	Z =  -516.484  mm,
	W =     -.313 deg,	P =    45.632 deg,	R =     -.378 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   493.124  mm,	Y = -1511.402  mm,	Z =  -486.099  mm,
	W =     -.309 deg,	P =    45.632 deg,	R =     -.375 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   493.124  mm,	Y = -1511.402  mm,	Z =  -404.307  mm,
	W =     -.309 deg,	P =    45.632 deg,	R =     -.375 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   392.686  mm,	Y = -1511.399  mm,	Z =  -404.396  mm,
	W =     -.303 deg,	P =    45.635 deg,	R =     -.372 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   311.811  mm,	Y = -1513.065  mm,	Z =  -516.387  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   310.111  mm,	Y = -1182.095  mm,	Z =  -514.025  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   327.392  mm,	Y = -1182.096  mm,	Z =  -483.785  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   327.392  mm,	Y = -1182.096  mm,	Z =  -397.386  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   214.112  mm,	Y = -1182.095  mm,	Z =  -397.386  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   159.488  mm,	Y = -1182.729  mm,	Z =  -513.911  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   162.944  mm,	Y = -1514.163  mm,	Z =  -515.811  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   190.131  mm,	Y = -1514.163  mm,	Z =  -478.371  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   190.131  mm,	Y = -1514.163  mm,	Z =  -403.971  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    89.331  mm,	Y = -1514.163  mm,	Z =  -403.971  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    12.089  mm,	Y = -1515.313  mm,	Z =  -515.735  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     9.958  mm,	Y = -1184.688  mm,	Z =  -513.316  mm,
	W =     -.298 deg,	P =    45.637 deg,	R =     -.367 deg
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    27.846  mm,	Y = -1184.655  mm,	Z =  -485.987  mm,
	W =     -.293 deg,	P =    45.636 deg,	R =     -.364 deg
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    27.832  mm,	Y = -1184.630  mm,	Z =  -399.615  mm,
	W =     -.289 deg,	P =    45.637 deg,	R =     -.358 deg
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -64.811  mm,	Y = -1184.630  mm,	Z =  -399.616  mm,
	W =     -.289 deg,	P =    45.637 deg,	R =     -.358 deg
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -139.864  mm,	Y = -1184.630  mm,	Z =  -513.030  mm,
	W =     -.289 deg,	P =    45.637 deg,	R =     -.358 deg
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -137.207  mm,	Y = -1516.549  mm,	Z =  -514.253  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -112.726  mm,	Y = -1516.549  mm,	Z =  -472.493  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -112.726  mm,	Y = -1516.549  mm,	Z =  -403.373  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -216.406  mm,	Y = -1516.549  mm,	Z =  -403.374  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -287.831  mm,	Y = -1515.859  mm,	Z =  -515.214  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -290.252  mm,	Y = -1186.153  mm,	Z =  -512.794  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -268.652  mm,	Y = -1186.153  mm,	Z =  -485.435  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -268.652  mm,	Y = -1186.153  mm,	Z =  -396.635  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -365.132  mm,	Y = -1186.153  mm,	Z =  -396.635  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -439.685  mm,	Y = -1187.998  mm,	Z =  -513.332  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -437.265  mm,	Y = -1518.011  mm,	Z =  -515.751  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -418.488  mm,	Y = -1518.011  mm,	Z =  -494.439  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -418.488  mm,	Y = -1518.011  mm,	Z =  -318.179  mm,
	W =     -.284 deg,	P =    45.638 deg,	R =     -.350 deg
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   537.673  mm,	Y = -1518.011  mm,	Z =  -318.179  mm,
	W =     -.284 deg,	P =    45.637 deg,	R =  -178.183 deg
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   537.742  mm,	Y = -1517.868  mm,	Z =  -437.972  mm,
	W =     -.301 deg,	P =    45.640 deg,	R =  -178.130 deg
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   598.222  mm,	Y = -1510.800  mm,	Z =  -517.462  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.442 deg
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   595.774  mm,	Y = -1180.286  mm,	Z =  -515.119  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   571.487  mm,	Y = -1180.287  mm,	Z =  -477.103  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   571.487  mm,	Y = -1180.287  mm,	Z =  -402.221  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   381.887  mm,	Y = -1180.287  mm,	Z =  -402.221  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   445.584  mm,	Y = -1182.071  mm,	Z =  -515.434  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   447.908  mm,	Y = -1508.726  mm,	Z =  -515.723  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   420.432  mm,	Y = -1512.065  mm,	Z =  -490.781  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   420.432  mm,	Y = -1512.065  mm,	Z =  -404.379  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   236.593  mm,	Y = -1512.065  mm,	Z =  -404.379  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   298.446  mm,	Y = -1513.274  mm,	Z =  -516.104  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   295.585  mm,	Y = -1182.244  mm,	Z =  -514.089  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   269.012  mm,	Y = -1182.245  mm,	Z =  -481.448  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   269.012  mm,	Y = -1182.245  mm,	Z =  -398.791  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    74.612  mm,	Y = -1182.245  mm,	Z =  -398.791  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   145.704  mm,	Y = -1183.895  mm,	Z =  -514.106  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   148.513  mm,	Y = -1514.102  mm,	Z =  -515.142  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   119.060  mm,	Y = -1514.102  mm,	Z =  -482.886  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   119.060  mm,	Y = -1514.102  mm,	Z =  -401.094  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -69.580  mm,	Y = -1514.102  mm,	Z =  -401.094  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.441 deg
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -1.210  mm,	Y = -1515.369  mm,	Z =  -515.526  mm,
	W =     -.301 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -4.876  mm,	Y = -1184.050  mm,	Z =  -513.798  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -33.292  mm,	Y = -1184.050  mm,	Z =  -487.013  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -33.292  mm,	Y = -1184.050  mm,	Z =  -394.085  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -230.092  mm,	Y = -1184.050  mm,	Z =  -394.085  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -153.618  mm,	Y = -1184.855  mm,	Z =  -514.296  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -151.478  mm,	Y = -1515.867  mm,	Z =  -515.679  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -181.535  mm,	Y = -1515.867  mm,	Z =  -479.391  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -181.535  mm,	Y = -1515.867  mm,	Z =  -404.607  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -375.934  mm,	Y = -1515.867  mm,	Z =  -404.607  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -301.176  mm,	Y = -1516.673  mm,	Z =  -516.006  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.440 deg
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -303.696  mm,	Y = -1186.007  mm,	Z =  -514.279  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.439 deg
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -338.170  mm,	Y = -1186.007  mm,	Z =  -469.062  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.439 deg
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -338.170  mm,	Y = -1186.007  mm,	Z =  -394.662  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.439 deg
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -542.170  mm,	Y = -1186.007  mm,	Z =  -394.661  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.439 deg
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -453.389  mm,	Y = -1187.735  mm,	Z =  -514.795  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.439 deg
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -451.350  mm,	Y = -1518.459  mm,	Z =  -516.177  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.439 deg
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -482.919  mm,	Y = -1518.459  mm,	Z =  -477.008  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.439 deg
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -482.919  mm,	Y = -1518.459  mm,	Z =  -207.729  mm,
	W =     -.302 deg,	P =    45.637 deg,	R =   177.439 deg
};
/END
