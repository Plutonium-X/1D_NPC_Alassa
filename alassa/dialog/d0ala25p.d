BEGIN D0ALA25P

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN AP2_1
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ GOTO AP2_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @2 DO ~SetGlobal("KickedOut","LOCALS",1)~ GOTO AP2_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @2 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO AP2_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1810.1160],0)~ GOTO AP2_3
END

IF ~~ THEN BEGIN AP2_2
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AP2_3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN AP2_4
  SAY @6
  IF ~~ THEN REPLY @7 GOTO AP2_5
  IF ~~ THEN REPLY @8 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ GOTO AP2_6
END

IF ~~ THEN BEGIN AP2_5
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AP2_6
  SAY @10
  IF ~~ THEN EXIT
END
