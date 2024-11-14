BEGIN D0ALASSA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN A_1
  SAY @0
  IF ~Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @1 GOTO A_2
  IF ~~ THEN REPLY @2 GOTO A_2
  IF ~Gender(LastTalkedToBy(Myself),MALE)
OR(4)
InPartySlot(LastTalkedToBy(Myself),0)
Name("j#kelsey",LastTalkedToBy(Myself))
Name("anomen",LastTalkedToBy(Myself))
Name("haerdalis",LastTalkedToBy(Myself))~ THEN REPLY @3 GOTO A_3
  IF ~!Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @3 GOTO A_3a
  IF ~Gender(LastTalkedToBy(Myself),MALE)
!InPartySlot(LastTalkedToBy(Myself),0)
!Name("j#kelsey",LastTalkedToBy(Myself))
!Name("anomen",LastTalkedToBy(Myself))
!Name("haerdalis",LastTalkedToBy(Myself))~ THEN REPLY @3 GOTO A_3a
  IF ~~ THEN REPLY @4 GOTO A_4
  IF ~~ THEN REPLY @5 GOTO A_5
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN A_1a
  SAY @6
  IF ~Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @7 GOTO A_2
  IF ~~ THEN REPLY @2 GOTO A_2
  IF ~Gender(LastTalkedToBy(Myself),MALE)
OR(4)
InPartySlot(LastTalkedToBy(Myself),0)
Name("j#kelsey",LastTalkedToBy(Myself))
Name("anomen",LastTalkedToBy(Myself))
Name("haerdalis",LastTalkedToBy(Myself))~ THEN REPLY @3 GOTO A_3
  IF ~!Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @3 GOTO A_3a
  IF ~Gender(LastTalkedToBy(Myself),MALE)
!InPartySlot(LastTalkedToBy(Myself),0)
!Name("j#kelsey",LastTalkedToBy(Myself))
!Name("anomen",LastTalkedToBy(Myself))
!Name("haerdalis",LastTalkedToBy(Myself))~ THEN REPLY @3 GOTO A_3a
  IF ~~ THEN REPLY @4 GOTO A_4
  IF ~~ THEN REPLY @5 GOTO A_5
END

IF ~~ THEN BEGIN A_2
  SAY @8
  IF ~~ THEN GOTO A_6
END

IF ~~ THEN BEGIN A_3
  SAY @9
  IF ~~ THEN GOTO A_6
END

IF ~~ THEN BEGIN A_3a
  SAY @10
  IF ~~ THEN GOTO A_6
END

IF ~~ THEN BEGIN A_4
  SAY @11
  IF ~~ THEN GOTO A_6
END

IF ~~ THEN BEGIN A_5
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN A_6
  SAY @13
     =
      @14
     =
      @15
     =
      @16
     =
      @17
  IF ~CheckStatGT(LastTalkedToBy(Myself),13,INT)~ THEN REPLY @18 GOTO A_7
  IF ~OR(2)
IsValidForPartyDialog("Anomen")
Name("Anomen",LastTalkedToBy(Myself))~ THEN REPLY @19 EXTERN ANOMENJ AI_2
  IF ~!IsValidForPartyDialog("Anomen")
!Name("Anomen",LastTalkedToBy(Myself))~ THEN REPLY @19 GOTO A_8
  IF ~OR(2)
IsValidForPartyDialog("Minsc")
Name("Minsc",LastTalkedToBy(Myself))~ THEN REPLY @20 EXTERN MINSCJ AI_1
  IF ~!IsValidForPartyDialog("Minsc")
!Name("Minsc",LastTalkedToBy(Myself))~ THEN REPLY @20 GOTO A_9
END

IF ~~ THEN BEGIN A_7
  SAY @23
  IF ~OR(2)
IsValidForPartyDialog("Anomen")
Name("Anomen",LastTalkedToBy(Myself))~ THEN REPLY @19 EXTERN ANOMENJ AI_2
  IF ~!IsValidForPartyDialog("Anomen")
!Name("Anomen",LastTalkedToBy(Myself))~ THEN REPLY @19 GOTO A_8
  IF ~OR(2)
IsValidForPartyDialog("Minsc")
Name("Minsc",LastTalkedToBy(Myself))~ THEN REPLY @22 EXTERN MINSCJ AI_1
  IF ~!IsValidForPartyDialog("Minsc")
!Name("Minsc",LastTalkedToBy(Myself))~ THEN REPLY @22 GOTO A_9
END

IF ~~ THEN BEGIN A_8
  SAY @22
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN A_9
  SAY @23
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

APPEND MINSCJ
IF ~~ THEN BEGIN AI_1
  SAY @24
  IF ~~ THEN EXTERN D0ALASSA A_9
END
END

APPEND ANOMENJ
IF ~~ THEN BEGIN AI_2
  SAY @25
  IF ~~ THEN EXTERN D0ALASSA A_8
END
END
