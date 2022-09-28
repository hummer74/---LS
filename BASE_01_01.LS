/PROG  BASE_01_01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PODOSHVA-01";
PROG_SIZE	= 20187;
CREATE		= DATE 22-01-21  TIME 14:15:16;
MODIFIED	= DATE 22-02-07  TIME 11:34:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 641;
MEMORY_SIZE	= 20751;
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
   2:  !PODOSHVA-01 PROGRAM ;
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
  18:  F[1022:table1 work]=(ON) ;
  19:  F[1019:table1 ready]=(OFF) ;
  20:   ;
  21:  !***** ;
  22:  !HOME CHECK ;
  23:  IF (RO[8:HOME REF POS]),JMP LBL[110] ;
  24:  CALL A_SOUNDL    ;
  25:  CALL A_HOME_CHK    ;
  26:  CALL A_SOUNDLL    ;
  27:  JMP LBL[999] ;
  28:   ;
  29:   ;
  30:   ;
  31:   ;
  32:   ;
  33:  !***** ;
  34:  !WORK ;
  35:  LBL[110:WORK] ;
  36:  CALL A_HOME_01H    ;
  37:  CALL A_SOUNDLL    ;
  38:  CALL A_BUTTON1    ;
  39:   ;
  40:   ;
  41:   ;
  42:   ;
  43:   ;
  44:  LBL[111:FAR-VERT] ;
  45:  !***** ;
  46:  ! FAR VERTICAL ;
  47:   ;
  48:  !***** ;
  49:  ! FIRST APROACH ;
  50:J P[1] 30% CNT25    ;
  51:   ;
  52:  !***** ;
  53:  ! SET UP WELDER! ;
  54:  DO[56:OnLine]=ON ;
  55:  GO[3:memoryCHANNEL]=5 ;
  56:J P[4] 30% CNT25    ;
  57:L P[2] 500mm/sec FINE
    :  Weld Start[1,20]    ;
  58:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  59:L P[3] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  60:  ! FREE WELDER! ;
  61:  Weave End ;
  62:  WAIT (!DI[41:cycleON])    ;
  63:L P[4] 500mm/sec CNT25    ;
  64:J P[5] 30% CNT25    ;
  65:   ;
  66:  !***** ;
  67:  ! SET UP WELDER! ;
  68:  DO[56:OnLine]=ON ;
  69:  GO[3:memoryCHANNEL]=5 ;
  70:L P[6] 500mm/sec FINE
    :  Weld Start[1,20]    ;
  71:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  72:L P[7] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  73:  ! FREE WELDER! ;
  74:  Weave End ;
  75:  WAIT (!DI[41:cycleON])    ;
  76:L P[5] 500mm/sec CNT25    ;
  77:J P[8] 30% CNT25    ;
  78:   ;
  79:  !***** ;
  80:  ! SET UP WELDER! ;
  81:  DO[56:OnLine]=ON ;
  82:  GO[3:memoryCHANNEL]=5 ;
  83:L P[9] 500mm/sec FINE
    :  Weld Start[1,20]    ;
  84:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  85:L P[10] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  86:  ! FREE WELDER! ;
  87:  Weave End ;
  88:  WAIT (!DI[41:cycleON])    ;
  89:L P[8] 500mm/sec CNT25    ;
  90:J P[11] 30% CNT25    ;
  91:   ;
  92:  !***** ;
  93:  ! SET UP WELDER! ;
  94:  DO[56:OnLine]=ON ;
  95:  GO[3:memoryCHANNEL]=5 ;
  96:L P[12] 500mm/sec FINE
    :  Weld Start[1,20]    ;
  97:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  98:L P[13] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  99:  ! FREE WELDER! ;
 100:  Weave End ;
 101:  WAIT (!DI[41:cycleON])    ;
 102:L P[11] 500mm/sec CNT25    ;
 103:J P[14] 30% CNT25    ;
 104:   ;
 105:  !***** ;
 106:  ! SET UP WELDER! ;
 107:  DO[56:OnLine]=ON ;
 108:  GO[3:memoryCHANNEL]=5 ;
 109:L P[15] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 110:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 111:L P[16] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 112:  ! FREE WELDER! ;
 113:  Weave End ;
 114:  WAIT (!DI[41:cycleON])    ;
 115:L P[14] 500mm/sec CNT25    ;
 116:J P[17] 30% CNT25    ;
 117:   ;
 118:  !***** ;
 119:  ! SET UP WELDER! ;
 120:  DO[56:OnLine]=ON ;
 121:  GO[3:memoryCHANNEL]=5 ;
 122:L P[18] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 123:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 124:L P[19] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 125:  ! FREE WELDER! ;
 126:  Weave End ;
 127:  WAIT (!DI[41:cycleON])    ;
 128:L P[17] 500mm/sec CNT25    ;
 129:J P[20] 30% CNT25    ;
 130:   ;
 131:  !***** ;
 132:  ! SET UP WELDER! ;
 133:  DO[56:OnLine]=ON ;
 134:  GO[3:memoryCHANNEL]=5 ;
 135:L P[21] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 136:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 137:L P[22] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 138:  ! FREE WELDER! ;
 139:  Weave End ;
 140:  WAIT (!DI[41:cycleON])    ;
 141:L P[20] 500mm/sec CNT25    ;
 142:J P[23] 30% CNT25    ;
 143:   ;
 144:  !***** ;
 145:  ! SET UP WELDER! ;
 146:  DO[56:OnLine]=ON ;
 147:  GO[3:memoryCHANNEL]=5 ;
 148:L P[24] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 149:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 150:L P[25] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 151:  ! FREE WELDER! ;
 152:  Weave End ;
 153:  WAIT (!DI[41:cycleON])    ;
 154:L P[23] 500mm/sec CNT25    ;
 155:  CALL A_HOME_01H    ;
 156:  CALL A_SOUNDLL    ;
 157:  WAIT   3.00(sec) ;
 158:  CALL A_CLEAN    ;
 159:  CALL A_HOME_01H    ;
 160:   ;
 161:   ;
 162:   ;
 163:   ;
 164:   ;
 165:  LBL[112:NEAR-VERT] ;
 166:  !***** ;
 167:  ! NEAR VERTICAL ;
 168:J P[26] 30% CNT25    ;
 169:   ;
 170:  !***** ;
 171:  ! SET UP WELDER! ;
 172:  DO[56:OnLine]=ON ;
 173:  GO[3:memoryCHANNEL]=5 ;
 174:L P[27] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 175:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 176:L P[28] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 177:  ! FREE WELDER! ;
 178:  Weave End ;
 179:  WAIT (!DI[41:cycleON])    ;
 180:L P[26] 500mm/sec CNT25    ;
 181:J P[50] 30% CNT25    ;
 182:   ;
 183:  !***** ;
 184:  ! SET UP WELDER! ;
 185:  DO[56:OnLine]=ON ;
 186:  GO[3:memoryCHANNEL]=5 ;
 187:L P[29] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 188:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 189:L P[30] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 190:  ! FREE WELDER! ;
 191:  Weave End ;
 192:  WAIT (!DI[41:cycleON])    ;
 193:L P[50] 500mm/sec CNT25    ;
 194:J P[31] 30% CNT25    ;
 195:   ;
 196:  !***** ;
 197:  ! SET UP WELDER! ;
 198:  DO[56:OnLine]=ON ;
 199:  GO[3:memoryCHANNEL]=5 ;
 200:L P[32] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 201:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 202:L P[33] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 203:  ! FREE WELDER! ;
 204:  Weave End ;
 205:  WAIT (!DI[41:cycleON])    ;
 206:L P[31] 500mm/sec CNT25    ;
 207:J P[34] 30% CNT25    ;
 208:   ;
 209:  !***** ;
 210:  ! SET UP WELDER! ;
 211:  DO[56:OnLine]=ON ;
 212:  GO[3:memoryCHANNEL]=5 ;
 213:L P[35] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 214:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 215:L P[36] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 216:  ! FREE WELDER! ;
 217:  Weave End ;
 218:  WAIT (!DI[41:cycleON])    ;
 219:L P[34] 500mm/sec CNT25    ;
 220:J P[37] 30% CNT25    ;
 221:   ;
 222:  !***** ;
 223:  ! SET UP WELDER! ;
 224:  DO[56:OnLine]=ON ;
 225:  GO[3:memoryCHANNEL]=5 ;
 226:L P[38] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 227:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 228:L P[39] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 229:  ! FREE WELDER! ;
 230:  Weave End ;
 231:  WAIT (!DI[41:cycleON])    ;
 232:L P[37] 500mm/sec CNT25    ;
 233:J P[40] 30% CNT25    ;
 234:   ;
 235:  !***** ;
 236:  ! SET UP WELDER! ;
 237:  DO[56:OnLine]=ON ;
 238:  GO[3:memoryCHANNEL]=5 ;
 239:L P[41] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 240:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 241:L P[42] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 242:  ! FREE WELDER! ;
 243:  Weave End ;
 244:  WAIT (!DI[41:cycleON])    ;
 245:L P[40] 500mm/sec CNT25    ;
 246:J P[43] 30% CNT25    ;
 247:   ;
 248:  !***** ;
 249:  ! SET UP WELDER! ;
 250:  DO[56:OnLine]=ON ;
 251:  GO[3:memoryCHANNEL]=5 ;
 252:L P[44] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 253:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 254:L P[45] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 255:  ! FREE WELDER! ;
 256:  Weave End ;
 257:  WAIT (!DI[41:cycleON])    ;
 258:L P[43] 500mm/sec CNT25    ;
 259:J P[46] 30% CNT25    ;
 260:   ;
 261:  !***** ;
 262:  ! SET UP WELDER! ;
 263:  DO[56:OnLine]=ON ;
 264:  GO[3:memoryCHANNEL]=5 ;
 265:L P[47] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 266:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 267:L P[48] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 268:  ! FREE WELDER! ;
 269:  Weave End ;
 270:  WAIT (!DI[41:cycleON])    ;
 271:L P[46] 500mm/sec CNT25    ;
 272:  CALL A_HOME_01H    ;
 273:  CALL A_SOUNDLL    ;
 274:  WAIT   3.00(sec) ;
 275:  CALL A_CLEAN    ;
 276:  CALL A_HOME_01H    ;
 277:   ;
 278:   ;
 279:   ;
 280:   ;
 281:   ;
 282:  LBL[113:HORIZONTAL] ;
 283:   ;
 284:   ;
 285:  !***** ;
 286:  ! HORIZONTAL1 ;
 287:J P[49] 30% CNT25    ;
 288:   ;
 289:  !***** ;
 290:  ! SET UP WELDER! ;
 291:  DO[56:OnLine]=ON ;
 292:  GO[3:memoryCHANNEL]=3 ;
 293:J P[51] 30% CNT25    ;
 294:L P[52] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 295:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 296:L P[53] WELD_SPEED CNT100    ;
 297:L P[56] WELD_SPEED CNT100    ;
 298:L P[54] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 299:  WAIT (!DI[41:cycleON])    ;
 300:L P[55] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 301:L P[54] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 302:  ! FREE WELDER! ;
 303:  Weave End ;
 304:  WAIT (!DI[41:cycleON])    ;
 305:L P[51] 500mm/sec CNT25    ;
 306:   ;
 307:   ;
 308:  !***** ;
 309:  ! HORIZONTAL2 ;
 310:J P[58] 30% CNT25    ;
 311:  !***** ;
 312:  ! SET UP WELDER! ;
 313:  DO[56:OnLine]=ON ;
 314:  GO[3:memoryCHANNEL]=3 ;
 315:L P[59] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 316:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 317:L P[60] WELD_SPEED CNT100    ;
 318:L P[61] WELD_SPEED CNT100    ;
 319:L P[62] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 320:  WAIT (!DI[41:cycleON])    ;
 321:L P[63] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 322:L P[62] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 323:  ! FREE WELDER! ;
 324:  Weave End ;
 325:  WAIT (!DI[41:cycleON])    ;
 326:L P[58] 500mm/sec CNT25    ;
 327:   ;
 328:   ;
 329:  !***** ;
 330:  ! HORIZONTAL3 ;
 331:J P[64] 30% CNT25    ;
 332:  !***** ;
 333:  ! SET UP WELDER! ;
 334:  DO[56:OnLine]=ON ;
 335:  GO[3:memoryCHANNEL]=3 ;
 336:L P[65] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 337:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 338:L P[66] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 339:  WAIT (!DI[41:cycleON])    ;
 340:L P[67] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 341:L P[66] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 342:  ! FREE WELDER! ;
 343:  Weave End ;
 344:  WAIT (!DI[41:cycleON])    ;
 345:L P[64] 500mm/sec CNT25    ;
 346:   ;
 347:   ;
 348:  !***** ;
 349:  ! HORIZONTAL4 ;
 350:J P[57] 30% CNT25    ;
 351:  !***** ;
 352:  ! SET UP WELDER! ;
 353:  DO[56:OnLine]=ON ;
 354:  GO[3:memoryCHANNEL]=3 ;
 355:L P[68] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 356:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 357:L P[69] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 358:  WAIT (!DI[41:cycleON])    ;
 359:L P[70] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 360:L P[69] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 361:  ! FREE WELDER! ;
 362:  Weave End ;
 363:  WAIT (!DI[41:cycleON])    ;
 364:L P[57] 500mm/sec CNT25    ;
 365:   ;
 366:   ;
 367:  !***** ;
 368:  ! HORIZONTAL5 ;
 369:J P[71] 30% CNT25    ;
 370:  !***** ;
 371:  ! SET UP WELDER! ;
 372:  DO[56:OnLine]=ON ;
 373:  GO[3:memoryCHANNEL]=3 ;
 374:L P[72] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 375:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 376:L P[73] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 377:  WAIT (!DI[41:cycleON])    ;
 378:L P[74] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 379:L P[73] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 380:  ! FREE WELDER! ;
 381:  Weave End ;
 382:  WAIT (!DI[41:cycleON])    ;
 383:L P[71] 500mm/sec CNT25    ;
 384:   ;
 385:   ;
 386:  !***** ;
 387:  ! HORIZONTAL6 ;
 388:J P[75] 30% CNT25    ;
 389:  !***** ;
 390:  ! SET UP WELDER! ;
 391:  DO[56:OnLine]=ON ;
 392:  GO[3:memoryCHANNEL]=3 ;
 393:L P[76] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 394:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 395:L P[77] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 396:  WAIT (!DI[41:cycleON])    ;
 397:L P[78] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 398:L P[77] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 399:  ! FREE WELDER! ;
 400:  Weave End ;
 401:  WAIT (!DI[41:cycleON])    ;
 402:L P[75] 500mm/sec CNT25    ;
 403:   ;
 404:   ;
 405:  !***** ;
 406:  ! HORIZONTAL7 ;
 407:J P[79] 30% CNT25    ;
 408:  !***** ;
 409:  ! SET UP WELDER! ;
 410:  DO[56:OnLine]=ON ;
 411:  GO[3:memoryCHANNEL]=3 ;
 412:L P[80] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 413:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 414:L P[81] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 415:  WAIT (!DI[41:cycleON])    ;
 416:L P[83] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 417:L P[81] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 418:  Weave End ;
 419:  WAIT (!DI[41:cycleON])    ;
 420:L P[79] 500mm/sec CNT25    ;
 421:   ;
 422:   ;
 423:  !***** ;
 424:  ! HORIZONTAL8 ;
 425:J P[87] 30% CNT25    ;
 426:  !***** ;
 427:  ! SET UP WELDER! ;
 428:  DO[56:OnLine]=ON ;
 429:  GO[3:memoryCHANNEL]=3 ;
 430:L P[85] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 431:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 432:L P[84] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 433:  WAIT (!DI[41:cycleON])    ;
 434:L P[86] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 435:L P[84] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 436:  ! FREE WELDER! ;
 437:  Weave End ;
 438:  WAIT (!DI[41:cycleON])    ;
 439:L P[87] 500mm/sec CNT25    ;
 440:   ;
 441:   ;
 442:  !***** ;
 443:  ! HORIZONTAL9 ;
 444:J P[88] 30% CNT25    ;
 445:  !***** ;
 446:  ! SET UP WELDER! ;
 447:  DO[56:OnLine]=ON ;
 448:  GO[3:memoryCHANNEL]=3 ;
 449:L P[89] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 450:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 451:L P[90] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 452:  WAIT (!DI[41:cycleON])    ;
 453:L P[91] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 454:L P[90] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 455:  ! FREE WELDER! ;
 456:  Weave End ;
 457:  WAIT (!DI[41:cycleON])    ;
 458:J P[95] 30% CNT25    ;
 459:   ;
 460:   ;
 461:  !***** ;
 462:  ! HORIZONTAL10 ;
 463:J P[95] 30% CNT25    ;
 464:  !***** ;
 465:  ! SET UP WELDER! ;
 466:  DO[56:OnLine]=ON ;
 467:  GO[3:memoryCHANNEL]=3 ;
 468:L P[92] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 469:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 470:L P[93] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 471:  WAIT (!DI[41:cycleON])    ;
 472:L P[94] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 473:L P[93] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 474:  ! FREE WELDER! ;
 475:  Weave End ;
 476:  WAIT (!DI[41:cycleON])    ;
 477:J P[95] 30% CNT25    ;
 478:   ;
 479:   ;
 480:  !***** ;
 481:  ! HORIZONTAL11 ;
 482:J P[82] 30% CNT25    ;
 483:  !***** ;
 484:  ! SET UP WELDER! ;
 485:  DO[56:OnLine]=ON ;
 486:  GO[3:memoryCHANNEL]=3 ;
 487:L P[96] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 488:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 489:L P[97] WELD_SPEED CNT100    ;
 490:L P[98] WELD_SPEED CNT100    ;
 491:L P[99] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 492:  WAIT (!DI[41:cycleON])    ;
 493:  Weave End ;
 494:  WAIT (!DI[41:cycleON])    ;
 495:L P[100] 500mm/sec CNT25    ;
 496:J P[82] 30% CNT25    ;
 497:   ;
 498:   ;
 499:  !***** ;
 500:  ! HORIZONTAL12 ;
 501:J P[82] 30% CNT25    ;
 502:  !***** ;
 503:  ! SET UP WELDER! ;
 504:  DO[56:OnLine]=ON ;
 505:  GO[3:memoryCHANNEL]=3 ;
 506:L P[101] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 507:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 508:L P[102] WELD_SPEED CNT100    ;
 509:L P[103] WELD_SPEED CNT100    ;
 510:L P[104] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 511:  Weave End ;
 512:  WAIT (!DI[41:cycleON])    ;
 513:L P[105] 500mm/sec CNT25    ;
 514:J P[82] 30% CNT25    ;
 515:   ;
 516:   ;
 517:  !***** ;
 518:  ! HORIZONTAL13 ;
 519:J P[106] 30% CNT25    ;
 520:  !***** ;
 521:  ! SET UP WELDER! ;
 522:  DO[56:OnLine]=ON ;
 523:  GO[3:memoryCHANNEL]=3 ;
 524:L P[107] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 525:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 526:L P[108] WELD_SPEED CNT100    ;
 527:L P[109] WELD_SPEED CNT100    ;
 528:L P[110] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 529:  Weave End ;
 530:  WAIT (!DI[41:cycleON])    ;
 531:L P[111] 500mm/sec CNT25    ;
 532:J P[106] 30% CNT25    ;
 533:   ;
 534:   ;
 535:  !***** ;
 536:  ! HORIZONTAL14 ;
 537:J P[106] 30% CNT25    ;
 538:  !***** ;
 539:  ! SET UP WELDER! ;
 540:  DO[56:OnLine]=ON ;
 541:  GO[3:memoryCHANNEL]=3 ;
 542:L P[112] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 543:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 544:L P[113] WELD_SPEED CNT100    ;
 545:L P[114] WELD_SPEED CNT100    ;
 546:L P[115] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 547:  Weave End ;
 548:  WAIT (!DI[41:cycleON])    ;
 549:L P[116] 500mm/sec CNT25    ;
 550:J P[106] 30% CNT25    ;
 551:   ;
 552:   ;
 553:  !***** ;
 554:  ! HORIZONTAL15 ;
 555:J P[119] 30% CNT25    ;
 556:  !***** ;
 557:  ! SET UP WELDER! ;
 558:  DO[56:OnLine]=ON ;
 559:  GO[3:memoryCHANNEL]=3 ;
 560:L P[117] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 561:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 562:L P[118] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 563:  Weave End ;
 564:  WAIT (!DI[41:cycleON])    ;
 565:L P[120] 500mm/sec CNT25    ;
 566:J P[119] 30% CNT25    ;
 567:   ;
 568:   ;
 569:  !***** ;
 570:  ! HORIZONTAL16 ;
 571:J P[119] 30% CNT25    ;
 572:  !***** ;
 573:  ! SET UP WELDER! ;
 574:  DO[56:OnLine]=ON ;
 575:  GO[3:memoryCHANNEL]=3 ;
 576:L P[121] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 577:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 578:L P[122] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 579:  Weave End ;
 580:  WAIT (!DI[41:cycleON])    ;
 581:L P[123] 500mm/sec CNT25    ;
 582:J P[119] 30% CNT25    ;
 583:   ;
 584:   ;
 585:  !***** ;
 586:  ! HORIZONTAL17 ;
 587:J P[124] 30% CNT25    ;
 588:  !***** ;
 589:  ! SET UP WELDER! ;
 590:  DO[56:OnLine]=ON ;
 591:  GO[3:memoryCHANNEL]=3 ;
 592:L P[125] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 593:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 594:L P[126] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 595:  Weave End ;
 596:  WAIT (!DI[41:cycleON])    ;
 597:L P[127] 500mm/sec CNT25    ;
 598:J P[124] 30% CNT25    ;
 599:   ;
 600:   ;
 601:  !***** ;
 602:  ! HORIZONTAL18 ;
 603:J P[124] 30% CNT25    ;
 604:  !***** ;
 605:  ! SET UP WELDER! ;
 606:  DO[56:OnLine]=ON ;
 607:  GO[3:memoryCHANNEL]=3 ;
 608:L P[128] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 609:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 610:L P[129] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 611:  Weave End ;
 612:  WAIT (!DI[41:cycleON])    ;
 613:L P[130] 500mm/sec CNT25    ;
 614:J P[124] 30% CNT25    ;
 615:   ;
 616:   ;
 617:   ;
 618:   ;
 619:   ;
 620:  LBL[200:FINAL] ;
 621:  !***** ;
 622:  !FINAL ;
 623:  CALL A_HOME_01H    ;
 624:  CALL A_SOUNDLL    ;
 625:  WAIT   3.00(sec) ;
 626:  CALL A_CLEAN    ;
 627:  CALL A_HOME_00    ;
 628:  CALL A_SOUNDLLL    ;
 629:  JMP LBL[999] ;
 630:   ;
 631:   ;
 632:   ;
 633:   ;
 634:   ;
 635:  LBL[999:END] ;
 636:  !***** ;
 637:  !END ALL ;
 638:  F[1022:table1 work]=(OFF) ;
 639:  F[1019:table1 ready]=(OFF) ;
 640:  END ;
 641:   ;
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
