/PROG  BASE_01_02
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PODOSHVA-02";
PROG_SIZE	= 14171;
CREATE		= DATE 22-01-21  TIME 14:15:16;
MODIFIED	= DATE 22-02-07  TIME 11:34:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 622;
MEMORY_SIZE	= 14691;
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
   2:  !PODOSHVA-02 PROGRAM ;
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
  36:  CALL A_HOME_02H    ;
  37:  CALL A_SOUNDLL    ;
  38:  CALL A_BUTTON2    ;
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
  50:J P[...] 30% CNT25    ;
  51:   ;
  52:  !***** ;
  53:  ! SET UP WELDER! ;
  54:  DO[56:OnLine]=ON ;
  55:  GO[3:memoryCHANNEL]=5 ;
  56:J P[...] 30% CNT25    ;
  57:J P[...] 30% CNT25    ;
  58:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
  59:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  60:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  61:  ! FREE WELDER! ;
  62:  Weave End ;
  63:  WAIT (!DI[41:cycleON])    ;
  64:L P[...] 500mm/sec CNT25    ;
  65:J P[...] 30% CNT25    ;
  66:   ;
  67:  !***** ;
  68:  ! SET UP WELDER! ;
  69:  DO[56:OnLine]=ON ;
  70:  GO[3:memoryCHANNEL]=5 ;
  71:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
  72:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  73:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  74:  ! FREE WELDER! ;
  75:  Weave End ;
  76:  WAIT (!DI[41:cycleON])    ;
  77:L P[...] 500mm/sec CNT25    ;
  78:J P[...] 30% CNT25    ;
  79:   ;
  80:  !***** ;
  81:  ! SET UP WELDER! ;
  82:  DO[56:OnLine]=ON ;
  83:  GO[3:memoryCHANNEL]=5 ;
  84:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
  85:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  86:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
  87:  ! FREE WELDER! ;
  88:  Weave End ;
  89:  WAIT (!DI[41:cycleON])    ;
  90:L P[...] 500mm/sec CNT25    ;
  91:J P[...] 30% CNT25    ;
  92:   ;
  93:  !***** ;
  94:  ! SET UP WELDER! ;
  95:  DO[56:OnLine]=ON ;
  96:  GO[3:memoryCHANNEL]=5 ;
  97:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
  98:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
  99:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 100:  ! FREE WELDER! ;
 101:  Weave End ;
 102:  WAIT (!DI[41:cycleON])    ;
 103:L P[...] 500mm/sec CNT25    ;
 104:J P[...] 30% CNT25    ;
 105:   ;
 106:  !***** ;
 107:  ! SET UP WELDER! ;
 108:  DO[56:OnLine]=ON ;
 109:  GO[3:memoryCHANNEL]=5 ;
 110:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 111:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 112:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 113:  ! FREE WELDER! ;
 114:  Weave End ;
 115:  WAIT (!DI[41:cycleON])    ;
 116:L P[...] 500mm/sec CNT25    ;
 117:J P[...] 30% CNT25    ;
 118:   ;
 119:  !***** ;
 120:  ! SET UP WELDER! ;
 121:  DO[56:OnLine]=ON ;
 122:  GO[3:memoryCHANNEL]=5 ;
 123:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 124:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 125:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 126:  ! FREE WELDER! ;
 127:  Weave End ;
 128:  WAIT (!DI[41:cycleON])    ;
 129:L P[...] 500mm/sec CNT25    ;
 130:J P[...] 30% CNT25    ;
 131:   ;
 132:  !***** ;
 133:  ! SET UP WELDER! ;
 134:  DO[56:OnLine]=ON ;
 135:  GO[3:memoryCHANNEL]=5 ;
 136:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 137:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 138:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 139:  ! FREE WELDER! ;
 140:  Weave End ;
 141:  WAIT (!DI[41:cycleON])    ;
 142:L P[...] 500mm/sec CNT25    ;
 143:J P[...] 30% CNT25    ;
 144:   ;
 145:  !***** ;
 146:  ! SET UP WELDER! ;
 147:  DO[56:OnLine]=ON ;
 148:  GO[3:memoryCHANNEL]=5 ;
 149:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 150:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 151:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 152:  ! FREE WELDER! ;
 153:  Weave End ;
 154:  WAIT (!DI[41:cycleON])    ;
 155:L P[...] 500mm/sec CNT25    ;
 156:  CALL A_HOME_01H    ;
 157:  CALL A_CLEAN    ;
 158:  CALL A_HOME_01H    ;
 159:   ;
 160:   ;
 161:   ;
 162:   ;
 163:  LBL[112:VERT] ;
 164:  !***** ;
 165:  ! NEAR VERTICAL ;
 166:J P[...] 30% CNT25    ;
 167:   ;
 168:  !***** ;
 169:  ! SET UP WELDER! ;
 170:  DO[56:OnLine]=ON ;
 171:  GO[3:memoryCHANNEL]=5 ;
 172:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 173:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 174:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 175:  ! FREE WELDER! ;
 176:  Weave End ;
 177:  WAIT (!DI[41:cycleON])    ;
 178:L P[...] 500mm/sec CNT25    ;
 179:J P[...] 30% CNT25    ;
 180:   ;
 181:  !***** ;
 182:  ! SET UP WELDER! ;
 183:  DO[56:OnLine]=ON ;
 184:  GO[3:memoryCHANNEL]=5 ;
 185:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 186:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 187:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 188:  ! FREE WELDER! ;
 189:  Weave End ;
 190:  WAIT (!DI[41:cycleON])    ;
 191:L P[...] 500mm/sec CNT25    ;
 192:J P[...] 30% CNT25    ;
 193:   ;
 194:  !***** ;
 195:  ! SET UP WELDER! ;
 196:  DO[56:OnLine]=ON ;
 197:  GO[3:memoryCHANNEL]=5 ;
 198:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 199:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 200:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 201:  ! FREE WELDER! ;
 202:  Weave End ;
 203:  WAIT (!DI[41:cycleON])    ;
 204:L P[...] 500mm/sec CNT25    ;
 205:J P[...] 30% CNT25    ;
 206:   ;
 207:  !***** ;
 208:  ! SET UP WELDER! ;
 209:  DO[56:OnLine]=ON ;
 210:  GO[3:memoryCHANNEL]=5 ;
 211:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 212:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 213:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 214:  ! FREE WELDER! ;
 215:  Weave End ;
 216:  WAIT (!DI[41:cycleON])    ;
 217:L P[...] 500mm/sec CNT25    ;
 218:J P[...] 30% CNT25    ;
 219:   ;
 220:  !***** ;
 221:  ! SET UP WELDER! ;
 222:  DO[56:OnLine]=ON ;
 223:  GO[3:memoryCHANNEL]=5 ;
 224:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 225:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 226:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 227:  ! FREE WELDER! ;
 228:  Weave End ;
 229:  WAIT (!DI[41:cycleON])    ;
 230:L P[...] 500mm/sec CNT25    ;
 231:J P[...] 30% CNT25    ;
 232:   ;
 233:  !***** ;
 234:  ! SET UP WELDER! ;
 235:  DO[56:OnLine]=ON ;
 236:  GO[3:memoryCHANNEL]=5 ;
 237:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 238:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 239:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 240:  ! FREE WELDER! ;
 241:  Weave End ;
 242:  WAIT (!DI[41:cycleON])    ;
 243:L P[...] 500mm/sec CNT25    ;
 244:J P[...] 30% CNT25    ;
 245:   ;
 246:  !***** ;
 247:  ! SET UP WELDER! ;
 248:  DO[56:OnLine]=ON ;
 249:  GO[3:memoryCHANNEL]=5 ;
 250:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 251:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 252:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 253:  ! FREE WELDER! ;
 254:  Weave End ;
 255:  WAIT (!DI[41:cycleON])    ;
 256:L P[...] 500mm/sec CNT25    ;
 257:J P[...] 30% CNT25    ;
 258:   ;
 259:  !***** ;
 260:  ! SET UP WELDER! ;
 261:  DO[56:OnLine]=ON ;
 262:  GO[3:memoryCHANNEL]=5 ;
 263:L P[...] 500mm/sec FINE
    :  Weld Start[1,20]    ;
 264:  Weave Circle[0.8Hz,4.0mm,0.0s,0.0s] ;
 265:L P[...] WELD_SPEED FINE
    :  Weld End[1,20]    ;
 266:  ! FREE WELDER! ;
 267:  Weave End ;
 268:  WAIT (!DI[41:cycleON])    ;
 269:L P[...] 500mm/sec CNT25    ;
 270:  CALL A_HOME_01H    ;
 271:  CALL A_CLEAN    ;
 272:  CALL A_HOME_01H    ;
 273:   ;
 274:   ;
 275:   ;
 276:  LBL[113:HORIZ] ;
 277:  !***** ;
 278:  ! FAR HORIZONTAL1 CENTER ;
 279:J P[...] 30% CNT25    ;
 280:   ;
 281:  !***** ;
 282:  ! SET UP WELDER! ;
 283:  DO[56:OnLine]=ON ;
 284:  GO[3:memoryCHANNEL]=3 ;
 285:J P[...] 30% CNT25    ;
 286:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 287:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 288:L P[...] WELD_SPEED CNT100    ;
 289:L P[...] WELD_SPEED CNT100    ;
 290:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 291:  WAIT (!DI[41:cycleON])    ;
 292:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 293:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 294:  ! FREE WELDER! ;
 295:  Weave End ;
 296:  WAIT (!DI[41:cycleON])    ;
 297:L P[...] 500mm/sec CNT25    ;
 298:   ;
 299:   ;
 300:  !***** ;
 301:  ! NEAR HORIZONTAL1 CENTER ;
 302:J P[...] 30% CNT25    ;
 303:  !***** ;
 304:  ! SET UP WELDER! ;
 305:  DO[56:OnLine]=ON ;
 306:  GO[3:memoryCHANNEL]=3 ;
 307:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 308:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 309:L P[...] WELD_SPEED CNT100    ;
 310:L P[...] WELD_SPEED CNT100    ;
 311:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 312:  WAIT (!DI[41:cycleON])    ;
 313:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 314:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 315:  ! FREE WELDER! ;
 316:  Weave End ;
 317:  WAIT (!DI[41:cycleON])    ;
 318:L P[...] 500mm/sec CNT25    ;
 319:   ;
 320:   ;
 321:  !***** ;
 322:  ! FAR HORIZONTAL2 ;
 323:J P[...] 30% CNT25    ;
 324:  !***** ;
 325:  ! SET UP WELDER! ;
 326:  DO[56:OnLine]=ON ;
 327:  GO[3:memoryCHANNEL]=3 ;
 328:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 329:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 330:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 331:  WAIT (!DI[41:cycleON])    ;
 332:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 333:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 334:  ! FREE WELDER! ;
 335:  Weave End ;
 336:  WAIT (!DI[41:cycleON])    ;
 337:L P[...] 500mm/sec CNT25    ;
 338:   ;
 339:   ;
 340:  !***** ;
 341:  ! NEAR HORIZONTAL2 ;
 342:J P[...] 30% CNT25    ;
 343:  !***** ;
 344:  ! SET UP WELDER! ;
 345:  DO[56:OnLine]=ON ;
 346:  GO[3:memoryCHANNEL]=3 ;
 347:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 348:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 349:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 350:  WAIT (!DI[41:cycleON])    ;
 351:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 352:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 353:  ! FREE WELDER! ;
 354:  Weave End ;
 355:  WAIT (!DI[41:cycleON])    ;
 356:L P[...] 500mm/sec CNT25    ;
 357:   ;
 358:   ;
 359:  !***** ;
 360:  ! FAR HORIZONTAL3 ;
 361:J P[...] 30% CNT25    ;
 362:  !***** ;
 363:  ! SET UP WELDER! ;
 364:  DO[56:OnLine]=ON ;
 365:  GO[3:memoryCHANNEL]=3 ;
 366:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 367:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 368:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 369:  WAIT (!DI[41:cycleON])    ;
 370:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 371:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 372:  ! FREE WELDER! ;
 373:  Weave End ;
 374:  WAIT (!DI[41:cycleON])    ;
 375:L P[...] 500mm/sec CNT25    ;
 376:   ;
 377:   ;
 378:  !***** ;
 379:  ! NEAR HORIZONTAL3 ;
 380:J P[...] 30% CNT25    ;
 381:  !***** ;
 382:  ! SET UP WELDER! ;
 383:  DO[56:OnLine]=ON ;
 384:  GO[3:memoryCHANNEL]=3 ;
 385:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 386:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 387:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 388:  WAIT (!DI[41:cycleON])    ;
 389:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 390:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 391:  ! FREE WELDER! ;
 392:  Weave End ;
 393:  WAIT (!DI[41:cycleON])    ;
 394:L P[...] 500mm/sec CNT25    ;
 395:   ;
 396:   ;
 397:  !***** ;
 398:  ! HORIZONTAL4 ;
 399:J P[...] 30% CNT25    ;
 400:  !***** ;
 401:  ! SET UP WELDER! ;
 402:  DO[56:OnLine]=ON ;
 403:  GO[3:memoryCHANNEL]=3 ;
 404:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 405:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 406:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 407:  WAIT (!DI[41:cycleON])    ;
 408:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 409:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 410:  Weave End ;
 411:  WAIT (!DI[41:cycleON])    ;
 412:L P[...] 500mm/sec CNT25    ;
 413:   ;
 414:   ;
 415:  !***** ;
 416:  ! HORIZONTAL5 ;
 417:J P[...] 30% CNT25    ;
 418:  !***** ;
 419:  ! SET UP WELDER! ;
 420:  DO[56:OnLine]=ON ;
 421:  GO[3:memoryCHANNEL]=3 ;
 422:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 423:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 424:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 425:  WAIT (!DI[41:cycleON])    ;
 426:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 427:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 428:  ! FREE WELDER! ;
 429:  Weave End ;
 430:  WAIT (!DI[41:cycleON])    ;
 431:L P[...] 500mm/sec CNT25    ;
 432:   ;
 433:   ;
 434:  !***** ;
 435:  ! HORIZONTAL6 ;
 436:J P[...] 30% CNT25    ;
 437:  !***** ;
 438:  ! SET UP WELDER! ;
 439:  DO[56:OnLine]=ON ;
 440:  GO[3:memoryCHANNEL]=3 ;
 441:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 442:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 443:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 444:  WAIT (!DI[41:cycleON])    ;
 445:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 446:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 447:  ! FREE WELDER! ;
 448:  Weave End ;
 449:  WAIT (!DI[41:cycleON])    ;
 450:J P[...] 30% CNT25    ;
 451:   ;
 452:   ;
 453:  !***** ;
 454:  ! HORIZONTAL7 ;
 455:J P[...] 30% CNT25    ;
 456:  !***** ;
 457:  ! SET UP WELDER! ;
 458:  DO[56:OnLine]=ON ;
 459:  GO[3:memoryCHANNEL]=3 ;
 460:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 461:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 462:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 463:  WAIT (!DI[41:cycleON])    ;
 464:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 465:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 466:  ! FREE WELDER! ;
 467:  Weave End ;
 468:  WAIT (!DI[41:cycleON])    ;
 469:J P[...] 30% CNT25    ;
 470:   ;
 471:   ;
 472:  !***** ;
 473:  ! HORIZONTAL8 ;
 474:J P[...] 30% CNT25    ;
 475:  !***** ;
 476:  ! SET UP WELDER! ;
 477:  DO[56:OnLine]=ON ;
 478:  GO[3:memoryCHANNEL]=3 ;
 479:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 480:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 481:L P[...] WELD_SPEED CNT100    ;
 482:L P[...] WELD_SPEED CNT100    ;
 483:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 484:  WAIT (!DI[41:cycleON])    ;
 485:  Weave End ;
 486:  WAIT (!DI[41:cycleON])    ;
 487:L P[...] 500mm/sec CNT25    ;
 488:J P[...] 30% CNT25    ;
 489:   ;
 490:   ;
 491:  !***** ;
 492:  ! HORIZONTAL9 ;
 493:J P[...] 30% CNT25    ;
 494:  !***** ;
 495:  ! SET UP WELDER! ;
 496:  DO[56:OnLine]=ON ;
 497:  GO[3:memoryCHANNEL]=3 ;
 498:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 499:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 500:L P[...] WELD_SPEED CNT100    ;
 501:L P[...] WELD_SPEED CNT100    ;
 502:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 503:  Weave End ;
 504:  WAIT (!DI[41:cycleON])    ;
 505:L P[...] 500mm/sec CNT25    ;
 506:J P[...] 30% CNT25    ;
 507:   ;
 508:   ;
 509:  !***** ;
 510:  ! HORIZONTAL10 ;
 511:J P[...] 30% CNT25    ;
 512:  !***** ;
 513:  ! SET UP WELDER! ;
 514:  DO[56:OnLine]=ON ;
 515:  GO[3:memoryCHANNEL]=3 ;
 516:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 517:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 518:L P[...] WELD_SPEED CNT100    ;
 519:L P[...] WELD_SPEED CNT100    ;
 520:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 521:  Weave End ;
 522:  WAIT (!DI[41:cycleON])    ;
 523:L P[...] 500mm/sec CNT25    ;
 524:J P[...] 30% CNT25    ;
 525:   ;
 526:   ;
 527:  !***** ;
 528:  ! HORIZONTAL11 ;
 529:J P[...] 30% CNT25    ;
 530:  !***** ;
 531:  ! SET UP WELDER! ;
 532:  DO[56:OnLine]=ON ;
 533:  GO[3:memoryCHANNEL]=3 ;
 534:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 535:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 536:L P[...] WELD_SPEED CNT100    ;
 537:L P[...] WELD_SPEED CNT100    ;
 538:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 539:  Weave End ;
 540:  WAIT (!DI[41:cycleON])    ;
 541:L P[...] 500mm/sec CNT25    ;
 542:J P[...] 30% CNT25    ;
 543:   ;
 544:   ;
 545:  !***** ;
 546:  ! HORIZONTAL12 ;
 547:J P[...] 30% CNT25    ;
 548:  !***** ;
 549:  ! SET UP WELDER! ;
 550:  DO[56:OnLine]=ON ;
 551:  GO[3:memoryCHANNEL]=3 ;
 552:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 553:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 554:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 555:  Weave End ;
 556:  WAIT (!DI[41:cycleON])    ;
 557:L P[...] 500mm/sec CNT25    ;
 558:J P[...] 30% CNT25    ;
 559:   ;
 560:   ;
 561:  !***** ;
 562:  ! HORIZONTAL13 ;
 563:J P[...] 30% CNT25    ;
 564:  !***** ;
 565:  ! SET UP WELDER! ;
 566:  DO[56:OnLine]=ON ;
 567:  GO[3:memoryCHANNEL]=3 ;
 568:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 569:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 570:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 571:  Weave End ;
 572:  WAIT (!DI[41:cycleON])    ;
 573:L P[...] 500mm/sec CNT25    ;
 574:J P[...] 30% CNT25    ;
 575:   ;
 576:   ;
 577:  !***** ;
 578:  ! HORIZONTAL13 ;
 579:J P[...] 30% CNT25    ;
 580:  !***** ;
 581:  ! SET UP WELDER! ;
 582:  DO[56:OnLine]=ON ;
 583:  GO[3:memoryCHANNEL]=3 ;
 584:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 585:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 586:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 587:  Weave End ;
 588:  WAIT (!DI[41:cycleON])    ;
 589:L P[...] 500mm/sec CNT25    ;
 590:J P[...] 30% CNT25    ;
 591:   ;
 592:   ;
 593:  !***** ;
 594:  ! HORIZONTAL14 ;
 595:J P[...] 30% CNT25    ;
 596:  !***** ;
 597:  ! SET UP WELDER! ;
 598:  DO[56:OnLine]=ON ;
 599:  GO[3:memoryCHANNEL]=3 ;
 600:L P[...] 500mm/sec FINE
    :  Weld Start[1,18]    ;
 601:  Weave Circle[2.0Hz,2.0mm,0.0s,0.0s] ;
 602:L P[...] WELD_SPEED FINE
    :  Weld End[1,18]    ;
 603:  Weave End ;
 604:  WAIT (!DI[41:cycleON])    ;
 605:L P[...] 500mm/sec CNT25    ;
 606:J P[...] 30% CNT25    ;
 607:   ;
 608:   ;
 609:   ;
 610:  LBL[200:LOOP] ;
 611:  !***** ;
 612:  !LOOP ;
 613:  CALL A_HOME_01H    ;
 614:  CALL A_CLEAN    ;
 615:  CALL A_SOUNDLL    ;
 616:  CALL A_HOME_00    ;
 617:  CALL A_SOUNDS    ;
 618:  JMP LBL[110] ;
 619:   ;
 620:  !***** ;
 621:  !END ALL ;
 622:  LBL[999:END] ;
/POS
/END
