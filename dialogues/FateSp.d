EXTEND_BOTTOM FATESP 6 #4 
IF ~ !Dead("L#2SDSkie") !InMyArea("L#2SDSkie") Global("L#2SDSkieSummonedToB","GLOBAL",0)~ 
THEN REPLY @49 /* Bring me Skie, the human thief. */ DO ~CreateVisualEffect("SPPORTAL",[1909.1228]) 
Wait(2) 
CreateCreature("L#2SD25",[1909.1228],0) 
SetGlobal("L#2SDSkieSummonedToB","GLOBAL",1) 
ActionOverride("L#2SDSkie",StartDialogueNoSet(Player1))~ GOTO 8 
END 