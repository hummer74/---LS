/PROG  CD_820_03
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PODOSHVA";
PROG_SIZE	= 19811;
CREATE		= DATE 22-01-21  TIME 14:15:16;
MODIFIED	= DATE 22-02-02  TIME 11:06:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 608;
MEMORY_SIZE	= 20371;
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
  13:  !***** ;
  14:  !START ;
  15:  LBL[100:START] ;
  16:   ;
  17:  !***** ;
  18:  !HOME CHECK ;
  19:  IF (RO[8:HOME REF POS]),JMP LBL[110] ;
  20:  CALL A_HOME_CHK    ;
  21:  JMP LBL[999] ;
  22:   ;
  23:   ;
  24:   ;
  25:  !***** ;
  26:  !WORK ;
  27:  LBL[110:WORK] ;
  28:  CALL A_HOME_01H    ;
  29:  CALL A_SOUNDLL    ;
  30:  CALL A_BUTTON1    ;
  31:   ;
  32:   ;
  33:   ;
  34:  LBL[111:FAR-VERT] ;
  35:  !***** ;
  36:  ! FAR VERTICAL ;
  37:   ;
  38:  !***** ;
  39:  ! SET UP WELDER! ;
  40:  DO[56:OnLine]=ON ;
  41:  GO[3:memoryCHANNEL]=5 ;
  42:J P[1] 35% CNT30    ;
  43:J P[4] 35% CNT30    ;
  44:L P[2] 100mm/sec FINE
    :  Weld Start[1,20]    ;
  45:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  46:L P[3] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  47:  ! FREE WELDER! ;
  48:  Weave End ;
  49:  WAIT (!DI[41:cycleON])    ;
  50:L P[4] 100mm/sec CNT100    ;
  51:J P[5] 15% CNT30    ;
  52:   ;
  53:  !***** ;
  54:  ! SET UP WELDER! ;
  55:  DO[56:OnLine]=ON ;
  56:  GO[3:memoryCHANNEL]=5 ;
  57:L P[6] 250mm/sec FINE
    :  Weld Start[1,20]    ;
  58:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  59:L P[7] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  60:  ! FREE WELDER! ;
  61:  Weave End ;
  62:  WAIT (!DI[41:cycleON])    ;
  63:L P[5] 100mm/sec CNT100    ;
  64:J P[8] 15% CNT30    ;
  65:   ;
  66:  !***** ;
  67:  ! SET UP WELDER! ;
  68:  DO[56:OnLine]=ON ;
  69:  GO[3:memoryCHANNEL]=5 ;
  70:L P[9] 250mm/sec FINE
    :  Weld Start[1,20]    ;
  71:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  72:L P[10] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  73:  ! FREE WELDER! ;
  74:  Weave End ;
  75:  WAIT (!DI[41:cycleON])    ;
  76:L P[8] 100mm/sec CNT30    ;
  77:J P[11] 15% CNT30    ;
  78:   ;
  79:  !***** ;
  80:  ! SET UP WELDER! ;
  81:  DO[56:OnLine]=ON ;
  82:  GO[3:memoryCHANNEL]=5 ;
  83:L P[12] 250mm/sec FINE
    :  Weld Start[1,20]    ;
  84:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  85:L P[13] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  86:  ! FREE WELDER! ;
  87:  Weave End ;
  88:  WAIT (!DI[41:cycleON])    ;
  89:L P[11] 100mm/sec CNT100    ;
  90:J P[14] 15% CNT30    ;
  91:   ;
  92:  !***** ;
  93:  ! SET UP WELDER! ;
  94:  DO[56:OnLine]=ON ;
  95:  GO[3:memoryCHANNEL]=5 ;
  96:L P[15] 250mm/sec FINE
    :  Weld Start[1,20]    ;
  97:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  98:L P[16] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  99:  ! FREE WELDER! ;
 100:  Weave End ;
 101:  WAIT (!DI[41:cycleON])    ;
 102:L P[14] 100mm/sec CNT100    ;
 103:J P[17] 15% CNT30    ;
 104:   ;
 105:  !***** ;
 106:  ! SET UP WELDER! ;
 107:  DO[56:OnLine]=ON ;
 108:  GO[3:memoryCHANNEL]=5 ;
 109:L P[18] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 110:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 111:L P[19] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 112:  ! FREE WELDER! ;
 113:  Weave End ;
 114:  WAIT (!DI[41:cycleON])    ;
 115:L P[17] 100mm/sec CNT100    ;
 116:J P[20] 15% CNT100    ;
 117:   ;
 118:  !***** ;
 119:  ! SET UP WELDER! ;
 120:  DO[56:OnLine]=ON ;
 121:  GO[3:memoryCHANNEL]=5 ;
 122:L P[21] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 123:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 124:L P[22] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 125:  ! FREE WELDER! ;
 126:  Weave End ;
 127:  WAIT (!DI[41:cycleON])    ;
 128:L P[20] 100mm/sec CNT100    ;
 129:J P[23] 15% CNT30    ;
 130:   ;
 131:  !***** ;
 132:  ! SET UP WELDER! ;
 133:  DO[56:OnLine]=ON ;
 134:  GO[3:memoryCHANNEL]=5 ;
 135:L P[24] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 136:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 137:L P[25] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 138:  ! FREE WELDER! ;
 139:  Weave End ;
 140:  WAIT (!DI[41:cycleON])    ;
 141:L P[23] 100mm/sec CNT100    ;
 142:  CALL A_HOME_01H    ;
 143:  CALL A_CLEAN    ;
 144:  CALL A_HOME_01H    ;
 145:   ;
 146:   ;
 147:   ;
 148:   ;
 149:  LBL[112:VERT] ;
 150:  !***** ;
 151:  ! NEAR VERTICAL ;
 152:J P[26] 15% CNT30    ;
 153:   ;
 154:  !***** ;
 155:  ! SET UP WELDER! ;
 156:  DO[56:OnLine]=ON ;
 157:  GO[3:memoryCHANNEL]=5 ;
 158:L P[27] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 159:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 160:L P[28] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 161:  ! FREE WELDER! ;
 162:  Weave End ;
 163:  WAIT (!DI[41:cycleON])    ;
 164:L P[26] 100mm/sec CNT100    ;
 165:J P[50] 15% CNT30    ;
 166:   ;
 167:  !***** ;
 168:  ! SET UP WELDER! ;
 169:  DO[56:OnLine]=ON ;
 170:  GO[3:memoryCHANNEL]=5 ;
 171:L P[29] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 172:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 173:L P[30] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 174:  ! FREE WELDER! ;
 175:  Weave End ;
 176:  WAIT (!DI[41:cycleON])    ;
 177:L P[50] 100mm/sec CNT100    ;
 178:J P[31] 15% CNT30    ;
 179:   ;
 180:  !***** ;
 181:  ! SET UP WELDER! ;
 182:  DO[56:OnLine]=ON ;
 183:  GO[3:memoryCHANNEL]=5 ;
 184:L P[32] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 185:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 186:L P[33] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 187:  ! FREE WELDER! ;
 188:  Weave End ;
 189:  WAIT (!DI[41:cycleON])    ;
 190:L P[31] 100mm/sec CNT100    ;
 191:J P[34] 15% CNT30    ;
 192:   ;
 193:  !***** ;
 194:  ! SET UP WELDER! ;
 195:  DO[56:OnLine]=ON ;
 196:  GO[3:memoryCHANNEL]=5 ;
 197:L P[35] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 198:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 199:L P[36] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 200:  ! FREE WELDER! ;
 201:  Weave End ;
 202:  WAIT (!DI[41:cycleON])    ;
 203:L P[34] 100mm/sec CNT100    ;
 204:J P[37] 15% CNT30    ;
 205:   ;
 206:  !***** ;
 207:  ! SET UP WELDER! ;
 208:  DO[56:OnLine]=ON ;
 209:  GO[3:memoryCHANNEL]=5 ;
 210:L P[38] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 211:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 212:L P[39] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 213:  ! FREE WELDER! ;
 214:  Weave End ;
 215:  WAIT (!DI[41:cycleON])    ;
 216:L P[37] 100mm/sec CNT100    ;
 217:J P[40] 15% CNT30    ;
 218:   ;
 219:  !***** ;
 220:  ! SET UP WELDER! ;
 221:  DO[56:OnLine]=ON ;
 222:  GO[3:memoryCHANNEL]=5 ;
 223:L P[41] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 224:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 225:L P[42] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 226:  ! FREE WELDER! ;
 227:  Weave End ;
 228:  WAIT (!DI[41:cycleON])    ;
 229:L P[40] 100mm/sec CNT100    ;
 230:J P[43] 15% CNT30    ;
 231:   ;
 232:  !***** ;
 233:  ! SET UP WELDER! ;
 234:  DO[56:OnLine]=ON ;
 235:  GO[3:memoryCHANNEL]=5 ;
 236:L P[44] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 237:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 238:L P[45] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 239:  ! FREE WELDER! ;
 240:  Weave End ;
 241:  WAIT (!DI[41:cycleON])    ;
 242:L P[43] 100mm/sec CNT100    ;
 243:J P[46] 15% CNT30    ;
 244:   ;
 245:  !***** ;
 246:  ! SET UP WELDER! ;
 247:  DO[56:OnLine]=ON ;
 248:  GO[3:memoryCHANNEL]=5 ;
 249:L P[47] 250mm/sec FINE
    :  Weld Start[1,20]    ;
 250:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 251:L P[48] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 252:  ! FREE WELDER! ;
 253:  Weave End ;
 254:  WAIT (!DI[41:cycleON])    ;
 255:L P[46] 100mm/sec CNT100    ;
 256:  CALL A_HOME_01H    ;
 257:  CALL A_CLEAN    ;
 258:  CALL A_HOME_01H    ;
 259:   ;
 260:   ;
 261:   ;
 262:  LBL[113:HORIZ] ;
 263:  !***** ;
 264:  ! FAR HORIZONTAL1 ;
 265:J P[49] 15% CNT30    ;
 266:   ;
 267:  !***** ;
 268:  ! SET UP WELDER! ;
 269:  DO[56:OnLine]=ON ;
 270:  GO[3:memoryCHANNEL]=3 ;
 271:J P[51] 15% CNT30    ;
 272:L P[52] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 273:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 274:L P[53] WELD_SPEED CNT100    ;
 275:L P[56] WELD_SPEED CNT100    ;
 276:L P[54] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 277:  WAIT (!DI[41:cycleON])    ;
 278:L P[55] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 279:L P[54] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 280:  ! FREE WELDER! ;
 281:  Weave End ;
 282:  WAIT (!DI[41:cycleON])    ;
 283:L P[51] 100mm/sec CNT100    ;
 284:   ;
 285:   ;
 286:  !***** ;
 287:  ! NEAR HORIZONTAL1 ;
 288:J P[58] 15% CNT30    ;
 289:  !***** ;
 290:  ! SET UP WELDER! ;
 291:  DO[56:OnLine]=ON ;
 292:  GO[3:memoryCHANNEL]=3 ;
 293:L P[59] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 294:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 295:L P[60] WELD_SPEED CNT100    ;
 296:L P[61] WELD_SPEED CNT100    ;
 297:L P[62] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 298:  WAIT (!DI[41:cycleON])    ;
 299:L P[63] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 300:L P[62] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 301:  ! FREE WELDER! ;
 302:  Weave End ;
 303:  WAIT (!DI[41:cycleON])    ;
 304:L P[58] 100mm/sec CNT100    ;
 305:   ;
 306:   ;
 307:  !***** ;
 308:  ! FAR HORIZONTAL2 ;
 309:J P[64] 15% CNT30    ;
 310:  !***** ;
 311:  ! SET UP WELDER! ;
 312:  DO[56:OnLine]=ON ;
 313:  GO[3:memoryCHANNEL]=3 ;
 314:L P[65] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 315:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 316:L P[66] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 317:  WAIT (!DI[41:cycleON])    ;
 318:L P[67] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 319:L P[66] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 320:  ! FREE WELDER! ;
 321:  Weave End ;
 322:  WAIT (!DI[41:cycleON])    ;
 323:L P[64] 100mm/sec CNT100    ;
 324:   ;
 325:   ;
 326:  !***** ;
 327:  ! NEAR HORIZONTAL2 ;
 328:J P[57] 15% CNT30    ;
 329:  !***** ;
 330:  ! SET UP WELDER! ;
 331:  DO[56:OnLine]=ON ;
 332:  GO[3:memoryCHANNEL]=3 ;
 333:L P[68] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 334:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 335:L P[69] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 336:  WAIT (!DI[41:cycleON])    ;
 337:L P[70] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 338:L P[69] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 339:  ! FREE WELDER! ;
 340:  Weave End ;
 341:  WAIT (!DI[41:cycleON])    ;
 342:L P[57] 100mm/sec CNT100    ;
 343:   ;
 344:   ;
 345:  !***** ;
 346:  ! FAR HORIZONTAL3 ;
 347:J P[71] 15% CNT30    ;
 348:  !***** ;
 349:  ! SET UP WELDER! ;
 350:  DO[56:OnLine]=ON ;
 351:  GO[3:memoryCHANNEL]=3 ;
 352:L P[72] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 353:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 354:L P[73] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 355:  WAIT (!DI[41:cycleON])    ;
 356:L P[74] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 357:L P[73] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 358:  ! FREE WELDER! ;
 359:  Weave End ;
 360:  WAIT (!DI[41:cycleON])    ;
 361:L P[71] 100mm/sec CNT100    ;
 362:   ;
 363:   ;
 364:  !***** ;
 365:  ! NEAR HORIZONTAL3 ;
 366:J P[75] 15% CNT30    ;
 367:  !***** ;
 368:  ! SET UP WELDER! ;
 369:  DO[56:OnLine]=ON ;
 370:  GO[3:memoryCHANNEL]=3 ;
 371:L P[76] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 372:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 373:L P[77] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 374:  WAIT (!DI[41:cycleON])    ;
 375:L P[78] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 376:L P[77] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 377:  ! FREE WELDER! ;
 378:  Weave End ;
 379:  WAIT (!DI[41:cycleON])    ;
 380:L P[75] 100mm/sec CNT100    ;
 381:   ;
 382:   ;
 383:  !***** ;
 384:  ! HORIZONTAL4 ;
 385:J P[79] 15% CNT30    ;
 386:  !***** ;
 387:  ! SET UP WELDER! ;
 388:  DO[56:OnLine]=ON ;
 389:  GO[3:memoryCHANNEL]=3 ;
 390:L P[80] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 391:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 392:L P[81] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 393:  WAIT (!DI[41:cycleON])    ;
 394:L P[83] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 395:L P[81] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 396:  Weave End ;
 397:  WAIT (!DI[41:cycleON])    ;
 398:L P[79] 100mm/sec CNT30    ;
 399:   ;
 400:   ;
 401:  !***** ;
 402:  ! HORIZONTAL5 ;
 403:J P[87] 15% CNT30    ;
 404:  !***** ;
 405:  ! SET UP WELDER! ;
 406:  DO[56:OnLine]=ON ;
 407:  GO[3:memoryCHANNEL]=3 ;
 408:L P[85] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 409:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 410:L P[84] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 411:  WAIT (!DI[41:cycleON])    ;
 412:L P[86] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 413:L P[84] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 414:  ! FREE WELDER! ;
 415:  Weave End ;
 416:  WAIT (!DI[41:cycleON])    ;
 417:L P[87] 100mm/sec CNT100    ;
 418:   ;
 419:   ;
 420:  !***** ;
 421:  ! HORIZONTAL6 ;
 422:J P[88] 15% CNT30    ;
 423:  !***** ;
 424:  ! SET UP WELDER! ;
 425:  DO[56:OnLine]=ON ;
 426:  GO[3:memoryCHANNEL]=3 ;
 427:L P[89] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 428:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 429:L P[90] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 430:  WAIT (!DI[41:cycleON])    ;
 431:L P[91] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 432:L P[90] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 433:  ! FREE WELDER! ;
 434:  Weave End ;
 435:  WAIT (!DI[41:cycleON])    ;
 436:J P[95] 15% CNT30    ;
 437:   ;
 438:   ;
 439:  !***** ;
 440:  ! HORIZONTAL7 ;
 441:J P[95] 15% CNT30    ;
 442:  !***** ;
 443:  ! SET UP WELDER! ;
 444:  DO[56:OnLine]=ON ;
 445:  GO[3:memoryCHANNEL]=3 ;
 446:L P[92] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 447:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 448:L P[93] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 449:  WAIT (!DI[41:cycleON])    ;
 450:L P[94] 250mm/sec FINE
    :  Weld Start[1,18]    ;
 451:L P[93] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 452:  ! FREE WELDER! ;
 453:  Weave End ;
 454:  WAIT (!DI[41:cycleON])    ;
 455:J P[95] 15% CNT30    ;
 456:   ;
 457:   ;
 458:  !***** ;
 459:  ! HORIZONTAL8 ;
 460:J P[82] 15% CNT30    ;
 461:  !***** ;
 462:  ! SET UP WELDER! ;
 463:  DO[56:OnLine]=ON ;
 464:  GO[3:memoryCHANNEL]=3 ;
 465:L P[96] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 466:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 467:L P[97] WELD_SPEED CNT100    ;
 468:L P[98] WELD_SPEED CNT100    ;
 469:L P[99] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 470:  WAIT (!DI[41:cycleON])    ;
 471:  Weave End ;
 472:  WAIT (!DI[41:cycleON])    ;
 473:L P[100] 100mm/sec CNT100    ;
 474:J P[82] 15% CNT30    ;
 475:   ;
 476:   ;
 477:  !***** ;
 478:  ! HORIZONTAL9 ;
 479:J P[82] 15% CNT30    ;
 480:  !***** ;
 481:  ! SET UP WELDER! ;
 482:  DO[56:OnLine]=ON ;
 483:  GO[3:memoryCHANNEL]=3 ;
 484:L P[101] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 485:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 486:L P[102] WELD_SPEED CNT100    ;
 487:L P[103] WELD_SPEED CNT100    ;
 488:L P[104] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 489:  Weave End ;
 490:  WAIT (!DI[41:cycleON])    ;
 491:L P[105] 100mm/sec CNT100    ;
 492:J P[82] 15% CNT30    ;
 493:   ;
 494:   ;
 495:  !***** ;
 496:  ! HORIZONTAL10 ;
 497:J P[106] 15% CNT30    ;
 498:  !***** ;
 499:  ! SET UP WELDER! ;
 500:  DO[56:OnLine]=ON ;
 501:  GO[3:memoryCHANNEL]=3 ;
 502:L P[107] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 503:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 504:L P[108] WELD_SPEED CNT100    ;
 505:L P[109] WELD_SPEED CNT100    ;
 506:L P[110] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 507:  Weave End ;
 508:  WAIT (!DI[41:cycleON])    ;
 509:L P[111] 100mm/sec CNT100    ;
 510:J P[106] 15% CNT30    ;
 511:   ;
 512:   ;
 513:  !***** ;
 514:  ! HORIZONTAL11 ;
 515:J P[106] 15% CNT30    ;
 516:  !***** ;
 517:  ! SET UP WELDER! ;
 518:  DO[56:OnLine]=ON ;
 519:  GO[3:memoryCHANNEL]=3 ;
 520:L P[112] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 521:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 522:L P[113] WELD_SPEED CNT100    ;
 523:L P[114] WELD_SPEED CNT100    ;
 524:L P[115] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 525:  Weave End ;
 526:  WAIT (!DI[41:cycleON])    ;
 527:L P[116] 100mm/sec CNT100    ;
 528:J P[106] 15% CNT30    ;
 529:   ;
 530:   ;
 531:  !***** ;
 532:  ! HORIZONTAL12 ;
 533:J P[119] 15% CNT30    ;
 534:  !***** ;
 535:  ! SET UP WELDER! ;
 536:  DO[56:OnLine]=ON ;
 537:  GO[3:memoryCHANNEL]=3 ;
 538:L P[117] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 539:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 540:L P[118] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 541:  Weave End ;
 542:  WAIT (!DI[41:cycleON])    ;
 543:L P[120] 100mm/sec CNT100    ;
 544:J P[119] 15% CNT30    ;
 545:   ;
 546:   ;
 547:  !***** ;
 548:  ! HORIZONTAL13 ;
 549:J P[119] 15% CNT30    ;
 550:  !***** ;
 551:  ! SET UP WELDER! ;
 552:  DO[56:OnLine]=ON ;
 553:  GO[3:memoryCHANNEL]=3 ;
 554:L P[121] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 555:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 556:L P[122] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 557:  Weave End ;
 558:  WAIT (!DI[41:cycleON])    ;
 559:L P[123] 100mm/sec CNT100    ;
 560:J P[119] 15% CNT30    ;
 561:   ;
 562:   ;
 563:  !***** ;
 564:  ! HORIZONTAL13 ;
 565:J P[124] 15% CNT30    ;
 566:  !***** ;
 567:  ! SET UP WELDER! ;
 568:  DO[56:OnLine]=ON ;
 569:  GO[3:memoryCHANNEL]=3 ;
 570:L P[125] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 571:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 572:L P[126] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 573:  Weave End ;
 574:  WAIT (!DI[41:cycleON])    ;
 575:L P[127] 100mm/sec CNT100    ;
 576:J P[124] 15% CNT30    ;
 577:   ;
 578:   ;
 579:  !***** ;
 580:  ! HORIZONTAL14 ;
 581:J P[124] 15% CNT30    ;
 582:  !***** ;
 583:  ! SET UP WELDER! ;
 584:  DO[56:OnLine]=ON ;
 585:  GO[3:memoryCHANNEL]=3 ;
 586:L P[128] 100mm/sec FINE
    :  Weld Start[1,18]    ;
 587:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 588:L P[129] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 589:  Weave End ;
 590:  WAIT (!DI[41:cycleON])    ;
 591:L P[130] 100mm/sec CNT100    ;
 592:J P[124] 15% CNT30    ;
 593:   ;
 594:   ;
 595:   ;
 596:  LBL[200:LOOP] ;
 597:  !***** ;
 598:  !LOOP ;
 599:  CALL A_HOME_01H    ;
 600:  CALL A_CLEAN    ;
 601:  CALL A_SOUNDLL    ;
 602:  CALL A_HOME_00    ;
 603:  CALL A_SOUNDS    ;
 604:  JMP LBL[110] ;
 605:   ;
 606:  !***** ;
 607:  !END ALL ;
 608:  LBL[999:END] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -414.923  mm,	Y = -1222.741  mm,	Z =  -241.401  mm,
	W =     0.000 deg,	P =    45.224 deg,	R =     -.141 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -455.341  mm,	Y = -1378.715  mm,	Z =  -510.674  mm,
	W =     -.105 deg,	P =    45.333 deg,	R =  -132.781 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -455.341  mm,	Y = -1379.492  mm,	Z =  -403.343  mm,
	W =     -.106 deg,	P =    45.334 deg,	R =  -132.782 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -484.139  mm,	Y = -1410.395  mm,	Z =  -356.306  mm,
	W =     -.105 deg,	P =    45.333 deg,	R =  -132.781 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -484.082  mm,	Y = -1115.165  mm,	Z =  -356.385  mm,
	W =     -.109 deg,	P =    45.338 deg,	R =  -132.781 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -457.873  mm,	Y = -1091.550  mm,	Z =  -506.067  mm,
	W =     -.109 deg,	P =    45.338 deg,	R =  -132.781 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -457.873  mm,	Y = -1091.550  mm,	Z =  -401.233  mm,
	W =     -.109 deg,	P =    45.338 deg,	R =  -132.781 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -471.504  mm,	Y = -1335.487  mm,	Z =  -356.369  mm,
	W =     -.108 deg,	P =    45.332 deg,	R =   133.471 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -456.816  mm,	Y = -1354.782  mm,	Z =  -515.061  mm,
	W =     -.108 deg,	P =    45.332 deg,	R =   133.470 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -456.816  mm,	Y = -1355.934  mm,	Z =  -398.995  mm,
	W =     -.108 deg,	P =    45.332 deg,	R =   133.470 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -471.504  mm,	Y = -1049.884  mm,	Z =  -356.369  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   133.471 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -457.629  mm,	Y = -1068.603  mm,	Z =  -513.940  mm,
	W =     -.111 deg,	P =    45.333 deg,	R =   133.468 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -457.918  mm,	Y = -1068.603  mm,	Z =  -401.905  mm,
	W =     -.111 deg,	P =    45.333 deg,	R =   133.468 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -333.264  mm,	Y = -1067.164  mm,	Z =  -356.369  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =    48.474 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.592  mm,	Y = -1094.926  mm,	Z =  -512.177  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =    48.475 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.147  mm,	Y = -1095.537  mm,	Z =  -418.481  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =    48.475 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -333.264  mm,	Y = -1318.684  mm,	Z =  -356.369  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =    48.474 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.516  mm,	Y = -1325.883  mm,	Z =  -512.930  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =    48.475 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.516  mm,	Y = -1325.883  mm,	Z =  -418.177  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =    48.475 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -352.273  mm,	Y = -1125.724  mm,	Z =  -356.369  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.726 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -369.644  mm,	Y = -1121.248  mm,	Z =  -509.301  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.725 deg
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -370.033  mm,	Y = -1121.081  mm,	Z =  -418.581  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.725 deg
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -352.274  mm,	Y = -1362.846  mm,	Z =  -356.369  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.726 deg
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.103  mm,	Y = -1349.347  mm,	Z =  -507.285  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.725 deg
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.103  mm,	Y = -1349.347  mm,	Z =  -423.765  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.725 deg
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   473.327  mm,	Y = -1408.926  mm,	Z =  -356.370  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.726 deg
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   451.538  mm,	Y = -1370.846  mm,	Z =  -515.624  mm,
	W =     -.104 deg,	P =    45.336 deg,	R =   -48.721 deg
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   451.364  mm,	Y = -1372.039  mm,	Z =  -402.639  mm,
	W =     -.103 deg,	P =    45.336 deg,	R =   -48.725 deg
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   450.866  mm,	Y = -1083.401  mm,	Z =  -513.086  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.725 deg
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   450.255  mm,	Y = -1083.401  mm,	Z =  -399.399  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.725 deg
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   473.326  mm,	Y = -1317.243  mm,	Z =  -356.369  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =    51.931 deg
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   452.540  mm,	Y = -1347.508  mm,	Z =  -514.101  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =    51.931 deg
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   452.318  mm,	Y = -1347.286  mm,	Z =  -400.514  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =    51.931 deg
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   473.326  mm,	Y = -1033.080  mm,	Z =  -356.369  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =    51.931 deg
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   449.710  mm,	Y = -1057.559  mm,	Z =  -513.909  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =    51.931 deg
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   449.710  mm,	Y = -1059.227  mm,	Z =  -402.749  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =    51.931 deg
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   329.326  mm,	Y = -1372.920  mm,	Z =  -356.369  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =  -132.029 deg
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   363.094  mm,	Y = -1343.453  mm,	Z =  -515.541  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =  -132.029 deg
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   364.028  mm,	Y = -1342.030  mm,	Z =  -424.013  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =  -132.029 deg
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   329.326  mm,	Y = -1114.777  mm,	Z =  -356.369  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =  -132.029 deg
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.233  mm,	Y = -1114.775  mm,	Z =  -512.950  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =  -135.529 deg
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.234  mm,	Y = -1114.776  mm,	Z =  -416.179  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =  -135.529 deg
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   329.327  mm,	Y = -1313.500  mm,	Z =  -356.369  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =   129.331 deg
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.240  mm,	Y = -1318.109  mm,	Z =  -513.480  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =   129.331 deg
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.240  mm,	Y = -1318.109  mm,	Z =  -418.150  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =   129.331 deg
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   329.327  mm,	Y = -1054.778  mm,	Z =  -356.369  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =   129.331 deg
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   359.568  mm,	Y = -1088.185  mm,	Z =  -515.060  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =   129.331 deg
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   359.568  mm,	Y = -1088.185  mm,	Z =  -420.594  mm,
	W =     -.106 deg,	P =    45.332 deg,	R =   129.331 deg
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -507.245  mm,	Y = -1231.880  mm,	Z =  -241.200  mm,
	W =      .497 deg,	P =    43.818 deg,	R =  -179.899 deg
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   473.327  mm,	Y = -1113.243  mm,	Z =  -356.370  mm,
	W =     -.108 deg,	P =    45.333 deg,	R =   -48.726 deg
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -555.340  mm,	Y = -1176.337  mm,	Z =  -285.485  mm,
	W =      .497 deg,	P =    43.817 deg,	R =   -92.203 deg
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -555.340  mm,	Y = -1089.937  mm,	Z =  -512.527  mm,
	W =      .497 deg,	P =    43.817 deg,	R =   -92.203 deg
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -458.301  mm,	Y = -1090.437  mm,	Z =  -512.527  mm,
	W =      .497 deg,	P =    43.818 deg,	R =  -134.755 deg
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -457.190  mm,	Y = -1353.479  mm,	Z =  -512.527  mm,
	W =      .497 deg,	P =    43.818 deg,	R =   136.469 deg
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -552.999  mm,	Y = -1355.942  mm,	Z =  -512.528  mm,
	W =      .496 deg,	P =    43.818 deg,	R =   110.296 deg
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -458.300  mm,	Y = -1112.516  mm,	Z =  -512.527  mm,
	W =      .536 deg,	P =    44.272 deg,	R =   165.439 deg
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   553.774  mm,	Y = -1025.125  mm,	Z =  -285.911  mm,
	W =      .495 deg,	P =    43.820 deg,	R =    50.354 deg
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   538.963  mm,	Y = -1176.337  mm,	Z =  -285.869  mm,
	W =      .497 deg,	P =    43.817 deg,	R =   -92.203 deg
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   549.619  mm,	Y = -1080.725  mm,	Z =  -514.926  mm,
	W =      .497 deg,	P =    43.817 deg,	R =   -49.975 deg
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   450.797  mm,	Y = -1082.225  mm,	Z =  -514.927  mm,
	W =      .497 deg,	P =    43.817 deg,	R =   -49.975 deg
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   447.889  mm,	Y = -1106.178  mm,	Z =  -514.926  mm,
	W =      .497 deg,	P =    43.816 deg,	R =    12.269 deg
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   451.084  mm,	Y = -1349.180  mm,	Z =  -516.750  mm,
	W =      .497 deg,	P =    43.816 deg,	R =    51.711 deg
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   552.460  mm,	Y = -1349.180  mm,	Z =  -516.750  mm,
	W =      .497 deg,	P =    43.816 deg,	R =    62.643 deg
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -550.224  mm,	Y = -1470.090  mm,	Z =  -285.911  mm,
	W =      .495 deg,	P =    43.821 deg,	R =   -92.205 deg
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -552.613  mm,	Y = -1378.764  mm,	Z =  -512.570  mm,
	W =      .495 deg,	P =    43.820 deg,	R =  -125.052 deg
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -457.632  mm,	Y = -1379.855  mm,	Z =  -513.421  mm,
	W =      .494 deg,	P =    43.803 deg,	R =  -129.485 deg
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -453.265  mm,	Y = -1637.405  mm,	Z =  -513.921  mm,
	W =      .493 deg,	P =    43.822 deg,	R =  -130.456 deg
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   549.312  mm,	Y = -1059.094  mm,	Z =  -514.010  mm,
	W =      .495 deg,	P =    43.820 deg,	R =    50.354 deg
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   449.088  mm,	Y = -1059.094  mm,	Z =  -514.010  mm,
	W =      .495 deg,	P =    43.820 deg,	R =    46.402 deg
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   447.936  mm,	Y =  -802.497  mm,	Z =  -512.570  mm,
	W =      .495 deg,	P =    43.820 deg,	R =    46.402 deg
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -577.159  mm,	Y = -1025.134  mm,	Z =  -285.933  mm,
	W =      .498 deg,	P =    43.818 deg,	R =   128.872 deg
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -559.495  mm,	Y = -1066.607  mm,	Z =  -510.381  mm,
	W =      .498 deg,	P =    43.818 deg,	R =   128.872 deg
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -460.729  mm,	Y = -1066.583  mm,	Z =  -510.412  mm,
	W =      .497 deg,	P =    43.817 deg,	R =   128.871 deg
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -460.730  mm,	Y =  -808.256  mm,	Z =  -509.635  mm,
	W =      .497 deg,	P =    43.817 deg,	R =   128.871 deg
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   568.173  mm,	Y = -1442.739  mm,	Z =  -285.963  mm,
	W =      .494 deg,	P =    43.817 deg,	R =   -50.984 deg
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   553.917  mm,	Y = -1372.146  mm,	Z =  -512.406  mm,
	W =      .497 deg,	P =    43.821 deg,	R =   -50.983 deg
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   453.114  mm,	Y = -1373.587  mm,	Z =  -512.406  mm,
	W =      .497 deg,	P =    43.821 deg,	R =   -50.983 deg
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   455.953  mm,	Y = -1631.013  mm,	Z =  -512.497  mm,
	W =      .499 deg,	P =    43.826 deg,	R =   -50.980 deg
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -327.553  mm,	Y = -1442.729  mm,	Z =  -286.035  mm,
	W =      .494 deg,	P =    43.821 deg,	R =   -50.984 deg
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -363.553  mm,	Y = -1429.061  mm,	Z =  -507.314  mm,
	W =      .494 deg,	P =    43.821 deg,	R =   -34.589 deg
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -363.553  mm,	Y = -1351.306  mm,	Z =  -507.314  mm,
	W =      .494 deg,	P =    43.820 deg,	R =   -40.148 deg
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     7.908  mm,	Y = -1398.638  mm,	Z =  -172.196  mm,
	W =      .317 deg,	P =    43.731 deg,	R =   -88.294 deg
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -276.757  mm,	Y = -1351.305  mm,	Z =  -509.331  mm,
	W =      .494 deg,	P =    43.817 deg,	R =   -60.452 deg
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.070  mm,	Y = -1344.671  mm,	Z =  -508.235  mm,
	W =      .490 deg,	P =    43.818 deg,	R =  -136.129 deg
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   266.179  mm,	Y = -1344.672  mm,	Z =  -508.235  mm,
	W =      .490 deg,	P =    43.817 deg,	R =  -133.033 deg
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   361.598  mm,	Y = -1420.075  mm,	Z =  -512.582  mm,
	W =      .485 deg,	P =    43.819 deg,	R =  -136.129 deg
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   263.679  mm,	Y = -1420.075  mm,	Z =  -178.502  mm,
	W =      .485 deg,	P =    43.820 deg,	R =  -136.129 deg
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -283.566  mm,	Y = -1016.863  mm,	Z =  -178.514  mm,
	W =      .483 deg,	P =    43.817 deg,	R =    49.192 deg
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -274.889  mm,	Y = -1094.038  mm,	Z =  -508.273  mm,
	W =      .483 deg,	P =    43.817 deg,	R =    49.192 deg
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.491  mm,	Y = -1094.038  mm,	Z =  -508.273  mm,
	W =      .483 deg,	P =    43.817 deg,	R =    49.192 deg
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -369.214  mm,	Y = -1017.433  mm,	Z =  -508.273  mm,
	W =      .483 deg,	P =    43.817 deg,	R =    49.192 deg
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   268.453  mm,	Y = -1090.547  mm,	Z =  -509.137  mm,
	W =     2.407 deg,	P =    43.667 deg,	R =   135.196 deg
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   360.615  mm,	Y = -1090.547  mm,	Z =  -509.136  mm,
	W =     2.407 deg,	P =    43.667 deg,	R =   135.197 deg
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   360.616  mm,	Y = -1013.215  mm,	Z =  -509.136  mm,
	W =     2.407 deg,	P =    43.667 deg,	R =   135.197 deg
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     7.874  mm,	Y =  -604.241  mm,	Z =  -182.274  mm,
	W =     2.404 deg,	P =    43.666 deg,	R =   -96.213 deg
};
P[96]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -274.523  mm,	Y = -1324.717  mm,	Z =  -508.403  mm,
	W =      .317 deg,	P =    43.730 deg,	R =    48.614 deg
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -367.262  mm,	Y = -1324.718  mm,	Z =  -508.403  mm,
	W =      .317 deg,	P =    43.730 deg,	R =    48.614 deg
};
P[98]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -367.261  mm,	Y = -1304.558  mm,	Z =  -508.403  mm,
	W =      .317 deg,	P =    43.730 deg,	R =     1.728 deg
};
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -367.262  mm,	Y = -1226.513  mm,	Z =  -508.979  mm,
	W =      .317 deg,	P =    43.730 deg,	R =   -56.376 deg
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -93.373  mm,	Y = -1311.474  mm,	Z =  -496.019  mm,
	W =      .317 deg,	P =    43.730 deg,	R =   -56.376 deg
};
P[101]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   268.508  mm,	Y = -1317.970  mm,	Z =  -509.689  mm,
	W =      .316 deg,	P =    43.734 deg,	R =   145.561 deg
};
P[102]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.382  mm,	Y = -1317.970  mm,	Z =  -509.689  mm,
	W =      .316 deg,	P =    43.734 deg,	R =   145.561 deg
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.383  mm,	Y = -1300.404  mm,	Z =  -509.689  mm,
	W =      .122 deg,	P =    43.636 deg,	R =  -178.134 deg
};
P[104]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.384  mm,	Y = -1219.766  mm,	Z =  -510.265  mm,
	W =     -.394 deg,	P =    44.478 deg,	R =  -123.532 deg
};
P[105]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   105.504  mm,	Y = -1327.768  mm,	Z =  -498.745  mm,
	W =     -.394 deg,	P =    44.478 deg,	R =  -123.532 deg
};
P[106]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     7.998  mm,	Y =  -908.040  mm,	Z =  -172.252  mm,
	W =      .317 deg,	P =    43.735 deg,	R =   -88.289 deg
};
P[107]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -271.362  mm,	Y = -1119.049  mm,	Z =  -510.651  mm,
	W =      .317 deg,	P =    43.735 deg,	R =   -42.296 deg
};
P[108]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.420  mm,	Y = -1119.049  mm,	Z =  -510.651  mm,
	W =      .317 deg,	P =    43.735 deg,	R =   -42.296 deg
};
P[109]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.420  mm,	Y = -1134.599  mm,	Z =  -510.651  mm,
	W =      .317 deg,	P =    43.734 deg,	R =      .321 deg
};
P[110]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.420  mm,	Y = -1218.116  mm,	Z =  -510.651  mm,
	W =      .317 deg,	P =    43.733 deg,	R =    48.273 deg
};
P[111]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -150.528  mm,	Y = -1151.787  mm,	Z =  -483.422  mm,
	W =      .318 deg,	P =    43.724 deg,	R =    48.286 deg
};
P[112]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   269.210  mm,	Y = -1114.920  mm,	Z =  -510.275  mm,
	W =      .318 deg,	P =    43.737 deg,	R =  -136.486 deg
};
P[113]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   363.389  mm,	Y = -1114.920  mm,	Z =  -510.275  mm,
	W =      .318 deg,	P =    43.737 deg,	R =  -136.486 deg
};
P[114]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   362.525  mm,	Y = -1126.728  mm,	Z =  -510.275  mm,
	W =      .586 deg,	P =    43.938 deg,	R =  -179.393 deg
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   362.525  mm,	Y = -1216.581  mm,	Z =  -510.275  mm,
	W =      .586 deg,	P =    43.936 deg,	R =   117.038 deg
};
P[116]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   145.461  mm,	Y = -1127.090  mm,	Z =  -461.134  mm,
	W =      .563 deg,	P =    43.884 deg,	R =   117.039 deg
};
P[117]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -424.974  mm,	Y = -1639.086  mm,	Z =  -512.940  mm,
	W =      .317 deg,	P =    43.735 deg,	R =   -32.453 deg
};
P[118]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -428.142  mm,	Y = -1417.815  mm,	Z =  -510.924  mm,
	W =      .318 deg,	P =    43.735 deg,	R =   -32.453 deg
};
P[119]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     7.998  mm,	Y = -1585.798  mm,	Z =  -172.252  mm,
	W =      .317 deg,	P =    43.735 deg,	R =   -88.289 deg
};
P[120]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -359.022  mm,	Y = -1544.534  mm,	Z =  -447.564  mm,
	W =      .318 deg,	P =    43.735 deg,	R =   -32.453 deg
};
P[121]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   424.928  mm,	Y = -1630.132  mm,	Z =  -513.181  mm,
	W =      .314 deg,	P =    43.737 deg,	R =  -136.392 deg
};
P[122]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   423.928  mm,	Y = -1397.917  mm,	Z =  -513.181  mm,
	W =      .314 deg,	P =    43.737 deg,	R =  -136.392 deg
};
P[123]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   364.408  mm,	Y = -1541.918  mm,	Z =  -454.141  mm,
	W =      .314 deg,	P =    43.737 deg,	R =  -136.392 deg
};
P[124]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     8.096  mm,	Y =  -816.808  mm,	Z =  -172.333  mm,
	W =      .318 deg,	P =    43.740 deg,	R =    87.107 deg
};
P[125]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -430.816  mm,	Y =  -812.332  mm,	Z =  -512.173  mm,
	W =      .318 deg,	P =    43.739 deg,	R =    44.987 deg
};
P[126]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -430.260  mm,	Y = -1038.232  mm,	Z =  -512.173  mm,
	W =      .318 deg,	P =    43.739 deg,	R =    44.987 deg
};
P[127]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -336.666  mm,	Y =  -882.625  mm,	Z =  -492.597  mm,
	W =      .320 deg,	P =    43.731 deg,	R =    45.001 deg
};
P[128]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   420.342  mm,	Y =  -805.908  mm,	Z =  -512.755  mm,
	W =      .396 deg,	P =    43.793 deg,	R =   131.534 deg
};
P[129]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   420.342  mm,	Y = -1036.407  mm,	Z =  -511.890  mm,
	W =      .396 deg,	P =    43.793 deg,	R =   131.534 deg
};
P[130]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   348.342  mm,	Y =  -909.685  mm,	Z =  -495.091  mm,
	W =      .396 deg,	P =    43.793 deg,	R =   131.534 deg
};
/END
