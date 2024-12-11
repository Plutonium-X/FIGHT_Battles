////////////////////////////////////////
// Lord Samildanach
////////////////////////////////////////

// Initial Meeting

BEGIN b#knit01

IF ~Global("b#SamilWarned","GLOBAL",0)~ THEN BEGIN Warn
  SAY @201
  IF ~~ THEN REPLY @202 DO ~SetGlobal("b#SamilWarned","GLOBAL",2)~ GOTO Warn1
  IF ~~ THEN REPLY @204 GOTO Warn2
END

IF ~~ THEN BEGIN Warn1
  SAY @203
  IF ~~ THEN DO ~ActionOverride("b#knit01",ReallyForceSpell(Myself,DRYAD_TELEPORT))~ EXIT
END

IF ~~ THEN BEGIN Warn2
  SAY @205
  IF ~~ THEN REPLY @206 DO ~SetGlobal("b#SamilWarned","GLOBAL",2)~ GOTO Warn1
  IF ~~ THEN REPLY @207 GOTO Warn3
END

IF ~~ THEN BEGIN Warn3
  SAY @208
  IF ~~ THEN DO ~SetGlobal("b#SamilWarned","GLOBAL",1)
                 SetGlobalTimer("b#SamilChallengeTimer","GLOBAL",THREE_DAYS)
                 GiveItemCreate("b#note01",Player1,0,0,0)
                 AddJournalEntry(@301,QUEST)~ EXIT
END

// Meeting In Copper Coronet

IF ~Global("b#CreateSamilGroup2","GLOBAL",1)
    GlobalTimerNotExpired("b#SamilChallengeTimer","GLOBAL")~ THEN BEGIN Challenge
  SAY @401
  IF ~~ THEN REPLY @402 GOTO Challenge1
END

IF ~~ THEN BEGIN Challenge1
  SAY @403 = @404
  IF ~~ THEN REPLY @405 DO ~SetGlobal("b#CreateSamilGroup2","GLOBAL",2) SetGlobal("b#SamilChellenged","GLOBAL",2)~ GOTO Challenge2
  IF ~~ THEN REPLY @406 DO ~SetGlobal("b#CreateSamilGroup2","GLOBAL",2)~ GOTO Challenge3
END

IF ~~ THEN BEGIN Challenge2
  SAY @203
  IF ~~ THEN DO ~ActionOverride("b#knit01",ReallyForceSpell(Myself,DRYAD_TELEPORT))~ EXIT
END

IF ~~ THEN BEGIN Challenge3
  SAY @407 = @408
  IF ~~ THEN DO ~SetGlobal("b#SamilChallenged","GLOBAL",1)~ EXIT
END

// After Pit Fights

IF ~Global("b#SamilKilledSlaves","GLOBAL",1)
    Global("b#SamilMove","GLOBAL",0)~ THEN BEGIN Move1
  SAY @501 = @502
  IF ~~ THEN REPLY @503 DO ~SetGlobal("b#SamilMove","GLOBAL",2)~ GOTO Move2
  IF ~OR(5) InParty("Aerie")
            InParty("Anomen")
            InParty("Keldorn")
            InParty("Mazzy")
            InParty("Minsc")~ THEN REPLY @504 DO ~SetGlobal("b#SamilMove","GLOBAL",1)~ GOTO Move3
  IF ~!InParty("Aerie")
      !InParty("Anomen")
      !InParty("Keldorn")
      !InParty("Mazzy")
      !InParty("Minsc")~ THEN REPLY @506 DO ~SetGlobal("b#SamilMove","GLOBAL",1)~ GOTO Move4
END

IF ~~ THEN BEGIN Move2
  SAY @203
  IF ~~ THEN DO ~ActionOverride("b#knit01",ReallyForceSpell(Myself,DRYAD_TELEPORT))~ EXIT
END

IF ~~ THEN BEGIN Move3
  SAY @505
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Move4
  SAY @507
  IF ~~ THEN EXIT
END

// New Area Challenge

IF ~Global("b#SamilMove","GLOBAL",1)
    Global("b#SamilFight","GLOBAL",0)~ THEN Fight
  SAY @601 = @602 = @603
  IF ~~ THEN DO ~SetGlobal("b#SamilFight","GLOBAL",1) Enemy()~ EXIT
END
