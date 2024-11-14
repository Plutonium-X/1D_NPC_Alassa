EXTEND_BOTTOM TRGYP02 2
IF ~Name("D0Alassa",LastTalkedToBy(Myself))~
 THEN EXTERN TRGYP02 A_1
END

CHAIN TRGYP02 A_1
@0
== D0ALASJ @1
EXIT

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("D0Alassa")
Global("D0AlassaToL","GLOBAL",0)~ THEN DO ~SetGlobal("D0AlassaToL","GLOBAL",1)~ GOTO P1A_1
END

APPEND PLAYER1
IF ~~ THEN BEGIN P1A_1
  SAY @2
  IF ~~ THEN REPLY @3 EXTERN D0ALASJ P1A_2
  IF ~~ THEN REPLY @4 EXTERN D0ALASJ P1A_3
  IF ~~ THEN REPLY @5 EXTERN D0ALASJ P1A_4
END
END

APPEND D0ALASJ
IF ~~ THEN BEGIN P1A_2
  SAY @6
  IF ~~ THEN GOTO P1A_5
END

IF ~~ THEN BEGIN P1A_3
  SAY @7
  IF ~~ THEN GOTO P1A_5
END

IF ~~ THEN BEGIN P1A_4
  SAY @8
  IF ~~ THEN GOTO P1A_5
END

IF ~~ THEN BEGIN P1A_5
  SAY @9
  COPY_TRANS PLAYER1 33
END
END

I_C_T PLAYER1 16 D0AlassaIrenicusDead
== D0ALASJ IF ~IsValidForPartyDialog("D0Alassa")~ THEN @10
END

I_C_T PLAYER1 25 D0AlassaInHell
== D0ALASJ IF ~IsValidForPartyDialog("D0Alassa")~ THEN @11
END

I_C_T HELLJON 7 D0AlassaDoesntLikeIrenicus
== D0ALASJ IF ~IsValidForPartyDialog("D0Alassa")~ THEN @12
END

I_C_T HELLJON 8 D0AlassaDoesntLikeIrenicus
== D0ALASJ IF ~IsValidForPartyDialog("D0Alassa")~ THEN @12
END

I_C_T HELLJON 9 D0AlassaDoesntLikeIrenicus
== D0ALASJ IF ~IsValidForPartyDialog("D0Alassa")~ THEN @12
END

I_C_T HELLJON 10 D0AlassaDoesntLikeIrenicus
== D0ALASJ IF ~IsValidForPartyDialog("D0Alassa")~ THEN @12
END

I_C_T IMOEN2 22 D0AlassaLeaveImoen
== D0ALASJ IF ~IsValidForPartyDialog("D0Alassa")~ THEN @13
END

I_C_T BODHI 12 D0AlassaBodhi
== D0ALASJ IF ~IsValidForPartyDialog("D0Alassa")~ THEN @14
END

I_C_T BODHI 26 D0AlassaBodhi2
== D0ALASJ IF ~IsValidForPartyDialog("D0Alassa")~ THEN @15
END
