BEGIN D0ALAS25

IF ~Global("D0AlassaSummoned","GLOBAL",1)~ THEN BEGIN A2_1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO A2_2
  IF ~~ THEN REPLY @2 GOTO A2_3
  IF ~Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @3 GOTO A2_4
  IF ~!Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @3 GOTO A2_4a
  IF ~~ THEN REPLY @4 GOTO A2_5
END

IF ~~ THEN BEGIN A2_2
  SAY @5
  IF ~~ THEN REPLY @2 GOTO A2_3
  IF ~Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @3 GOTO A2_4
  IF ~!Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @3 GOTO A2_4a
  IF ~~ THEN REPLY @4 GOTO A2_5
END

IF ~~ THEN BEGIN A2_3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("D0AlassaSummoned","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN A2_4
  SAY @7
  IF ~~ THEN DO ~SetGlobal("D0AlassaSummoned","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN A2_4a
  SAY @8
  IF ~~ THEN DO ~SetGlobal("D0AlassaSummoned","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN A2_5
  SAY @9
  IF ~~ THEN DO ~SetGlobal("D0AlassaSummoned","GLOBAL",2)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ EXIT
END

IF ~Global("D0AlassaSummoned","GLOBAL",2)~ THEN BEGIN A2_6
  SAY @10
  IF ~~ THEN REPLY @11 GOTO A2_7
  IF ~~ THEN REPLY @12 GOTO A2_8
END

IF ~~ THEN BEGIN A2_7
  SAY @13
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN A2_8
  SAY @14
  IF ~~ THEN EXIT
END
