BEGIN BD0ALAS

IF ~Global("D0AlassaQuest","LOCALS",0)
AreaCheck("ar0800")~ THEN BEGIN AJ_0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("D0AlassaQuest","LOCALS",1)~ EXIT
END

IF ~Global("D0AlassaQuest","LOCALS",1)
!AreaCheck("ar0800")~ THEN BEGIN AJ_1
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("D0AlassaQuest","LOCALS",2)~ GOTO AJ_2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("D0AlassaQuest","LOCALS",2)~ GOTO AJ_2
  IF ~~ THEN REPLY @4 DO ~SetGlobal("D0AlassaQuest","LOCALS",2)~ GOTO AJ_2
END

IF ~~ THEN BEGIN AJ_2
  SAY @5
  IF ~NumInParty(2)
Gender(Player1,MALE)~ THEN GOTO AJ_3
  IF ~OR(2)
NumInPartyGT(2)
!Gender(Player1,MALE)~ THEN GOTO AJ_4
END

IF ~~ THEN BEGIN AJ_3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO AJ_5
  IF ~~ THEN REPLY @8 GOTO AJ_5
  IF ~~ THEN REPLY @9 GOTO AJ_6
END

IF ~~ THEN BEGIN AJ_4
  SAY @10
  IF ~~ THEN REPLY @11 GOTO AJ_7
  IF ~~ THEN REPLY @12 GOTO AJ_8
  IF ~~ THEN REPLY @13 GOTO AJ_9
END

IF ~~ THEN BEGIN AJ_5
  SAY @14
  IF ~~ THEN GOTO AJ_4
END

IF ~~ THEN BEGIN AJ_6
  SAY @15
  IF ~~ THEN GOTO AJ_4
END

IF ~~ THEN BEGIN AJ_7
  SAY @16
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN AJ_8
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AJ_9
  SAY @18
  IF ~~ THEN EXIT
END

IF ~Global("D0AlassaQuest","LOCALS",2)
Global("D0AlassaBanter","LOCALS",0)~ THEN BEGIN BA_1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO BA_2
  IF ~~ THEN REPLY @21 GOTO BA_3
END

IF ~~ THEN BEGIN BA_2
  SAY @22
     =
      @23
  IF ~~ THEN REPLY @24 GOTO BA_4
  IF ~~ THEN REPLY @25 GOTO BA_4
END

IF ~~ THEN BEGIN BA_3
  SAY @26
  IF ~~ THEN GOTO BA_2
END

IF ~~ THEN BEGIN BA_4
  SAY @27
  IF ~~ THEN REPLY @28 GOTO BA_5
  IF ~~ THEN REPLY @29 GOTO BA_8
  IF ~~ THEN REPLY @30 GOTO BA_7
END

IF ~~ THEN BEGIN BA_5
  SAY @31
  IF ~~ THEN GOTO BA_8
END

// THERE IS NO BA_6

IF ~~ THEN BEGIN BA_7
  SAY @32
  IF ~~ THEN GOTO BA_8
END

IF ~~ THEN BEGIN BA_8
  SAY @33
     =
      @34
     =
      @35
     =
      @36
     =
      @37
     =
      @38
  IF ~InParty("Viconia")~ THEN DO ~SetGlobal("D0AlassaBanter","LOCALS",1)
SetGlobal("D0AlasViconia","GLOBAL",1)~ EXIT
  IF ~!InParty("Viconia")~ THEN DO ~SetGlobal("D0AlassaBanter","LOCALS",1)~ EXIT
END

IF ~GlobalGT("D0AlasAno","GLOBAL",0)
Global("D0AlasAno2","GLOBAL",0)
Global("AnomenRomanceActive","GLOBAL",2)~ THEN BEGIN BA_9
  SAY @39
  IF ~~ THEN REPLY @40 GOTO BA_10
  IF ~~ THEN REPLY @41 GOTO BA_11
  IF ~~ THEN REPLY @42 GOTO BA_10
END

