EXTEND_BOTTOM FATESP 6 #4 
IF ~ !Dead("L#2EDDRD") !InMyArea("L#2EDDRD") Global("L#2EddardSummonedToB","GLOBAL",0) Global("L#2SkiEddardQuest","GLOBAL",15)~ 
THEN REPLY @0 DO ~CreateVisualEffect("SPPORTAL",[1909.1228]) 
Wait(2) 
CreateCreature("L#2ED25",[1909.1228],0) 
SetGlobal("L#2EddardSummonedToB","GLOBAL",1) 
ActionOverride("L#2EDDRD",StartDialogueNoSet(Player1))~ GOTO 8 
END 