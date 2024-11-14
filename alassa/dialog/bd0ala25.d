BEGIN BD0ALA25

CHAIN IF
~IsValidForPartyDialog("Sarevok")
Global("D0AlasSarevok","GLOBAL",0)~
THEN BD0ALA25 BA2_999
@0 DO ~SetGlobal("D0AlasSarevok","GLOBAL",1)~
== BSAREV25 @1
== BD0ALA25 @2
== BSAREV25 @3
== BD0ALA25 @4
== BSAREV25 @5
== BD0ALA25 @6
== BSAREV25 @7
== BD0ALA25 @8
= @9
EXIT

CHAIN IF
~IsValidForPartyDialog("Imoen2")
Global("D0AlasImoen2","GLOBAL",0)~
THEN BD0ALA25 BA2_998
@10 DO ~SetGlobal("D0AlasImoen2","GLOBAL",1)~
== BIMOEN25 @11
== BD0ALA25 IF ~NumInParty(3)~ THEN @12
== BD0ALA25 IF ~NumInPartyGT(3)~ THEN @13
= IF ~Gender(Player1,MALE)~ THEN @14
= IF ~!Gender(Player1,MALE)~ THEN @15
== BIMOEN25 @16
== BD0ALA25 @17
= @18
EXIT
