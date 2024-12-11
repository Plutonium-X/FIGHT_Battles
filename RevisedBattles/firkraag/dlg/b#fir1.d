////////////////////
// Talk to PC
////////////////////

BEGIN b#fir1

IF ~NumTimesTalkedTo(0)~ THEN BEGIN meet
  SAY @52 = @53
  IF ~~ THEN EXIT
END