IF ~~ THEN BEGIN BA_10
  SAY @43
     =
      @44
  IF ~~ THEN DO ~SetGlobal("D0AlasAno2","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BA_11
  SAY @45
     =
      @46
  IF ~~ THEN DO ~SetGlobal("D0AlasAno2","GLOBAL",1)~ EXIT
END

CHAIN IF WEIGHT #-1
~!Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)
Global("D0AlasAno","GLOBAL",2)
OR(2)
AreaType(OUTDOOR)
AreaType(DUNGEON)~
THEN BD0ALAS BA_999
@47 DO ~SetGlobal("D0AlasAno","GLOBAL",3)~
== BANOMEN @48
== BD0ALAS @49
== BANOMEN @50
== BD0ALAS @51
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira")~ THEN @52
== BD0ALAS IF ~IsValidForPartyDialog("Jaheira")~ THEN @53
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira")~ THEN @54
== BD0ALAS @55
== BANOMEN @56 DO ~RestParty()~
EXIT

CHAIN IF WEIGHT #-1
~Global("D0AlasAno","GLOBAL",3)
IsValidForPartyDialog("Viconia")~
THEN BD0ALAS BA_998
@57 DO ~SetGlobal("D0AlasAno","GLOBAL",4)~
== BVICONI @58
== BD0ALAS @59
== BVICONI @60
== BD0ALAS @61
== BVICONI @62
== BANOMEN IF ~IsValidForPartyDialog("Anomen")~ THEN @63
== BD0ALAS IF ~IsValidForPartyDialog("Anomen")~ THEN @64
== BVICONI IF ~IsValidForPartyDialog("Anomen")~ THEN @65
EXIT

CHAIN IF
~IsValidForPartyDialog("Korgan")
Global("D0AlasKorgan","GLOBAL",0)~
THEN BD0ALAS BA_997
@66 DO ~SetGlobal("D0AlasKorgan","GLOBAL",1)~
== BKORGAN @67
== BD0ALAS @68
== BKORGAN @69
== BD0ALAS @70
== BKORGAN @71
== BD0ALAS @72
EXIT

CHAIN IF
~IsValidForPartyDialog("Jaheira")
Global("D0AlasJaheira","GLOBAL",0)~
THEN BJAHEIR BA_996
@73 DO ~SetGlobal("D0AlasJaheira","GLOBAL",1)~
= IF ~GlobalGT("D0AlasAno","GLOBAL",0)~ THEN @74
== BD0ALAS @75
== BJAHEIR @76
== BD0ALAS @77
== BJAHEIR @78
== BD0ALAS @79
== BJAHEIR @80
EXIT

CHAIN IF
~IsValidForPartyDialog("Imoen2")
Global("D0AlasImoen","GLOBAL",0)~
THEN BD0ALAS BA_995
@81 DO ~SetGlobal("D0AlasImoen","GLOBAL",1)~
== IMOEN2J @82
== BD0ALAS @83
= @84
== IMOEN2J @85
== BD0ALAS @86
== IMOEN2J @87
== BMAZZY IF ~IsValidForPartyDialog("Mazzy")~ THEN @88 DO ~SetGlobal("D0AlasMazzy","GLOBAL",1)~
== BD0ALAS @89
= @90
EXIT

CHAIN IF
~IsValidForPartyDialog("Viconia")
Global("D0AlasViconia","GLOBAL",1)~
THEN BVICONI BA_994
@91 DO ~SetGlobal("D0AlasViconia","GLOBAL",2)~
== BD0ALAS @92
== BVICONI @93
== BD0ALAS @94
== BVICONI @95
EXIT

CHAIN IF
~IsValidForPartyDialog("Mazzy")
Global("D0AlasMazzy","GLOBAL",1)~
THEN BMAZZY BA_993
@96
== BD0ALAS @97
== BMAZZY @98
== BD0ALAS @99
== BMAZZY @100
== BD0ALAS @101
= @102
= @103
EXIT

/* CHAIN IF
~IsValidForPartyDialog("Yoshimo")
Global("D0AlasYoshi","GLOBAL",0)~
THEN BD0ALAS BA_992
~Ich weiﬂ, daﬂ Ihr ein Verr‰ter seid, Yoshimo.~
== BYOSHIM ~Verdammt.~
EXIT */

