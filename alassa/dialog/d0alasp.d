BEGIN D0ALASP

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN AP_1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO AP_2
  IF ~~ THEN REPLY @2 GOTO AP_3
END

IF ~~ THEN BEGIN AP_2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN AP_3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",0)
Global("D0AlassaQuest","LOCALS",0)~ THEN BEGIN AP_4
  SAY @5
  IF ~~ THEN REPLY @6 GOTO AP_5
  IF ~~ THEN REPLY @7 GOTO AP_6
END

IF ~~ THEN BEGIN AP_5
  SAY @8
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN AP_6
  SAY @9
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)
GlobalGT("D0AlassaQuest","LOCALS",0)~ THEN BEGIN AP_7
  SAY @10
  IF ~~ THEN REPLY @6 GOTO AP_8
  IF ~~ THEN REPLY @7 GOTO AP_6
END

IF ~~ THEN BEGIN AP_8
  SAY @11
  IF ~!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @12 DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0400",3336,1741,5)~ EXIT
  IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")~ THEN REPLY @13 DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END
