// LRNYALEE

ADD_STATE_TRIGGER HGNYA01 22 ~!Name("lrirenic",LastTalkedToBy)~

EXTEND_BOTTOM HGNYA01 6
IF ~InParty("lrirenic")~
THEN EXTERN JONEL25J LRNYA2
END

EXTEND_BOTTOM HGNYA01 29
IF ~InParty("lrirenic")~
THEN EXTERN JONEL25J LRNYA3
END

APPEND HGNYA01

IF WEIGHT #-1
~Name("lrirenic",LastTalkedToBy)~ THEN BEGIN LRSCARECROW
  SAY @0
  IF ~~ THEN EXTERN ~JONEL25J~ LRNYA1
END
END

APPEND JONEL25J

IF ~~ THEN BEGIN LRNYA1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LRNYA2
  SAY @2
  IF ~~ THEN EXTERN HGNYA01 7
END

IF ~~ THEN BEGIN LRNYA3
  SAY @3
  IF ~~ THEN EXTERN HGNYA01 30 
END
END
