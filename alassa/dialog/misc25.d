EXTEND_TOP FATESP 6 #1
  IF ~!Dead("D0Alassa")
!InMyArea("D0Alassa")
Global("D0AlassaSummoned","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("D0Alas25",[1999.1228],0)
SetGlobal("D0AlassaSummoned","GLOBAL",1)~ GOTO 8
END

I_C_T FINSOL01 27 D0AlassaAscend
== D0ALA25J IF ~InParty("D0Alassa")~ THEN @1
== D0ALA25J IF ~InParty("D0Alassa")~ THEN @2
END

EXTEND_TOP SARVOLO 9 #3
IF ~InParty("D0Alassa")~ THEN REPLY @3 GOTO VO_1
END

CHAIN SARVOLO VO_1
@4
== D0ALA25J IF ~IsValidForPartyDialog("D0Alassa")~ THEN @5
EXTERN SARVOLO 9
