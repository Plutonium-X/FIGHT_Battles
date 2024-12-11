////////////////////////////////////////
// Falahar Dialogue
////////////////////////////////////////

BEGIN DEMFIG02
BEGIN DEMMAG

BEGIN DEMFIG01

CHAIN IF ~NumTimesTalkedTo(0)~ THEN DEMFIG01 meet
   @120
END
+ + @121 EXTERN DEMFIG01 meet2

CHAIN DEMFIG01 meet2
   @122
END
+ + @123 EXTERN DEMFIG01 meet3

CHAIN DEMFIG01 meet3
   @124
END
+ + @125 EXTERN DEMFIG01 meet4

CHAIN DEMFIG01 meet4
   @126
== DEMMAG @127
== DEMFIG01 @128
END
+ + @129 EXTERN DEMFIG01 meet5

CHAIN DEMFIG01 meet5
   @130
== DEMMAG @131
== DEMFIG02 @132
== DEMFIG01 @133
EXIT
