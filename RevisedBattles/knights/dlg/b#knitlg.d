////////////////////////////////////////
// Lug
////////////////////////////////////////

BEGIN b#knitlg

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Plead
  SAY @101
  IF ~~ THEN REPLY @102 GOTO Plead1
  IF ~!Class(Player1,PALADIN_ALL)
      !Class(Player1,RANGER_ALL)~ THEN REPLY @103 GOTO Plead1
END

IF ~~ THEN BEGIN Plead1
  SAY @104
  IF ~~ THEN REPLY @105 GOTO Plead2
END

IF ~~ THEN BEGIN Plead2
  SAY @106
  IF ~~ THEN DO ~SetGlobal("b#TalkedLug","GLOBAL",1)~ EXIT
END