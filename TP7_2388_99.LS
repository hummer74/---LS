/PROG  TP7_2388_99
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "T_2388";
PROG_SIZE	= 22263;
CREATE		= DATE 22-09-16  TIME 15:00:32;
MODIFIED	= DATE 22-09-27  TIME 10:38:40;
FILE_NAME	= T_1718_9;
VERSION		= 0;
LINE_COUNT	= 566;
MEMORY_SIZE	= 22727;
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
   5:  ! SELECT CHANNEL ON KEMPI ;
   6:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
   7:  DO[56:OnLine]=ON ;
   8:   ;
   9:   ;
  10:  LBL[2:START] ;
  11:  CALL A_HOME_01    ;
  12:   ;
  13:  ! WELD-001 ;
  14:  ! WORK ;
  15:   ;
  16:  ! TOP FIRST LINE ;
  17:  ! SELECT CHANNEL ON KEMPI ;
  18:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
  19:  DO[56:OnLine]=ON ;
  20:   ;
  21:J P[1] 33% CNT25    ;
  22:L P[2] 300mm/sec FINE
    :  Weld Start[5,4]    ;
  23:  Weave Sine[2] ;
  24:L P[3] WELD_SPEED CNT100    ;
  25:L P[4] WELD_SPEED FINE
    :  Weld End[5,4]    ;
  26:  Weave End ;
  27:  WAIT (!DI[41:cycleON])    ;
  28:   ;
  29:J P[5] 33% CNT25    ;
  30:L P[6] 300mm/sec FINE
    :  Weld Start[5,4]    ;
  31:  Weave Sine[2] ;
  32:L P[7] WELD_SPEED CNT100    ;
  33:L P[8] WELD_SPEED FINE
    :  Weld End[5,4]    ;
  34:  Weave End ;
  35:  WAIT (!DI[41:cycleON])    ;
  36:   ;
  37:J P[9] 33% CNT25    ;
  38:L P[10] 300mm/sec FINE
    :  Weld Start[5,4]    ;
  39:  Weave Sine[2] ;
  40:L P[11] WELD_SPEED CNT100    ;
  41:L P[12] WELD_SPEED FINE
    :  Weld End[5,4]    ;
  42:  Weave End ;
  43:  WAIT (!DI[41:cycleON])    ;
  44:   ;
  45:J P[13] 33% CNT25    ;
  46:L P[14] 300mm/sec FINE
    :  Weld Start[5,4]    ;
  47:  Weave Sine[2] ;
  48:L P[15] WELD_SPEED CNT100    ;
  49:L P[16] WELD_SPEED FINE
    :  Weld End[5,4]    ;
  50:  Weave End ;
  51:  WAIT (!DI[41:cycleON])    ;
  52:J P[33] 33% CNT25    ;
  53:J P[34] 33% CNT25    ;
  54:   ;
  55:   ;
  56:   ;
  57:   ;
  58:   ;
  59:  ! TOP SECOND LINE ;
  60:  ! SELECT CHANNEL ON KEMPI ;
  61:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
  62:  DO[56:OnLine]=ON ;
  63:   ;
  64:J P[17] 33% CNT25    ;
  65:L P[18] 300mm/sec FINE
    :  Weld Start[5,4]    ;
  66:  Weave Sine[2] ;
  67:L P[19] WELD_SPEED CNT100    ;
  68:L P[20] WELD_SPEED FINE
    :  Weld End[5,4]    ;
  69:  Weave End ;
  70:  WAIT (!DI[41:cycleON])    ;
  71:   ;
  72:J P[21] 33% CNT25    ;
  73:L P[22] 300mm/sec FINE
    :  Weld Start[5,4]    ;
  74:  Weave Sine[2] ;
  75:L P[23] WELD_SPEED CNT100    ;
  76:L P[24] WELD_SPEED FINE
    :  Weld End[5,4]    ;
  77:  Weave End ;
  78:  WAIT (!DI[41:cycleON])    ;
  79:   ;
  80:J P[25] 33% CNT25    ;
  81:L P[26] 300mm/sec FINE
    :  Weld Start[5,4]    ;
  82:  Weave Sine[2] ;
  83:L P[27] WELD_SPEED CNT100    ;
  84:L P[28] WELD_SPEED FINE
    :  Weld End[5,4]    ;
  85:  Weave End ;
  86:  WAIT (!DI[41:cycleON])    ;
  87:   ;
  88:J P[29] 33% CNT25    ;
  89:L P[30] 300mm/sec FINE
    :  Weld Start[5,4]    ;
  90:  Weave Sine[2] ;
  91:L P[31] WELD_SPEED CNT100    ;
  92:L P[32] WELD_SPEED FINE
    :  Weld End[5,4]    ;
  93:  Weave End ;
  94:  WAIT (!DI[41:cycleON])    ;
  95:J P[35] 33% CNT25    ;
  96:  ! END OF TOP ;
  97:   ;
  98:   ;
  99:   ;
 100:   ;
 101:   ;
 102:  !INSIDE WELDING ;
 103:   ;
 104:  !CENTER INSIDE WELDING ;
 105:  ! SELECT CHANNEL ON KEMPI ;
 106:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 107:  DO[56:OnLine]=ON ;
 108:   ;
 109:J P[36] 33% CNT25    ;
 110:J P[37] 33% CNT25    ;
 111:  !LANDING ;
 112:J P[39] 33% CNT25    ;
 113:  !START POINT - CORNER 1 ;
 114:L P[38] 300mm/sec FINE
    :  Weld Start[5,5]    ;
 115:  Weave Sine[3] ;
 116:  !CORNER 2 ;
 117:L P[42] WELD_SPEED CNT100    ;
 118:  !CORNER 3 ;
 119:L P[45] WELD_SPEED CNT100    ;
 120:  !CORNER 4 ;
 121:L P[48] WELD_SPEED CNT100    ;
 122:  !END POINT - CORNER 1 ;
 123:L P[151] WELD_SPEED CNT100    ;
 124:L P[38] WELD_SPEED FINE
    :  Weld End[5,5]    ;
 125:  Weave End ;
 126:  WAIT (!DI[41:cycleON])    ;
 127:  !TAKE OFF ;
 128:J P[52] 33% CNT25    ;
 129:J P[53] 33% CNT25    ;
 130:   ;
 131:   ;
 132:   ;
 133:   ;
 134:   ;
 135:  !1-st END INSIDE WELDING ;
 136:  ! SELECT CHANNEL ON KEMPI ;
 137:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 138:  DO[56:OnLine]=ON ;
 139:   ;
 140:J P[54] 33% CNT25    ;
 141:  !LANDING ;
 142:J P[55] 33% CNT25    ;
 143:  !START POINT ;
 144:L P[56] 300mm/sec FINE
    :  Weld Start[5,5]    ;
 145:  Weave Sine[3] ;
 146:  !CORNER 1 ;
 147:L P[58] WELD_SPEED CNT100
    :  Weld Start[5,4]    ;
 148:  Weave Sine[2] ;
 149:L P[137] WELD_SPEED CNT100    ;
 150:L P[138] WELD_SPEED CNT100    ;
 151:  !CORNER 2 ;
 152:L P[61] WELD_SPEED CNT100
    :  Weld Start[5,5]    ;
 153:  Weave Sine[3] ;
 154:  !END POINT ;
 155:L P[64] WELD_SPEED FINE
    :  Weld End[5,5]    ;
 156:  Weave End ;
 157:  WAIT (!DI[41:cycleON])    ;
 158:J P[69] 33% CNT25    ;
 159:J P[70] 33% CNT25    ;
 160:   ;
 161:   ;
 162:   ;
 163:   ;
 164:   ;
 165:  !2-st END INSIDE WELDING ;
 166:  ! SELECT CHANNEL ON KEMPI ;
 167:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 168:  DO[56:OnLine]=ON ;
 169:   ;
 170:J P[65] 33% CNT25    ;
 171:  !LANDING ;
 172:J P[67] 33% CNT25    ;
 173:  !START POINT ;
 174:L P[66] 300mm/sec FINE
    :  Weld Start[5,5]    ;
 175:  Weave Sine[3] ;
 176:  !CORNER 1 ;
 177:L P[142] WELD_SPEED CNT100    ;
 178:L P[71] WELD_SPEED CNT100    ;
 179:  Weld Start[5,4] ;
 180:  Weave Sine[2] ;
 181:L P[139] WELD_SPEED CNT100    ;
 182:L P[140] WELD_SPEED CNT100    ;
 183:  !CORNER 2 ;
 184:   ;
 185:L P[75] WELD_SPEED CNT100
    :  Weld Start[5,5]    ;
 186:  Weave Sine[3] ;
 187:L P[141] WELD_SPEED CNT100    ;
 188:  !END POINT ;
 189:L P[77] WELD_SPEED FINE
    :  Weld End[5,5]    ;
 190:  Weave End ;
 191:  WAIT (!DI[41:cycleON])    ;
 192:J P[78] 33% CNT25    ;
 193:   ;
 194:   ;
 195:   ;
 196:   ;
 197:   ;
 198:  !1-st CAVE INSIDE WELDING ;
 199:  ! SELECT CHANNEL ON KEMPI ;
 200:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 201:  DO[56:OnLine]=ON ;
 202:   ;
 203:J P[80] 33% CNT25    ;
 204:  !LANDING ;
 205:J P[81] 33% CNT25    ;
 206:  !START POINT - CORNER 1 ;
 207:L P[85] 300mm/sec FINE
    :  Weld Start[5,5]    ;
 208:  Weave Sine[3] ;
 209:  !CORNER 2 ;
 210:L P[88] WELD_SPEED CNT100    ;
 211:  !CORNER 3 ;
 212:L P[91] WELD_SPEED CNT100
    :  Weld Start[5,4]    ;
 213:  Weave Sine[2] ;
 214:L P[143] WELD_SPEED CNT100    ;
 215:L P[144] WELD_SPEED CNT100    ;
 216:  !CORNER 4 ;
 217:L P[82] WELD_SPEED CNT100
    :  Weld Start[5,5]    ;
 218:  Weave Sine[3] ;
 219:  !END POINT - CORNER 1 ;
 220:L P[51] WELD_SPEED FINE
    :  Weld End[5,5]    ;
 221:  Weave End ;
 222:  WAIT (!DI[41:cycleON])    ;
 223:  !TAKE OFF ;
 224:J P[95] 33% CNT25    ;
 225:   ;
 226:   ;
 227:   ;
 228:   ;
 229:   ;
 230:  !2-st CAVE INSIDE WELDING ;
 231:  ! SELECT CHANNEL ON KEMPI ;
 232:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 233:  DO[56:OnLine]=ON ;
 234:   ;
 235:J P[96] 33% CNT25    ;
 236:J P[150] 33% CNT25    ;
 237:  !LANDING ;
 238:J P[97] 33% CNT25    ;
 239:  !START POINT - CORNER 1 ;
 240:L P[98] 300mm/sec FINE
    :  Weld Start[5,5]    ;
 241:  Weave Sine[3] ;
 242:  !CORNER 2 ;
 243:L P[101] WELD_SPEED CNT100
    :  Weld Start[5,4]    ;
 244:  Weave Sine[2] ;
 245:L P[145] WELD_SPEED CNT100    ;
 246:L P[146] WELD_SPEED CNT100    ;
 247:  !CORNER 3 ;
 248:L P[104] WELD_SPEED FINE
    :  Weld Start[5,5]    ;
 249:  Weave Sine[3] ;
 250:  !CORNER 4 ;
 251:L P[107] WELD_SPEED CNT100    ;
 252:  !END POINT - CORNER 1 ;
 253:L P[152] WELD_SPEED CNT100    ;
 254:L P[110] WELD_SPEED FINE
    :  Weld End[5,5]    ;
 255:  Weave End ;
 256:  WAIT (!DI[41:cycleON])    ;
 257:  ! ;
 258:J P[111] 33% CNT25    ;
 259:   ;
 260:  CALL A_HOME_01H    ;
 261:  CALL A_CLEAN    ;
 262:  CALL A_HOME_01H    ;
 263:  DO[53:GasPurge]=PULSE,4.0sec ;
 264:  ! NEAR OUTSIDE WELDING FIRST SECT ;
 265:  ! SELECT CHANNEL ON KEMPI ;
 266:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 267:  DO[56:OnLine]=ON ;
 268:   ;
 269:J P[41] 33% CNT25    ;
 270:J P[40] 33% CNT25    ;
 271:L P[43] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 272:  Weave Sine[2] ;
 273:L P[44] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 274:  Weave End ;
 275:  WAIT (!DI[41:cycleON])    ;
 276:J P[40] 33% CNT25    ;
 277:   ;
 278:J P[46] 33% CNT25    ;
 279:L P[47] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 280:  Weave Sine[2] ;
 281:L P[49] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 282:  Weave End ;
 283:  WAIT (!DI[41:cycleON])    ;
 284:J P[46] 33% CNT25    ;
 285:   ;
 286:J P[50] 33% CNT25    ;
 287:L P[57] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 288:  Weave Sine[2] ;
 289:L P[59] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 290:  Weave End ;
 291:  WAIT (!DI[41:cycleON])    ;
 292:J P[50] 33% CNT25    ;
 293:   ;
 294:J P[60] 33% CNT25    ;
 295:L P[62] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 296:  Weave Sine[2] ;
 297:L P[63] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 298:  Weave End ;
 299:  WAIT (!DI[41:cycleON])    ;
 300:J P[60] 33% CNT25    ;
 301:   ;
 302:J P[68] 33% CNT25    ;
 303:   ;
 304:   ;
 305:   ;
 306:  ! NEAR OUTSIDE WELDING SECOND SEC ;
 307:  ! SELECT CHANNEL ON KEMPI ;
 308:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 309:  DO[56:OnLine]=ON ;
 310:   ;
 311:J P[72] 33% CNT25    ;
 312:   ;
 313:J P[73] 33% CNT25    ;
 314:L P[74] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 315:  Weave Sine[2] ;
 316:L P[76] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 317:  Weave End ;
 318:  WAIT (!DI[41:cycleON])    ;
 319:J P[73] 33% CNT25    ;
 320:   ;
 321:J P[83] 33% CNT25    ;
 322:L P[84] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 323:  Weave Sine[2] ;
 324:L P[86] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 325:  Weave End ;
 326:  WAIT (!DI[41:cycleON])    ;
 327:J P[83] 33% CNT25    ;
 328:   ;
 329:J P[87] 33% CNT25    ;
 330:L P[89] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 331:  Weave Sine[2] ;
 332:L P[90] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 333:  Weave End ;
 334:  WAIT (!DI[41:cycleON])    ;
 335:J P[87] 33% CNT25    ;
 336:   ;
 337:J P[92] 33% CNT25    ;
 338:L P[93] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 339:  Weave Sine[2] ;
 340:L P[99] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 341:  Weave End ;
 342:  WAIT (!DI[41:cycleON])    ;
 343:J P[92] 33% CNT25    ;
 344:   ;
 345:J PR[3:HOME_01] 33% CNT25    ;
 346:   ;
 347:   ;
 348:   ;
 349:   ;
 350:   ;
 351:  ! FAR OUTSIDE WELDING ;
 352:   ;
 353:  ! FAR OUTSIDE WELDING FIRST SECTO ;
 354:  ! SELECT CHANNEL ON KEMPI ;
 355:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 356:  DO[56:OnLine]=ON ;
 357:   ;
 358:J PR[3:HOME_01] 33% CNT25    ;
 359:J P[169] 33% CNT25    ;
 360:L P[168] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 361:  Weave Sine[2] ;
 362:L P[167] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 363:  Weave End ;
 364:  WAIT (!DI[41:cycleON])    ;
 365:J P[169] 33% CNT25    ;
 366:   ;
 367:J P[170] 33% CNT25    ;
 368:L P[171] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 369:  Weave Sine[2] ;
 370:L P[172] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 371:  Weave End ;
 372:  WAIT (!DI[41:cycleON])    ;
 373:J P[170] 33% CNT25    ;
 374:   ;
 375:J P[174] 33% CNT25    ;
 376:L P[173] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 377:  Weave Sine[2] ;
 378:L P[175] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 379:  Weave End ;
 380:  WAIT (!DI[41:cycleON])    ;
 381:J P[174] 33% CNT25    ;
 382:   ;
 383:J P[176] 33% CNT25    ;
 384:L P[177] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 385:  Weave Sine[2] ;
 386:L P[178] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 387:  Weave End ;
 388:  WAIT (!DI[41:cycleON])    ;
 389:J P[176] 33% CNT25    ;
 390:   ;
 391:   ;
 392:   ;
 393:   ;
 394:   ;
 395:  ! FAR OUTSIDE WELDING SECOND SECT ;
 396:  ! SELECT CHANNEL ON KEMPI ;
 397:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 398:  DO[56:OnLine]=ON ;
 399:   ;
 400:J P[180] 33% CNT25    ;
 401:   ;
 402:J P[179] 33% CNT25    ;
 403:L P[181] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 404:  Weave Sine[2] ;
 405:L P[182] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 406:  Weave End ;
 407:  WAIT (!DI[41:cycleON])    ;
 408:J P[179] 33% CNT25    ;
 409:   ;
 410:J P[183] 33% CNT25    ;
 411:L P[184] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 412:  Weave Sine[2] ;
 413:L P[185] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 414:  Weave End ;
 415:  WAIT (!DI[41:cycleON])    ;
 416:J P[183] 33% CNT25    ;
 417:   ;
 418:J P[186] 33% CNT25    ;
 419:L P[187] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 420:  Weave Sine[2] ;
 421:L P[188] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 422:  Weave End ;
 423:  WAIT (!DI[41:cycleON])    ;
 424:J P[186] 33% CNT25    ;
 425:   ;
 426:J P[189] 33% CNT25    ;
 427:L P[190] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 428:  Weave Sine[2] ;
 429:L P[191] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 430:  Weave End ;
 431:  WAIT (!DI[41:cycleON])    ;
 432:J P[189] 33% CNT25    ;
 433:   ;
 434:J P[192] 33% CNT25    ;
 435:   ;
 436:  ! CALL A_HOME_01H ;
 437:  ! CALL A_CLEAN ;
 438:  ! CALL A_HOME_01H ;
 439:   ;
 440:  ! FAR OUTSIDE WELDING LONG'S ;
 441:  ! SELECT CHANNEL ON KEMPI ;
 442:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 443:  DO[56:OnLine]=ON ;
 444:   ;
 445:J P[193] 33% CNT25    ;
 446:L P[194] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 447:  Weave Sine[2] ;
 448:L P[147] WELD_SPEED CNT100    ;
 449:L P[195] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 450:  Weave End ;
 451:  WAIT (!DI[41:cycleON])    ;
 452:J P[196] 33% CNT25    ;
 453:   ;
 454:J P[197] 33% CNT25    ;
 455:L P[198] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 456:  Weave Sine[2] ;
 457:L P[148] WELD_SPEED CNT100    ;
 458:L P[149] WELD_SPEED CNT100    ;
 459:L P[199] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 460:  Weave End ;
 461:  WAIT (!DI[41:cycleON])    ;
 462:J P[200] 33% CNT25    ;
 463:   ;
 464:J P[201] 33% CNT25    ;
 465:L P[202] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 466:  Weave Sine[2] ;
 467:L P[79] WELD_SPEED CNT100    ;
 468:L P[94] WELD_SPEED CNT100    ;
 469:L P[203] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 470:  Weave End ;
 471:  WAIT (!DI[41:cycleON])    ;
 472:J P[204] 33% CNT25    ;
 473:J P[205] 33% CNT25    ;
 474:L P[206] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 475:  Weave Sine[2] ;
 476:L P[126] WELD_SPEED CNT100    ;
 477:L P[127] WELD_SPEED CNT100    ;
 478:L P[207] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 479:  Weave End ;
 480:  WAIT (!DI[41:cycleON])    ;
 481:J P[208] 33% CNT25    ;
 482:   ;
 483:J P[209] 33% CNT25    ;
 484:L P[210] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 485:  Weave Sine[2] ;
 486:L P[128] WELD_SPEED CNT100    ;
 487:L P[211] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 488:  Weave End ;
 489:  WAIT (!DI[41:cycleON])    ;
 490:J P[212] 33% CNT25    ;
 491:   ;
 492:J P[100] 33% CNT25    ;
 493:   ;
 494:   ;
 495:   ;
 496:   ;
 497:   ;
 498:  ! NEAR OUTSIDE WELDING LONG'S ;
 499:  ! SELECT CHANNEL ON KEMPI ;
 500:  GO[3:memoryCHANNEL]=R[115:CHANNEL] ;
 501:  DO[56:OnLine]=ON ;
 502:   ;
 503:J P[102] 33% CNT25    ;
 504:L P[103] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 505:  Weave Sine[2] ;
 506:L P[129] WELD_SPEED CNT100    ;
 507:L P[105] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 508:  Weave End ;
 509:  WAIT (!DI[41:cycleON])    ;
 510:J P[106] 33% CNT25    ;
 511:   ;
 512:J P[108] 33% CNT25    ;
 513:L P[109] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 514:  Weave Sine[2] ;
 515:L P[130] WELD_SPEED CNT100    ;
 516:L P[131] WELD_SPEED CNT100    ;
 517:L P[112] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 518:  Weave End ;
 519:  WAIT (!DI[41:cycleON])    ;
 520:J P[113] 33% CNT25    ;
 521:   ;
 522:J P[114] 33% CNT25    ;
 523:L P[115] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 524:  Weave Sine[2] ;
 525:L P[132] WELD_SPEED CNT100    ;
 526:L P[133] WELD_SPEED CNT100    ;
 527:L P[116] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 528:  Weave End ;
 529:  WAIT (!DI[41:cycleON])    ;
 530:J P[117] 33% CNT25    ;
 531:   ;
 532:J P[118] 33% CNT25    ;
 533:L P[120] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 534:  Weave Sine[2] ;
 535:L P[134] WELD_SPEED CNT100    ;
 536:L P[135] WELD_SPEED CNT100    ;
 537:L P[119] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 538:  Weave End ;
 539:  WAIT (!DI[41:cycleON])    ;
 540:J P[121] 33% CNT25    ;
 541:   ;
 542:J P[122] 33% CNT25    ;
 543:L P[123] 300mm/sec FINE
    :  Weld Start[5,4]    ;
 544:  Weave Sine[2] ;
 545:L P[136] WELD_SPEED CNT100    ;
 546:L P[124] WELD_SPEED FINE
    :  Weld End[5,4]    ;
 547:  Weave End ;
 548:  WAIT (!DI[41:cycleON])    ;
 549:J P[125] 33% CNT25    ;
 550:   ;
 551:J PR[4:HOME_01H] 33% CNT25    ;
 552:   ;
 553:   ;
 554:  !END WELDING ;
 555:  R[110:WIRE-CNT]=R[110:WIRE-CNT]+1    ;
 556:  R[111:GAS-CNT]=R[111:GAS-CNT]+1    ;
 557:  R[112:START-CNT]=R[112:START-CNT]+1    ;
 558:  R[113:FULL-CNT]=R[113:FULL-CNT]+1    ;
 559:  CALL A_SOUNDLL    ;
 560:   ;
 561:  LBL[4:END] ;
 562:  CALL A_HOME_00H    ;
 563:  CALL A_CLEAN    ;
 564:  CALL A_SOUNDLLL    ;
 565:  CALL A_SOUNDLLL    ;
 566:  LBL[999:STOP] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -676.979  mm,	Y = -1404.787  mm,	Z =  -347.826  mm,
	W =      .003 deg,	P =     -.001 deg,	R =  -163.224 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -673.524  mm,	Y = -1407.986  mm,	Z =  -357.043  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -672.151  mm,	Y = -1408.444  mm,	Z =  -357.043  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -619.448  mm,	Y = -1408.061  mm,	Z =  -357.043  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -277.729  mm,	Y = -1401.359  mm,	Z =  -344.141  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -275.425  mm,	Y = -1404.527  mm,	Z =  -358.310  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -273.927  mm,	Y = -1402.857  mm,	Z =  -358.309  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -221.340  mm,	Y = -1402.857  mm,	Z =  -358.309  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   184.049  mm,	Y = -1396.866  mm,	Z =  -346.789  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   184.912  mm,	Y = -1399.593  mm,	Z =  -359.173  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   188.541  mm,	Y = -1399.594  mm,	Z =  -359.174  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   240.477  mm,	Y = -1399.594  mm,	Z =  -359.174  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.677  mm,	Y = -1392.394  mm,	Z =  -352.550  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   586.269  mm,	Y = -1394.276  mm,	Z =  -360.498  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   588.976  mm,	Y = -1395.697  mm,	Z =  -360.499  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   642.261  mm,	Y = -1396.081  mm,	Z =  -360.498  mm,
	W =     3.669 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -678.221  mm,	Y = -1210.676  mm,	Z =  -337.579  mm,
	W =     3.661 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -676.205  mm,	Y = -1208.373  mm,	Z =  -355.147  mm,
	W =     3.661 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -671.597  mm,	Y = -1208.660  mm,	Z =  -355.147  mm,
	W =     3.661 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -622.064  mm,	Y = -1208.564  mm,	Z =  -355.147  mm,
	W =     3.661 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -278.767  mm,	Y = -1206.068  mm,	Z =  -345.354  mm,
	W =     3.661 deg,	P =    11.972 deg,	R =  -162.839 deg
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -276.990  mm,	Y = -1204.344  mm,	Z =  -356.625  mm,
	W =     3.658 deg,	P =    11.974 deg,	R =  -162.844 deg
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -272.093  mm,	Y = -1205.151  mm,	Z =  -356.625  mm,
	W =     3.658 deg,	P =    11.974 deg,	R =  -162.844 deg
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -223.422  mm,	Y = -1205.151  mm,	Z =  -356.625  mm,
	W =     3.658 deg,	P =    11.974 deg,	R =  -162.844 deg
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   179.202  mm,	Y = -1205.151  mm,	Z =  -345.104  mm,
	W =     3.658 deg,	P =    11.974 deg,	R =  -162.844 deg
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   185.656  mm,	Y = -1201.383  mm,	Z =  -357.824  mm,
	W =     3.655 deg,	P =    11.975 deg,	R =  -162.848 deg
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   191.416  mm,	Y = -1201.037  mm,	Z =  -357.824  mm,
	W =     3.655 deg,	P =    11.975 deg,	R =  -162.848 deg
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   239.511  mm,	Y = -1201.035  mm,	Z =  -357.824  mm,
	W =     3.655 deg,	P =    11.975 deg,	R =  -162.848 deg
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   579.351  mm,	Y = -1201.036  mm,	Z =  -338.815  mm,
	W =     3.655 deg,	P =    11.975 deg,	R =  -162.848 deg
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   586.838  mm,	Y = -1197.581  mm,	Z =  -357.824  mm,
	W =     3.655 deg,	P =    11.975 deg,	R =  -162.848 deg
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   592.309  mm,	Y = -1197.792  mm,	Z =  -357.824  mm,
	W =     3.655 deg,	P =    11.975 deg,	R =  -162.848 deg
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   640.749  mm,	Y = -1197.102  mm,	Z =  -357.824  mm,
	W =     3.655 deg,	P =    11.975 deg,	R =  -162.848 deg
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   641.362  mm,	Y = -1397.010  mm,	Z =  -193.540  mm,
	W =     3.664 deg,	P =    11.972 deg,	R =  -162.841 deg
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -660.398  mm,	Y = -1235.731  mm,	Z =  -193.540  mm,
	W =     3.664 deg,	P =    11.972 deg,	R =  -162.841 deg
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   639.885  mm,	Y = -1197.102  mm,	Z =  -170.624  mm,
	W =     3.655 deg,	P =    11.975 deg,	R =  -162.848 deg
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   282.652  mm,	Y = -1348.220  mm,	Z =  -105.363  mm,
	W =    -1.118 deg,	P =    44.072 deg,	R =   130.339 deg
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   152.348  mm,	Y = -1365.478  mm,	Z =  -324.490  mm,
	W =    -1.123 deg,	P =    44.071 deg,	R =   130.331 deg
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   179.178  mm,	Y = -1392.787  mm,	Z =  -515.259  mm,
	W =    -1.127 deg,	P =    44.065 deg,	R =   130.327 deg
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   180.571  mm,	Y = -1394.243  mm,	Z =  -507.807  mm,
	W =    -1.125 deg,	P =    44.068 deg,	R =   130.332 deg
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -661.604  mm,	Y = -1581.986  mm,	Z =  -443.484  mm,
	W =     -.183 deg,	P =    44.598 deg,	R =  -143.027 deg
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -690.695  mm,	Y = -1517.240  mm,	Z =  -247.933  mm,
	W =     -.183 deg,	P =    44.601 deg,	R =  -152.530 deg
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -208.121  mm,	Y = -1396.621  mm,	Z =  -515.024  mm,
	W =    -1.125 deg,	P =    44.062 deg,	R =    43.302 deg
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -621.276  mm,	Y = -1552.091  mm,	Z =  -518.269  mm,
	W =     -.183 deg,	P =    44.598 deg,	R =  -173.915 deg
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -618.982  mm,	Y = -1472.550  mm,	Z =  -520.093  mm,
	W =     -.183 deg,	P =    44.598 deg,	R =  -143.027 deg
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -213.379  mm,	Y = -1208.201  mm,	Z =  -515.282  mm,
	W =    -1.125 deg,	P =    44.062 deg,	R =   -48.714 deg
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -249.573  mm,	Y = -1581.986  mm,	Z =  -443.484  mm,
	W =     -.183 deg,	P =    44.598 deg,	R =  -143.027 deg
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -221.690  mm,	Y = -1550.336  mm,	Z =  -518.747  mm,
	W =     -.186 deg,	P =    44.600 deg,	R =  -177.371 deg
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   177.868  mm,	Y = -1205.023  mm,	Z =  -514.931  mm,
	W =    -1.125 deg,	P =    44.061 deg,	R =  -142.458 deg
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -223.250  mm,	Y = -1469.725  mm,	Z =  -518.363  mm,
	W =     -.183 deg,	P =    44.598 deg,	R =  -143.027 deg
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   134.234  mm,	Y = -1581.985  mm,	Z =  -443.484  mm,
	W =     -.183 deg,	P =    44.598 deg,	R =  -143.027 deg
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -609.518  mm,	Y = -1402.434  mm,	Z =  -515.294  mm,
	W =    -1.423 deg,	P =    45.106 deg,	R =    46.146 deg
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   136.790  mm,	Y = -1329.554  mm,	Z =  -213.374  mm,
	W =    -1.317 deg,	P =    44.804 deg,	R =   127.443 deg
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -44.985  mm,	Y = -1256.647  mm,	Z =  -122.437  mm,
	W =     1.256 deg,	P =    45.853 deg,	R =   -43.746 deg
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -735.225  mm,	Y = -1256.646  mm,	Z =  -119.437  mm,
	W =     -.355 deg,	P =    45.974 deg,	R =   -44.909 deg
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -810.005  mm,	Y = -1242.615  mm,	Z =  -482.298  mm,
	W =    -1.409 deg,	P =    45.115 deg,	R =  -114.721 deg
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -811.449  mm,	Y = -1213.288  mm,	Z =  -516.526  mm,
	W =    -1.410 deg,	P =    45.117 deg,	R =   -88.294 deg
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   177.230  mm,	Y = -1545.982  mm,	Z =  -518.975  mm,
	W =     -.183 deg,	P =    44.595 deg,	R =  -175.432 deg
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -688.204  mm,	Y = -1211.703  mm,	Z =  -516.282  mm,
	W =    -1.409 deg,	P =    45.115 deg,	R =  -141.392 deg
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   176.366  mm,	Y = -1466.209  mm,	Z =  -518.976  mm,
	W =     -.183 deg,	P =    44.596 deg,	R =  -143.032 deg
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   533.594  mm,	Y = -1581.985  mm,	Z =  -443.484  mm,
	W =     -.183 deg,	P =    44.598 deg,	R =  -143.027 deg
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -684.675  mm,	Y = -1402.697  mm,	Z =  -516.282  mm,
	W =    -1.409 deg,	P =    45.115 deg,	R =   132.028 deg
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   578.867  mm,	Y = -1541.396  mm,	Z =  -520.312  mm,
	W =     -.183 deg,	P =    44.598 deg,	R =  -177.587 deg
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   578.867  mm,	Y = -1465.656  mm,	Z =  -520.312  mm,
	W =     -.183 deg,	P =    44.598 deg,	R =  -143.027 deg
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -810.339  mm,	Y = -1403.908  mm,	Z =  -516.282  mm,
	W =    -1.409 deg,	P =    45.114 deg,	R =    90.052 deg
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   738.815  mm,	Y = -1368.203  mm,	Z =  -163.620  mm,
	W =    -1.424 deg,	P =    45.107 deg,	R =    76.034 deg
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   780.421  mm,	Y = -1388.603  mm,	Z =  -515.816  mm,
	W =    -1.424 deg,	P =    45.107 deg,	R =    92.278 deg
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   781.285  mm,	Y = -1377.082  mm,	Z =  -501.733  mm,
	W =    -1.424 deg,	P =    45.107 deg,	R =    62.614 deg
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -48.166  mm,	Y = -1581.984  mm,	Z =  -217.885  mm,
	W =     -.183 deg,	P =    44.596 deg,	R =   -33.299 deg
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -718.542  mm,	Y = -1368.191  mm,	Z =  -451.560  mm,
	W =    -1.420 deg,	P =    45.111 deg,	R =   126.504 deg
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -718.542  mm,	Y = -1368.191  mm,	Z =  -163.561  mm,
	W =    -1.420 deg,	P =    45.111 deg,	R =   126.504 deg
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   658.532  mm,	Y = -1389.695  mm,	Z =  -516.133  mm,
	W =    -1.424 deg,	P =    45.107 deg,	R =    41.014 deg
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -533.926  mm,	Y = -1581.985  mm,	Z =  -443.484  mm,
	W =     -.183 deg,	P =    44.597 deg,	R =   -36.323 deg
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -571.750  mm,	Y = -1581.987  mm,	Z =  -443.579  mm,
	W =     -.179 deg,	P =    44.597 deg,	R =   -36.318 deg
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -607.509  mm,	Y = -1551.402  mm,	Z =  -519.419  mm,
	W =     -.179 deg,	P =    44.597 deg,	R =    -4.566 deg
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   653.796  mm,	Y = -1203.415  mm,	Z =  -516.132  mm,
	W =    -1.424 deg,	P =    45.106 deg,	R =   -49.922 deg
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -608.175  mm,	Y = -1474.797  mm,	Z =  -519.419  mm,
	W =     -.178 deg,	P =    44.597 deg,	R =   -36.318 deg
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   779.257  mm,	Y = -1202.660  mm,	Z =  -516.132  mm,
	W =      .106 deg,	P =    45.137 deg,	R =   -91.102 deg
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   691.579  mm,	Y = -1267.634  mm,	Z =  -295.813  mm,
	W =    -1.424 deg,	P =    45.106 deg,	R =   -47.546 deg
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -194.322  mm,	Y = -1135.139  mm,	Z =  -517.171  mm,
	W =     -.371 deg,	P =    44.744 deg,	R =    89.242 deg
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -556.353  mm,	Y = -1351.093  mm,	Z =  -267.492  mm,
	W =      .963 deg,	P =    44.840 deg,	R =    44.488 deg
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -556.353  mm,	Y = -1351.092  mm,	Z =  -473.702  mm,
	W =      .963 deg,	P =    44.840 deg,	R =    44.488 deg
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -283.969  mm,	Y = -1399.291  mm,	Z =  -518.170  mm,
	W =    -2.142 deg,	P =    44.802 deg,	R =   135.018 deg
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -184.871  mm,	Y = -1581.987  mm,	Z =  -443.580  mm,
	W =     -.179 deg,	P =    44.597 deg,	R =   -36.318 deg
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -208.740  mm,	Y = -1548.145  mm,	Z =  -519.502  mm,
	W =     -.179 deg,	P =    44.597 deg,	R =    -8.454 deg
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -610.651  mm,	Y = -1402.320  mm,	Z =  -515.121  mm,
	W =    -1.423 deg,	P =    45.106 deg,	R =    46.146 deg
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -210.352  mm,	Y = -1471.541  mm,	Z =  -519.503  mm,
	W =     -.179 deg,	P =    44.597 deg,	R =   -36.318 deg
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   226.968  mm,	Y = -1581.986  mm,	Z =  -443.580  mm,
	W =     -.179 deg,	P =    44.597 deg,	R =   -36.318 deg
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -612.384  mm,	Y = -1211.273  mm,	Z =  -515.401  mm,
	W =    -1.423 deg,	P =    45.105 deg,	R =   -48.894 deg
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   190.872  mm,	Y = -1545.449  mm,	Z =  -519.517  mm,
	W =     -.179 deg,	P =    44.597 deg,	R =    -4.350 deg
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   188.854  mm,	Y = -1467.233  mm,	Z =  -519.517  mm,
	W =     -.179 deg,	P =    44.597 deg,	R =   -36.318 deg
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -285.747  mm,	Y = -1208.260  mm,	Z =  -515.709  mm,
	W =    -1.423 deg,	P =    45.104 deg,	R =  -146.814 deg
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   619.128  mm,	Y = -1581.986  mm,	Z =  -443.580  mm,
	W =     -.179 deg,	P =    44.597 deg,	R =   -36.318 deg
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   592.080  mm,	Y = -1542.329  mm,	Z =  -519.822  mm,
	W =     -.178 deg,	P =    44.597 deg,	R =    -5.322 deg
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   157.038  mm,	Y = -1131.970  mm,	Z =  -516.115  mm,
	W =     -.371 deg,	P =    44.743 deg,	R =    89.242 deg
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -595.118  mm,	Y = -1386.594  mm,	Z =  -263.775  mm,
	W =    -1.423 deg,	P =    45.106 deg,	R =    46.146 deg
};
P[96]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   363.264  mm,	Y = -1295.425  mm,	Z =  -255.305  mm,
	W =    -1.427 deg,	P =    45.097 deg,	R =   145.363 deg
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   559.104  mm,	Y = -1371.746  mm,	Z =  -505.865  mm,
	W =    -1.427 deg,	P =    45.097 deg,	R =   145.364 deg
};
P[98]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   578.499  mm,	Y = -1389.764  mm,	Z =  -516.983  mm,
	W =    -1.483 deg,	P =    45.010 deg,	R =   135.169 deg
};
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   590.747  mm,	Y = -1463.996  mm,	Z =  -519.821  mm,
	W =     -.178 deg,	P =    44.597 deg,	R =   -36.318 deg
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -918.901  mm,	Y = -1561.435  mm,	Z =  -246.993  mm,
	W =     -.382 deg,	P =    44.747 deg,	R =   -91.207 deg
};
P[101]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   254.791  mm,	Y = -1392.302  mm,	Z =  -516.394  mm,
	W =    -1.425 deg,	P =    45.094 deg,	R =    47.946 deg
};
P[102]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -824.872  mm,	Y = -1504.723  mm,	Z =  -490.935  mm,
	W =     -.376 deg,	P =    44.750 deg,	R =   -91.206 deg
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -809.987  mm,	Y = -1474.366  mm,	Z =  -519.086  mm,
	W =     -.375 deg,	P =    44.750 deg,	R =   -91.206 deg
};
P[104]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   253.913  mm,	Y = -1203.990  mm,	Z =  -514.810  mm,
	W =    -1.425 deg,	P =    45.094 deg,	R =   -47.958 deg
};
P[105]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -621.486  mm,	Y = -1475.765  mm,	Z =  -519.145  mm,
	W =     -.381 deg,	P =    44.763 deg,	R =  -139.159 deg
};
P[106]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -652.901  mm,	Y = -1518.993  mm,	Z =  -278.678  mm,
	W =     -.368 deg,	P =    44.699 deg,	R =  -139.499 deg
};
P[107]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   577.758  mm,	Y = -1201.707  mm,	Z =  -514.811  mm,
	W =     -.448 deg,	P =    44.577 deg,	R =  -138.134 deg
};
P[108]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -241.062  mm,	Y = -1487.312  mm,	Z =  -278.678  mm,
	W =     -.368 deg,	P =    44.699 deg,	R =  -139.499 deg
};
P[109]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -223.674  mm,	Y = -1470.781  mm,	Z =  -519.078  mm,
	W =     -.372 deg,	P =    44.702 deg,	R =  -139.499 deg
};
P[110]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   575.074  mm,	Y = -1387.195  mm,	Z =  -510.542  mm,
	W =     -.090 deg,	P =    43.527 deg,	R =   135.714 deg
};
P[111]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   368.185  mm,	Y = -1286.841  mm,	Z =  -247.933  mm,
	W =     -.183 deg,	P =    44.604 deg,	R =   -93.562 deg
};
P[112]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -607.665  mm,	Y = -1474.058  mm,	Z =  -518.739  mm,
	W =     -.370 deg,	P =    44.703 deg,	R =   -37.547 deg
};
P[113]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -584.260  mm,	Y = -1495.298  mm,	Z =  -275.682  mm,
	W =     -.370 deg,	P =    44.703 deg,	R =   -37.547 deg
};
P[114]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -181.060  mm,	Y = -1486.134  mm,	Z =  -275.682  mm,
	W =     -.371 deg,	P =    44.703 deg,	R =   -37.547 deg
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -208.708  mm,	Y = -1471.298  mm,	Z =  -517.378  mm,
	W =     -.371 deg,	P =    44.703 deg,	R =   -37.547 deg
};
P[116]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   176.685  mm,	Y = -1466.326  mm,	Z =  -519.678  mm,
	W =     -.009 deg,	P =    44.172 deg,	R =  -139.771 deg
};
P[117]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   152.828  mm,	Y = -1493.336  mm,	Z =  -277.410  mm,
	W =     -.371 deg,	P =    44.702 deg,	R =  -141.227 deg
};
P[118]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   518.587  mm,	Y = -1493.336  mm,	Z =  -277.410  mm,
	W =     -.371 deg,	P =    44.702 deg,	R =  -141.227 deg
};
P[119]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   189.046  mm,	Y = -1467.297  mm,	Z =  -518.466  mm,
	W =     -.371 deg,	P =    44.701 deg,	R =   -45.215 deg
};
P[120]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   576.953  mm,	Y = -1463.326  mm,	Z =  -521.058  mm,
	W =     -.371 deg,	P =    44.700 deg,	R =  -140.255 deg
};
P[121]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   203.446  mm,	Y = -1483.137  mm,	Z =  -296.706  mm,
	W =     -.371 deg,	P =    44.701 deg,	R =   -45.215 deg
};
P[122]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   781.820  mm,	Y = -1501.687  mm,	Z =  -263.298  mm,
	W =     -.371 deg,	P =    44.701 deg,	R =   -94.031 deg
};
P[123]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   778.363  mm,	Y = -1461.021  mm,	Z =  -520.366  mm,
	W =     -.371 deg,	P =    44.701 deg,	R =   -94.031 deg
};
P[124]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   590.984  mm,	Y = -1465.225  mm,	Z =  -519.985  mm,
	W =     -.369 deg,	P =    44.707 deg,	R =   -45.216 deg
};
P[125]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   618.952  mm,	Y = -1499.392  mm,	Z =  -219.336  mm,
	W =     -.369 deg,	P =    44.707 deg,	R =   -45.216 deg
};
P[126]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   562.660  mm,	Y = -1128.702  mm,	Z =  -517.160  mm,
	W =     -.377 deg,	P =    44.747 deg,	R =    87.626 deg
};
P[127]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   202.276  mm,	Y = -1131.794  mm,	Z =  -515.939  mm,
	W =     -.377 deg,	P =    44.746 deg,	R =    87.626 deg
};
P[128]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   603.704  mm,	Y = -1129.287  mm,	Z =  -517.479  mm,
	W =     -.380 deg,	P =    44.747 deg,	R =    90.433 deg
};
P[129]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -639.584  mm,	Y = -1472.867  mm,	Z =  -518.664  mm,
	W =     -.375 deg,	P =    44.751 deg,	R =   -91.206 deg
};
P[130]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -241.062  mm,	Y = -1469.447  mm,	Z =  -517.727  mm,
	W =     -.368 deg,	P =    44.699 deg,	R =   -89.027 deg
};
P[131]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -592.422  mm,	Y = -1471.077  mm,	Z =  -517.632  mm,
	W =     -.368 deg,	P =    44.699 deg,	R =   -89.027 deg
};
P[132]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -188.336  mm,	Y = -1467.744  mm,	Z =  -517.218  mm,
	W =     -.371 deg,	P =    44.703 deg,	R =   -91.907 deg
};
P[133]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   155.786  mm,	Y = -1465.780  mm,	Z =  -517.328  mm,
	W =     -.370 deg,	P =    44.709 deg,	R =   -91.908 deg
};
P[134]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   556.997  mm,	Y = -1462.293  mm,	Z =  -518.995  mm,
	W =     -.371 deg,	P =    44.702 deg,	R =   -90.899 deg
};
P[135]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   206.502  mm,	Y = -1465.173  mm,	Z =  -517.843  mm,
	W =     -.371 deg,	P =    44.702 deg,	R =   -90.899 deg
};
P[136]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   607.770  mm,	Y = -1462.363  mm,	Z =  -518.534  mm,
	W =     -.371 deg,	P =    44.701 deg,	R =   -94.031 deg
};
P[137]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -686.188  mm,	Y = -1224.952  mm,	Z =  -516.282  mm,
	W =    -1.409 deg,	P =    45.115 deg,	R =   176.704 deg
};
P[138]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -684.748  mm,	Y = -1387.480  mm,	Z =  -516.282  mm,
	W =    -1.409 deg,	P =    45.115 deg,	R =   176.704 deg
};
P[139]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   655.999  mm,	Y = -1377.581  mm,	Z =  -516.133  mm,
	W =    -1.424 deg,	P =    45.106 deg,	R =    -3.914 deg
};
P[140]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   655.134  mm,	Y = -1215.444  mm,	Z =  -516.133  mm,
	W =    -1.424 deg,	P =    45.106 deg,	R =    -3.914 deg
};
P[141]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.300  mm,	Y = -1203.415  mm,	Z =  -516.132  mm,
	W =     -.251 deg,	P =    44.417 deg,	R =   -91.696 deg
};
P[142]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   669.859  mm,	Y = -1389.696  mm,	Z =  -516.133  mm,
	W =      .380 deg,	P =    45.162 deg,	R =    88.085 deg
};
P[143]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -287.215  mm,	Y = -1224.485  mm,	Z =  -515.762  mm,
	W =    -1.425 deg,	P =    45.107 deg,	R =   176.464 deg
};
P[144]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -285.775  mm,	Y = -1384.903  mm,	Z =  -515.762  mm,
	W =    -1.425 deg,	P =    45.107 deg,	R =   176.464 deg
};
P[145]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   254.791  mm,	Y = -1379.726  mm,	Z =  -516.394  mm,
	W =    -1.425 deg,	P =    45.093 deg,	R =    -3.030 deg
};
P[146]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   253.351  mm,	Y = -1219.309  mm,	Z =  -516.394  mm,
	W =    -1.425 deg,	P =    45.093 deg,	R =    -3.030 deg
};
P[147]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -634.205  mm,	Y = -1141.358  mm,	Z =  -518.777  mm,
	W =     -.375 deg,	P =    44.684 deg,	R =    93.341 deg
};
P[148]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -236.557  mm,	Y = -1135.386  mm,	Z =  -515.848  mm,
	W =     -.378 deg,	P =    44.749 deg,	R =    91.324 deg
};
P[149]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -593.101  mm,	Y = -1137.402  mm,	Z =  -516.712  mm,
	W =     -.378 deg,	P =    44.749 deg,	R =    91.324 deg
};
P[150]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   538.944  mm,	Y = -1360.510  mm,	Z =  -474.183  mm,
	W =    -1.427 deg,	P =    45.097 deg,	R =   145.363 deg
};
P[151]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   180.526  mm,	Y = -1388.306  mm,	Z =  -516.580  mm,
	W =    -1.130 deg,	P =    44.065 deg,	R =   130.322 deg
};
P[152]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   576.334  mm,	Y = -1385.879  mm,	Z =  -513.561  mm,
	W =     -.090 deg,	P =    43.527 deg,	R =   135.714 deg
};
P[167]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -623.680  mm,	Y = -1136.063  mm,	Z =  -516.554  mm,
	W =     -.366 deg,	P =    44.758 deg,	R =   153.674 deg
};
P[168]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -624.346  mm,	Y = -1060.900  mm,	Z =  -516.554  mm,
	W =     -.366 deg,	P =    44.757 deg,	R =   175.274 deg
};
P[169]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -688.699  mm,	Y = -1039.272  mm,	Z =  -383.053  mm,
	W =     -.373 deg,	P =    44.758 deg,	R =   153.676 deg
};
P[170]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -285.498  mm,	Y = -1039.271  mm,	Z =  -383.053  mm,
	W =     -.373 deg,	P =    44.758 deg,	R =   153.676 deg
};
P[171]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -224.146  mm,	Y = -1053.800  mm,	Z =  -517.214  mm,
	W =     -.372 deg,	P =    44.759 deg,	R =   173.542 deg
};
P[172]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -222.534  mm,	Y = -1131.844  mm,	Z =  -517.214  mm,
	W =     -.372 deg,	P =    44.760 deg,	R =   153.670 deg
};
P[173]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   174.958  mm,	Y = -1053.379  mm,	Z =  -517.266  mm,
	W =     -.372 deg,	P =    44.759 deg,	R =   173.113 deg
};
P[174]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   150.821  mm,	Y = -1039.271  mm,	Z =  -383.053  mm,
	W =     -.373 deg,	P =    44.758 deg,	R =   153.675 deg
};
P[175]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   176.110  mm,	Y = -1128.681  mm,	Z =  -517.266  mm,
	W =     -.372 deg,	P =    44.759 deg,	R =   153.673 deg
};
P[176]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   528.100  mm,	Y = -1039.271  mm,	Z =  -383.053  mm,
	W =     -.373 deg,	P =    44.758 deg,	R =   153.675 deg
};
P[177]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   577.303  mm,	Y = -1049.689  mm,	Z =  -518.284  mm,
	W =     -.372 deg,	P =    44.759 deg,	R =   168.790 deg
};
P[178]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   577.303  mm,	Y = -1126.582  mm,	Z =  -518.284  mm,
	W =     -.372 deg,	P =    44.760 deg,	R =   153.670 deg
};
P[179]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -580.259  mm,	Y = -1039.322  mm,	Z =  -381.174  mm,
	W =     -.371 deg,	P =    44.755 deg,	R =    34.332 deg
};
P[180]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -15.779  mm,	Y =  -914.522  mm,	Z =  -168.053  mm,
	W =     -.371 deg,	P =    44.753 deg,	R =    86.388 deg
};
P[181]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -611.842  mm,	Y = -1060.516  mm,	Z =  -516.741  mm,
	W =     -.370 deg,	P =    44.755 deg,	R =     1.932 deg
};
P[182]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -610.093  mm,	Y = -1138.567  mm,	Z =  -517.297  mm,
	W =     -.370 deg,	P =    44.755 deg,	R =    34.332 deg
};
P[183]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -153.539  mm,	Y = -1039.322  mm,	Z =  -381.174  mm,
	W =     -.371 deg,	P =    44.755 deg,	R =    34.332 deg
};
P[184]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -211.168  mm,	Y = -1055.739  mm,	Z =  -516.822  mm,
	W =     -.370 deg,	P =    44.755 deg,	R =     4.092 deg
};
P[185]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -209.556  mm,	Y = -1134.647  mm,	Z =  -516.823  mm,
	W =     -.370 deg,	P =    44.755 deg,	R =    34.332 deg
};
P[186]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   241.500  mm,	Y = -1039.322  mm,	Z =  -381.174  mm,
	W =     -.371 deg,	P =    44.755 deg,	R =    34.332 deg
};
P[187]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   187.321  mm,	Y = -1053.316  mm,	Z =  -516.749  mm,
	W =     -.368 deg,	P =    44.757 deg,	R =    16.644 deg
};
P[188]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   188.578  mm,	Y = -1131.140  mm,	Z =  -516.770  mm,
	W =     -.367 deg,	P =    44.755 deg,	R =    34.339 deg
};
P[189]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   636.540  mm,	Y = -1039.322  mm,	Z =  -381.174  mm,
	W =     -.370 deg,	P =    44.755 deg,	R =    34.332 deg
};
P[190]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   588.312  mm,	Y = -1050.172  mm,	Z =  -518.764  mm,
	W =     -.369 deg,	P =    44.757 deg,	R =    34.480 deg
};
P[191]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   588.978  mm,	Y = -1127.352  mm,	Z =  -518.764  mm,
	W =     -.369 deg,	P =    44.755 deg,	R =    34.332 deg
};
P[192]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -15.779  mm,	Y =  -914.522  mm,	Z =  -168.053  mm,
	W =     -.371 deg,	P =    44.753 deg,	R =    86.388 deg
};
P[193]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -810.700  mm,	Y = -1031.574  mm,	Z =  -298.684  mm,
	W =     -.378 deg,	P =    44.750 deg,	R =    86.378 deg
};
P[194]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -814.204  mm,	Y = -1141.358  mm,	Z =  -517.913  mm,
	W =     -.375 deg,	P =    44.684 deg,	R =    93.341 deg
};
P[195]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -623.027  mm,	Y = -1140.534  mm,	Z =  -517.852  mm,
	W =     -.372 deg,	P =    44.685 deg,	R =   134.097 deg
};
P[196]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -644.884  mm,	Y = -1113.942  mm,	Z =  -327.869  mm,
	W =     -.378 deg,	P =    44.749 deg,	R =   130.420 deg
};
P[197]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -237.684  mm,	Y = -1126.902  mm,	Z =  -339.869  mm,
	W =     -.378 deg,	P =    44.749 deg,	R =   130.420 deg
};
P[198]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -224.077  mm,	Y = -1133.081  mm,	Z =  -515.848  mm,
	W =     -.378 deg,	P =    44.749 deg,	R =   130.420 deg
};
P[199]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -609.105  mm,	Y = -1138.450  mm,	Z =  -515.849  mm,
	W =     -.378 deg,	P =    44.748 deg,	R =    38.836 deg
};
P[200]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -580.981  mm,	Y = -1103.094  mm,	Z =  -329.501  mm,
	W =     -.377 deg,	P =    44.748 deg,	R =    36.100 deg
};
P[201]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -200.821  mm,	Y = -1124.694  mm,	Z =  -328.541  mm,
	W =     -.377 deg,	P =    44.748 deg,	R =    36.100 deg
};
P[202]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -209.749  mm,	Y = -1135.190  mm,	Z =  -517.085  mm,
	W =     -.377 deg,	P =    44.748 deg,	R =    36.100 deg
};
P[203]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   175.596  mm,	Y = -1130.068  mm,	Z =  -516.807  mm,
	W =     -.377 deg,	P =    44.747 deg,	R =   131.402 deg
};
P[204]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   144.874  mm,	Y = -1108.490  mm,	Z =  -319.326  mm,
	W =     -.377 deg,	P =    44.747 deg,	R =   131.402 deg
};
P[205]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   563.434  mm,	Y = -1120.491  mm,	Z =  -325.086  mm,
	W =     -.377 deg,	P =    44.747 deg,	R =   131.402 deg
};
P[206]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   573.700  mm,	Y = -1128.702  mm,	Z =  -516.160  mm,
	W =     -.377 deg,	P =    44.747 deg,	R =   131.402 deg
};
P[207]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   188.267  mm,	Y = -1130.965  mm,	Z =  -516.624  mm,
	W =     -.380 deg,	P =    44.748 deg,	R =    45.592 deg
};
P[208]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   219.215  mm,	Y = -1094.438  mm,	Z =  -316.344  mm,
	W =     -.380 deg,	P =    44.748 deg,	R =    45.592 deg
};
P[209]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   835.537  mm,	Y = -1123.238  mm,	Z =  -348.984  mm,
	W =     -.380 deg,	P =    44.748 deg,	R =    45.592 deg
};
P[210]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   775.441  mm,	Y = -1126.598  mm,	Z =  -518.143  mm,
	W =     -.380 deg,	P =    44.747 deg,	R =    91.312 deg
};
P[211]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   590.552  mm,	Y = -1126.598  mm,	Z =  -516.532  mm,
	W =     -.379 deg,	P =    44.747 deg,	R =    45.592 deg
};
P[212]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   628.088  mm,	Y = -1087.239  mm,	Z =  -311.256  mm,
	W =     -.380 deg,	P =    44.747 deg,	R =    45.592 deg
};
/END
