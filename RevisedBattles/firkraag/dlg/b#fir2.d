////////////////////
// Talk to PC
////////////////////

BEGIN b#fir2

IF ~NumTimesTalkedTo(0)~ THEN BEGIN meet
  SAY @54
  IF ~~ THEN REPLY @55 GOTO fight
END

IF ~~ THEN BEGIN fight
  SAY @56
  IF ~~ THEN EXIT
END