////////////////////////////////////////
// Pooky's Parents' Dialogue
////////////////////////////////////////

BEGIN B#PMOM

BEGIN B#PDAD

CHAIN IF ~NumTimesTalkedTo(0)~ THEN B#PDAD meet
   @100
== B#PMOM @101
== B#PDAD @102
END
+ + @103 EXTERN B#PDAD meet1

CHAIN B#PDAD meet1
   @104
== B#PMOM @105
== B#PDAD @106
END
+ + @107 EXTERN B#PMOM meet2

CHAIN B#PMOM meet2
   @108
END
+ + @109 EXTERN B#PDAD meet3

CHAIN B#PDAD meet3
   @110
== B#PMOM @111
== B#PDAD @112
== B#PMOM @113
== B#PDAD @114
== B#PMOM @115
DO ~SetGlobal("b#PookyParentsTalked","GLOBAL",1)~
EXIT
