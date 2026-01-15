//////////////////////////////////////////////////
//////////////////////////////////////////////////
//////////////////////////////////////////////////
///////////////// QUEST - EDDARD /////////////////
//////////////////////////////////////////////////
//////////////////////////////////////////////////

BEGIN L#2SDEDQ
BEGIN L#2SDEDG
BEGIN L#2SDEDB
BEGIN L#2SDEDS
BEGIN L#2EDDRD

//SKIE'S QUEST - THE RETURN OF EDDARD SILVERSHIELD (1)

CHAIN IF WEIGHT #-1 ~Global("L#2SkiEddardQuest","GLOBAL",1)~ THEN L#2SDSKJ RET.ED.01.00
@0 /* Wait—you've seen that guy? The one that wore this plate armor! He used to work with daddy, but... he should be dead. He was sent on a mission with my brother and they were to work with Kagain. */
==L#2SDSKJ @1 /* It's weird. Like really weird, so... we should check it out. Maybe he'll also know how my brother died. We never found out more about that... disasterous caravan work. */
END
IF~~THEN REPLY @2 /* Fine. Let's follow him. I think he went down to the marine. */ EXTERN L#2SDSKJ RET.ED.01.01
IF~~THEN REPLY @3 /* Do we really need to do this? We have more important things waiting for us. */ EXTERN L#2SDSKJ RET.ED.01.02

CHAIN L#2SDSKJ RET.ED.01.01
@4 /* Great! Let's go and see what is it all about. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",2)~ EXIT

CHAIN L#2SDSKJ RET.ED.01.02
@5 /* It's... either that or I'll go. Seriously, my BROTHER died protecting that caravan and that guy may know something. I'm not letting that chance go. */
END
IF~~THEN REPLY @6 /* Fine... I think he went down to the marine. */ EXTERN L#2SDSKJ RET.ED.01.01
IF~~THEN REPLY @7 /* Sorry, but no, Skie. We don't have time for this. */ EXTERN L#2SDSKJ RET.ED.01.03

CHAIN L#2SDSKJ RET.ED.01.03
@8 /* Ugh! Suit yourself then. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",30) LeaveParty() EscapeArea()~ EXIT

//SKIE'S QUEST - THE RETURN OF EDDARD SILVERSHIELD (2 - inside)

CHAIN IF ~Global("L#2SkiEddardQuest","GLOBAL",2)~ THEN L#2SDEDQ RET.ED.02.00
@9 /* What is the meaning of—Skie? Skie Silvershield? WHAT ARE YOU DOING HERE?! */
==L#2SDSKJ @10 /* I saw you... uhm... mister! */
==L#2SDEDQ @11 /* ...Vully. Vully Grip. Is it really that hard to make you show a man like me at least SOME respect and remember my name?! */
==L#2SDSKJ @12 /* I do respect people! Just those that don't pretend to be dead! What are you doing here? How are you even alive? From what I remember, you should have died in that caravan... */
==L#2SDEDQ @13 /* Hah! No, not really. As you can see I am very much alive. I thought you come here because of your brother's auction— */
==L#2SDSKJ @14 /* Wait... what?! My bother's auction?! What are you talking about?! Speak or... or... I'll do something nasty! */
==L#2SDEDQ @15 /* You didn't know? Hahaha! */
==L#2SDEDQ @16 /* Well, it looks like this day will be full of surprises for you. Your brother isn't dead. Well, yet. */
==L#2SDSKJ @17 /* Where is he?! What did you do?! And... gods, just speak. Now. Please. */
==L#2SDEDQ @18 /* When the caravan was attacked, the bandits killed most of us, but they gave me and your brother an option. To join them or be sold. As a slave, of course. */
==L#2SDEDQ @19 /* I agreed, but your brother was stupid enough to reject this chance. So, they made me stip him of his armor and weapons and tie him. Sorry, girl, that's nothing personal, but I wasn't going to throw my life away for some cub. */
==L#2SDSKJ @20 /* So you just humiliated him and let those bandits sell him like some... overpriced dress?! You are a monster... */
==L#2SDEDQ @21 /* ...seriously...? VULLY. VULLY GRIP! */
==L#2SDSKJ @22 /* You and your name aren't worth remembering... Where is my brother. Tell me. */
==L#2SDEDQ @23 /* Or what? You'll make me speak? */
==L#2SDSKJ @24 /* This is the Hero of Baldur's Gate. Would you midn saying hello to this... smelly brute, <CHARNAME>? */
END
IF~~THEN REPLY @25 /* Hello. */ EXTERN L#2SDSKJ RET.ED.02.01
IF~~THEN REPLY @26 /* Skie, please... */ EXTERN L#2SDSKJ RET.ED.02.01

CHAIN L#2SDSKJ RET.ED.02.01
@27 /* As you may have heard, <CHARNAME> killed Sarevok. Stopped the Iron Throne. Stopped Caelar's Crusade. And <PRO_HESHE> saved me. Well, you may not heard about the last part as it happened recently, but you REALLY don't want to mess with <PRO_HIMHER>. */
==L#2SDEDQ @28 /* The Hero of... oh, shit. Shit, shit, shit. I heard what you did with people like me. You... you won't take me alive! */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",3) Enemy()~ EXIT

//SKIE'S QUEST - THE RETURN OF EDDARD SILVERSHIELD (3 - dead)

CHAIN IF WEIGHT #-1 ~Global("L#2SkiEddardQuest","GLOBAL",4)~ THEN L#2SDSKJ RET.ED.03.00
@29 /* Doofus! I... could let him go, I just wanted to know what happened to my brother. I am really sorry for this mess, <CHARNAME>, I truly am! But... there must be some clues in here about where my brother is being kept. I... can't believe he's alive. */
END
IF~~THEN REPLY @30 /* Let's look around. */ EXTERN L#2SDSKJ RET.ED.03.01
IF~~THEN REPLY @31 /* Less talking, more searching, Skie. Unless you changed your mind and want to give up on Eddard already. */ EXTERN L#2SDSKJ RET.ED.03.02

CHAIN L#2SDSKJ RET.ED.03.01
@32 /* Yes, let's look for something. I would even gut a fish if I had to. And that would normally mame me throw up. Anyway, let's look. There must be something... */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",5)~ EXIT

CHAIN L#2SDSKJ RET.ED.03.02
@33 /* Of course I'm not giving up! Stop being so rude! Let's look for those clues already. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",5)~ EXIT

//SKIE'S QUEST - THE RETURN OF EDDARD SILVERSHIELD (4 - we've got something!)

CHAIN IF WEIGHT #-1 ~Global("L#2SkiEddardQuest","GLOBAL",6)~ THEN L#2SDSKJ RET.ED.04.00
@34 /* It looks like we've got something! And... let me read this horrible horrible and smelly note. Gods, I'm doing this for you, Eddard. */
==L#2SDSKJ @35 /* Blah, blah, blah... "...I'll be waiting behind your house." */
==L#2SDSKJ @36 /* Great! We won't even need to look long for that... someone. And he—or she will probably know where to go next! */
==L#2SDSKJ @37 /* Let's see if that someone is still there. Or already there. Or... just let's go. Please, we need to hurry. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",7)~ EXIT

//SKIE'S QUEST - THE RETURN OF EDDARD SILVERSHIELD (5 - the guy behind the house)

CHAIN IF ~Global("L#2SkiEddardQuest","GLOBAL",8) InParty("L#2SDSkie")~ THEN L#2SDEDG RET.ED.05.00
@38 /* Hmm? You're not Vully. */
==L#2SDSKJ @39 /* No. This is <CHARNAME> and I'm Skie Silvershild. You recognize that name? */
==L#2SDEDG @40 /* Oh, shit. Shit, shit, shit. */
==L#2SDSKJ @41 /* Enought of that... poo-talk! I heard it already and I know my brother is alive, so just don't make it too hard, please, and just tell us where he is. I... I can even pay you. Here, take my bracelet and this bottle of perfume. It wasn't used yet and... I really need to know everything. */
==L#2SDEDG @42 /* Okay, okay. I don't want any trouble either. */
==L#2SDEDG @43 /* I heard they found a buyer interested in your brother. A man from Calimshan, a really bad guy, who... well, collects handsome guys as if they were some kind of furniture. They're supposed to meet in Docks, on the hanging platforms, a place people rarely go to. You can get there from the roofs. */
==L#2SDSKJ @44 /* Finally some's cooperating. You can go. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",9) ActionOverride("L#2SDEDG",DestroySelf())~ EXIT

//SKIE'S QUEST - THE RETURN OF EDDARD SILVERSHIELD (6 - after the guy)

CHAIN IF WEIGHT #-1 ~Global("L#2SkiEddardQuest","GLOBAL",10)~ THEN L#2SDSKJ RET.ED.06.00
@45 /* We know where to go next. Come with me, <CHARNAME>, I... kinda need you. They may be armed. Well, obviously they're gonna be armed. Only armed and ugly people go and deal with slavers, but... that's not the point. */
==L#2SDSKJ @46 /* We won't get a second chance. And it's urgent. That's why I need you. You helped me. You can now help my brother, too. */
END
IF~~THEN REPLY @47 /* Of course. Let's go. Quickly. */ EXTERN L#2SDSKJ RET.ED.06.01
IF~~THEN REPLY @48 /* I don't have time for such things, girl. Sorry, you're on your own. */ EXTERN L#2SDSKJ RET.ED.06.02

CHAIN L#2SDSKJ RET.ED.06.01
@49 /* Thank you. Thank you so much. Now, let's find those platforms. The sooner, the better. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",11)~ EXIT

CHAIN L#2SDSKJ RET.ED.06.02
@50 /* You throw away my brother's life just like that?! Sorry, but... I can't work with someone like that. You're worse even than Eldoth. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",30) LeaveParty() EscapeArea()~ EXIT

//SKIE'S QUEST - THE RETURN OF EDDARD SILVERSHIELD (7 - buying)

CHAIN IF ~Global("L#2SkiEddardQuest","GLOBAL",12)~ THEN L#2SDEDB RET.ED.07.00
@51 /* ...this is my final price. */
==L#2SDEDS @52 /* Look, he's a strong man. And still young. He will able to guard you and, dare I believe, he can be turned into a skilled assassin. See that pretty face? Everyone's going to trust him. And then, he'll be able to strike. */
==L#2SDEDB @53 /* Fine, I can add few diamonds. We have a deal? */
==L#2SDEDS @54 /* Yes. I suppose we do. */
==L#2SDSKJ @55 /* Okay, this is getting way too creepy! You're not turning my brother into some assassin. Or a slave. Or a servant. Or anyone else. */
==L#2SDEDB @56 /* What is the meaning of this. */
==L#2SDEDS @57 /* No worries. Let's see what is it all about. */
==L#2SDEDS @58 /* You there! Why on Nine Hells are you disturbing our negotiations. */
END
IF~~THEN REPLY @59 /* Because you're slavers. And I am known for stopping deals like the one you're trying to make here. */ EXTERN L#2SDEDB RET.ED.07.01
IF~~THEN REPLY @60 /* Me? Oh, I'm just with her. Meet Skie Silvershield. Sister of the one you're trying to sell. */ EXTERN L#2SDEDB RET.ED.07.02

CHAIN L#2SDEDB RET.ED.07.01
@61 /* Ah, I should have guessed. */
EXTERN L#2SDSKJ RET.ED.07.03

CHAIN L#2SDEDB RET.ED.07.02
@62 /* Sister? */
EXTERN L#2SDSKJ RET.ED.07.03

CHAIN L#2SDSKJ RET.ED.07.03
@63 /* Look, I'm not as brave as some and... I do not throw myself into brawls, but these last few hours made me SO furious. And angry. And I think you are creepy and I think you need to be stopped. */
==L#2SDEDS @64 /* Eh, this was supposed to be a simple day, a good one, ended with a fine meal after a hard day at work. But no, you had to step up. I'm done talking. Let's get rid of these fools. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",13) ActionOverride("L#2SDEDB",Enemy()) ActionOverride("L#2SDEDB",ForceSpell([PC],CLERIC_ANIMAL_SUMMONING_1)) Enemy()~ EXIT

//SKIE'S QUEST - THE RETURN OF EDDARD SILVERSHIELD (8 - Eddard)

CHAIN IF WEIGHT #-1 ~Global("L#2SkiEddardQuest","GLOBAL",14) Global("L#2EddardJoined","GLOBAL",0)~ THEN L#2SDSKJ RET.ED.08.00
@65 /* Eddard! It's me! Let me ungag you. These weirdos really made it all so... uncomfortable! */
==L#2EDDRD @66 /* Agh... thank you... but... Skie? Is that really you, sister? */
==L#2SDSKJ @67 /* Sure it's me! Gods, they didn't even let you wash, hmm? You're... sweaty, but... I'm so happy to see you! We thought you're dead! The caravan—everyone was killed and... */
==L#2EDDRD @68 /* Not everyone Vully. And me... he joined them and I just... couldn't. After the sloughter I would rather die myself than join those... people! */
==L#2EDDRD @69 /* After they realized that I'm not going to join their "merry group", they told Vully to disarm me, they took everything I had and... treated me like animal! */
==L#2SDSKJ @70 /* It looks like we all had a HORRIBLE year. I got murdered, by the way. But <CHARNAME> saved me. And now <PRO_HESHE> helped to save you. */
==L#2SDSKJ @71 /* <CHARNAME>, this is Eddard. Eddard, this is <CHARNAME>. */
==L#2EDDRD @72 /* I'm happy to meet you. I wish it all happaned over a table filled with all sorts of food, but... well... Instead of a table, we have these bloody platforms. And instead of food we have a slaughter. */
END
IF~~THEN REPLY @73 /* It could be worse. Anyway, pleased to meet you, Eddard. */ EXTERN L#2SDSKJ RET.ED.08.01
IF~~THEN REPLY @74 /* Ugh, I think I'm going to have a bruise. I hope you're worth all that effort, boy. */ EXTERN L#2SDSKJ RET.ED.08.02

CHAIN L#2SDSKJ RET.ED.08.01
@75 /* Just look at you! */
EXTERN L#2SDSKJ RET.ED.08.03

CHAIN L#2SDSKJ RET.ED.08.02
@76 /* Of course he is! And... isn't saving people like our job or something? Come on, be nicer! */
EXTERN L#2SDSKJ RET.ED.08.03

CHAIN L#2SDSKJ RET.ED.08.03
@77 /* Honestly, I'm not sure that I've ever been so angry and... all of that made me feel weird. But at least we you're okay. */
==L#2SDSKJ @78 /* <CHARNAME>, let's give Eddard something to wear and... he must come with us! He's quite strong and he knows many manuvers. I'm sorry to say that, but it's either both of us, or... or we'll need to go north. I can't let us be seperated again. */
==L#2SDSKJ @79 /* If I can be honest with you, I'd rather stay and... we can have so much fun together. We can talk, and Eddard can cook us something! He's good at it and... and come on. Please? */
==L#2EDDRD @80 /* If Skie trusts you, I... suppose could join you. I will just need to send my father a letter, but I can do that while we rest. I can't let them keep thinking that I'm dead. */
END
IF~~THEN REPLY @81 /* Finde, you can join me. */ EXTERN L#2SDSKJ RET.ED.08.04
IF~~THEN REPLY @82 /* Skie, he's tired, he almost got sold and he needs to rest. Let's send him to Waukeen's Promenade, there are few calm taverns there. We'll get back to him when he's rested. Until then, he should have some sleep and something to eat. */ EXTERN L#2SDSKJ RET.ED.08.08
IF~~THEN REPLY @83 /* Sorry, but no. */ EXTERN L#2SDSKJ RET.ED.08.05

CHAIN L#2SDSKJ RET.ED.08.04
@84 /* You heard that? <CHARNAME> said yes and... oh, I'm happier than ever. */
==L#2EDDRD @85 /* Calm down, Skie, we wouldn't want you fall down into that water. */
END
IF~~THEN REPLY @86 /* You should know that I'm trying to get to the person who hurt my fried, Imoen. He's also the one who was involved in hurting your sister. Irenicus. */ EXTERN L#2EDDRD RET.ED.08.06
IF~~THEN REPLY @87 /* You need to know something. I'm on a mission right now. I need to get even with this insane mage who captured me. Tortured me. I am not to be trifled with and that mage is yet to learn that. */ EXTERN L#2EDDRD RET.ED.08.06
IF~~THEN REPLY @88 /* Fine, let's go. */ EXTERN L#2EDDRD RET.ED.08.07

CHAIN L#2SDSKJ RET.ED.08.08
@89 /* Erm... brother? */
==L#2EDDRD @90 /* I could use some proper sleep and... I would stick to what your friend decides. We can't just make <PRO_HIMHER> change everything and both these options are fine with me. */
==L#2SDSKJ @91 /* Fine! Fine... but... be careful, Eddard, please. Okay? */
==L#2EDDRD @92 /* Sure thing, sis. */
==L#2EDDRD @93 /* I'll be at this... Promenade if you need me. I'll find my way. And... thank you. Both of you. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",15) MakeGlobal() MoveGlobal("AR0704","L#2EDDRD",[140.620])~ EXIT

CHAIN L#2EDDRD RET.ED.08.06
@94 /* Well, it sounds like a complex matter and... if that Irenicus is that dangerous, we should make sure he's going to hurt anyone else. */
==L#2EDDRD @95 /* Come now. Before we all catch a cold or something. And Skie... give me a moment. We'll talk again soon. I just need a moment to catch my breath. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",15) SetGlobal("L#2EddardJoined","GLOBAL",1) JoinParty()~ EXIT

CHAIN L#2EDDRD RET.ED.08.07
@96 /* Right. And Skie... give me a moment. We'll talk again soon. I just need a moment to catch my breath. */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",15) SetGlobal("L#2EddardJoined","GLOBAL",1) JoinParty()~ EXIT

CHAIN L#2SDSKJ RET.ED.08.05
@97 /* Seriously? Gods, I thought you're better than that! Come, Eddard! We're leaving! */
DO ~SetGlobal("L#2SkiEddardQuest","GLOBAL",30)~ EXIT

//Optional - Tavern

CHAIN IF ~Global("L#2SkiEddardQuest","GLOBAL",15) AreaCheck("AR0704") Global("L#2EddardJoined","GLOBAL",0)~ THEN L#2EDDRD TAVERNJOIN.00.00
@98 /* Ah, hello again, friend! */
==L#2EDDRD IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @99 /* And hello to you, sister. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @100 /* Hi! Oh, you look so much better now! */
==L#2EDDRD @101 /* I trust you're doing fine? I already sent my letter to father. And... it looks like I'm getting my strength back! Hah! */
END
IF~~THEN REPLY @102 /* Would you like to join me? */ EXTERN L#2EDDRD TAVERNJOIN.00.01
IF~~THEN REPLY @103 /* I'm glad you're feeling better. And that you're free. Anyway, I need to go now. */ EXIT

CHAIN L#2EDDRD TAVERNJOIN.00.01
@104 /* That's... not a bad idea. I like this place but I already tried most of their ales and I washed myself. Perhaps it's time to get back on the road! */
DO ~SetGlobal("L#2EddardJoined","GLOBAL",1) JoinParty()~ EXIT

//SKIE'S REALLY THANKFUL

CHAIN IF WEIGHT #-1 ~Global("L#2SkieThankYouReally","GLOBAL",2)~ THEN L#2SDSKJ THANK.ED.00
@105 /* <CHARNAME>, I... I SO grateful that you helped me reunite with Eddard. It looks like you're one of the kindest people I EVER worked with. Garrick wanted to be such person, but you're way ahead of him. After what you did I feel I should name some perfume after you. "<CHARNAME>'s Musk" or something. If I make a perfume for someone like you, an adventuring <PRO_MALEWOMAN> with a soft spot for solving difficult situations! */
==L#2SDSKJ @106 /* So... yeah. Thank you. Really. It looks like you grew a new habit: helping Silvershields. */
END
IF~~THEN REPLY @107 /* You're welcome, Skie. */ EXTERN L#2SDSKJ THANK.ED.01
IF~~THEN REPLY @108 /* Anyone with a heart would do such a thing, Skie. */ EXTERN L#2SDSKJ THANK.ED.01
IF~~THEN REPLY @109 /* I helped him because I would help anyone in such situation. */ EXTERN L#2SDSKJ THANK.ED.02
IF~~THEN REPLY @110 /* I did that only because I had a moment to spare. Don't get overly excited. */ EXTERN L#2SDSKJ THANK.ED.02

CHAIN L#2SDSKJ THANK.ED.01
@111 /* Huh, you're SO nice! It's rare, judging after all these jobs and request we get every single day. */
EXTERN L#2SDSKJ THANK.ED.03

CHAIN L#2SDSKJ THANK.ED.02
@112 /* Well, no matter what your reasons were, you helped. Greatly. And I'm grateful for that. */
EXTERN L#2SDSKJ THANK.ED.03

CHAIN L#2SDSKJ THANK.ED.03
@113 /* You know, I saw many people and... I met those guys and ladies daddy works with every now and then, and I know it's not a common thing. They can be so moody or demanding or have all these weird conditions. You however, just did it. Like that. As it was making some kind of... easy pie! */
==L#2SDSKJ @114 /* Okay, I'm not sure if that's a good comparison, but I didn't need to use any tricks, it was enough that I talked to you, so... you get me. */
END
IF~~THEN REPLY @115 /* It's fine, Skie. It really is. */ EXTERN L#2SDSKJ THANK.ED.04
IF~~THEN REPLY @116 /* Who would have ever say no to you, Skie! */ EXTERN L#2SDSKJ THANK.ED.05
IF~~THEN REPLY @117 /* That's all very nice, but let us move on. Please. */ EXTERN L#2SDSKJ THANK.ED.06

CHAIN L#2SDSKJ THANK.ED.05
@118 /* Many people! That I am sure of! */
EXTERN L#2SDSKJ THANK.ED.04

CHAIN L#2SDSKJ THANK.ED.04
@119 /* I just thought you should know that I will remember what you did. I don't what would need to happen to make me forget. Some weird experiments, maybe, but it's not like we're gonna let such bad thing happen anyway. */
DO ~SetGlobal("L#2SkieThankYouReally","GLOBAL",3)~ EXIT

CHAIN L#2SDSKJ THANK.ED.06
@120 /* Right. I just thought you should know that I will remember what you did. */
DO ~SetGlobal("L#2SkieThankYouReally","GLOBAL",3)~ EXIT

//SKIE ANGRY, EDDARD DEAD

CHAIN IF WEIGHT #-1 ~Global("L#2SDSkieCommentEddardsDeath","GLOBAL",1)~ THEN L#2SDSKJ EDDARDDEAD
@121 /* You... just let him die like that?! Agh! You are the worst! You are a horrible HORRIBLE person! Don't expect us to be friends anymore! */
DO ~SetGlobal("L#2SDSkieCommentEddardsDeath","GLOBAL",2) SetGlobal("L#2SDSkieFriendshipActive","GLOBAL",3)~ EXIT


//SKIE ANGRY, EDDARD DEAD

CHAIN IF WEIGHT #-1 ~Global("L#2SDSkieCommentEddardsDeath","GLOBAL",1)~ THEN L#2SD25J EDDARDDEAD
@121 /* You... just let him die like that?! Agh! You are the worst! You are a horrible HORRIBLE person! Don't expect us to be friends anymore! */
DO ~SetGlobal("L#2SDSkieCommentEddardsDeath","GLOBAL",2) SetGlobal("L#2SDSkieFriendshipActive","GLOBAL",3)~ EXIT


/////////////////////////////////////////////
/////////////////////////////////////////////
/////////// KICK-OUT TALKS (SOA) ////////////
/////////////////////////////////////////////
/////////////////////////////////////////////

BEGIN L#2EDP

//AFTER BODHI

CHAIN IF ~Global("L#2EddardVampire","GLOBAL",4)~ THEN L#2EDP EDD.VAM.00
@122 /* Gods, by... head. I feel... strange. Cold, but... like my flesh was trying to warm up itself... */
==L#2SDSKJ IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @123 /* Eddard! */
==L#2EDP IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @124 /* Skie...? I... I'm glad to see you, but... */
==L#2EDP @125 /* What happened to me, <CHARNAME>...? */
END
IF~~THEN REPLY @126 /* Eddard, you're back! I'm so happy! You were captured by Bodhi and she turned you into one of them, but... I managed to undo the change. */ EXTERN L#2EDP EDD.VAM.01
IF~~THEN REPLY @127 /* Hmm, well, it's a weird story, but... you became a vampire. A handsome one, but still, quite undead. I had to conduct this ritual and... it looks like it worked. */ EXTERN L#2EDP EDD.VAM.01

CHAIN L#2EDP EDD.VAM.01
@128 /* Wait, wait, wait. I... was turned into a vampire?! For all the gods... */
==L#2SDSKJ IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @129 /* I was so worried! I... I thought I lost you again! Gods, my head. WAY too many emotions at once! Seriously! */
== L#2EDP @130 /* I don't remember what happened. I remembered we went to the cemetry, the Graveyard District and... that we were approached by some... children of the night...? Bodhi...? Is that what happened? */
END
IF~~THEN REPLY @131 /* Yes. Then, they took you and Bodhi changed you. We had to fight, but I managed to fix everything. But I was so scared. */ EXTERN L#2EDP EDD.VAM.02
IF~~THEN REPLY @132 /* More or less, yes. She was prepared and she took you from me. She cursed you with undeath. The vampirism. But it's fine now. You're back to normal. */ EXTERN L#2EDP EDD.VAM.03
IF~~THEN REPLY @133 /* I don't want to get into details, but I saved you. That's what really matters */ EXTERN L#2EDP EDD.VAM.04

CHAIN L#2EDP EDD.VAM.02
@134 /* That's... a lot of information for just one minute. */
EXTERN L#2EDP EDD.VAM.05

CHAIN L#2EDP EDD.VAM.03
@135 /* Undeath...? Vampirism? So I truly was... like them? Gods, that's... just wrong. */
EXTERN L#2EDP EDD.VAM.05

CHAIN L#2EDP EDD.VAM.04
@136 /* I... I'm not sure what to say. So... you had to... reverse all of this. Sorry, I'm still confused. */
EXTERN L#2EDP EDD.VAM.05

CHAIN L#2EDP EDD.VAM.05
@137 /* Thank you. For everything... for saving me. For not letting me die as a monster, but bringing me here and... making me normal again. I'm glad I fell for someone who does not give up easily. */
==L#2EDP @138 /* I feel that I caused you trouble and... I wasn't able to help you when you needed this. I wanted to be the one to help, to be there, support you, but instead you had to take care of me. Agh! It's... embarassing. */
END
IF~~THEN REPLY @139 /* It't not. We couldn't have know she'd play such card. */ EXTERN L#2EDP EDD.VAM.06
IF~~THEN REPLY @140 /* Stop saying such things, Eddard. We know about my heritage and we know things like that happen when I am around. */ EXTERN L#2EDP EDD.VAM.06
IF~~THEN REPLY @141 /* Maybe... but who cares? You're alive and that's the important part. */ EXTERN L#2EDP EDD.VAM.06

CHAIN L#2EDP EDD.VAM.06
@142 /* I read so many books. Horror novels. Dark stories. And I was taught about creatures like that... I should have known she may want to use such trick. Hit where it would hurt the most. */
==L#2EDP @143 /* But... I am not going to dwell on this. My pride isn't the important part. What's important is that you won. You succeeded. Otherwise, you wouldn't be here. You wouldn't bring me back, my <PRO_LADYLORD>. And that makes my heart grow bigger and... happier. */
==L#2EDP @144 /* Would you like to have me back? I still may be of use and... I would still be by your side. You are my <CHARNAME>, after all. */
END
IF~~THEN REPLY @145 /* Of course. Welcome back. */ EXTERN L#2EDP EDD.VAM.07
IF~~THEN REPLY @146 /* Sorry, but I don't need you anymore. I just wanted to bring you back to life, but now... we should part ways. */ EXTERN L#2EDP EDD.VAM.07

CHAIN L#2EDP EDD.VAM.07
@147 /* Thank you. (smile) */
==L#2EDP @148 /* I will do all I can to be better. To truly support you. Come now. Let's get to Irenicus and be over with him. */
DO ~SetGlobal("L#2EddardVampire","GLOBAL",5) SetGlobal("L#2EddardJoined","GLOBAL",1)
EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(@1569 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Eddard. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of Eddard Silvershield is at stake, as well! */)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi has turned Eddard into a vampire!  Or... or very nearly. The process may not have been completed in the short time Bodhi has had him. Hopefully something can be done or I will have lost him. Perhaps the elven war sage might know some way of restoration... or Elhan...%)
JoinParty()~ EXIT

CHAIN L#2EDP EDD.VAM.08
@149 /* So that's how it ends...? Just... Just like that...? I must have truly failed you... */
DO ~SetGlobal("L#2EddardVampire","GLOBAL",5) SetGlobal("L#2EddardJoined","GLOBAL",0) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)
EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(@1569 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Eddard. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of Eddard Silvershield is at stake, as well! */)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi has turned Eddard into a vampire!  Or... or very nearly. The process may not have been completed in the short time Bodhi has had him. Hopefully something can be done or I will have lost him. Perhaps the elven war sage might know some way of restoration... or Elhan...%)
EscapeArea()~ EXIT

//NORMAL

CHAIN IF ~Global("L#2EddardJoined","GLOBAL",1) OR(2) Global("L#2EddardRomanceActive","GLOBAL",3) Global("L#2EddardRomanceActive","GLOBAL",0)~ THEN L#2EDP LEAVE.10
@150 /* <CHARNAME>? Is something wrong? */
==L#2SDSKJ IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @151 /* No! Come one! Let's keep him! He's doing SO great! */
==L#2EDP @152 /* Do you want me to leave? */
END
IF~~THEN REPLY @153 /* Sorry, but yes. I'll get back here if I need you again, Eddard. */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",0)~ EXIT
IF~~THEN REPLY @154 /* Sorry, but yes, Eddard. Go to the Copper Coronet, I'll meet you there. */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",0) EscapeAreaMove("AR0406",1140,1500,0)~ EXIT
IF~~THEN REPLY @155 /* No, stay. I still need you. */ DO ~JoinParty()~ EXIT

CHAIN IF ~Global("L#2EddardJoined","GLOBAL",1) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN L#2EDP LEAVE.20
@156 /* <CHARNAME>? I thought we like spending time together. That we're a good team... */
END
IF~~THEN REPLY @157 /* Things change, Eddard, and... I don't need you anymore. Sorry. Wait here, in case I needed you back, but for now, that's it. */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",0) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT
IF~~THEN REPLY @158 /* Things change, Eddard, and... I don't need you anymore. Sorry... Go to the Copper Coronet, I'll meet you there if I need you back. But until then... */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",0) SetGlobal("L#2EddardRomanceActive","GLOBAL",3) EscapeAreaMove("AR0406",1140,1500,0)~ EXIT
IF~~THEN REPLY @159 /* No, stay. It's some kind of mistake, Eddard. I need you here. */ DO ~JoinParty()~ EXIT

CHAIN IF ~Global("L#2EddardJoined","GLOBAL",0)~ THEN L#2EDP BACK.10
@160 /* Hello, <CHARNAME>. You need me back? */
END
IF~~THEN REPLY @161 /* Yes. Welcome back, Eddard. */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",1) JoinParty()~ EXIT
IF~~THEN REPLY @162 /* No, sorry, but no. */ EXIT

/////////////////////////////////////
/////////////////////////////////////
/////// THRONE OF BHAAL BASIC ///////
/////////////////////////////////////
/////////////////////////////////////

BEGIN L#2ED25
BEGIN L#2ED25P

//JOINING

CHAIN IF ~NumTimesTalkedTo(0) OR(2) Global("L#2EddardJoined","GLOBAL",0) Global("L#2EddardJoined","GLOBAL",1)~ THEN L#2ED25 JOIN.00.00
@163 /* Agh! Well... I was in the middle of something... I bought this really good horror romance, freshly published, and the spectre was just about to attack the protagonist. Eh, but I suppose you called me here for a different reason than finding out more about that novel. It's titled "The Spellbiter", by the way. By Inu Hananeko. */
== L#2SD25J IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @164 /* Hi, Eddard! A pity you didn't take that book with you... */
== L#2ED25 IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @165 /* A pity indeed. */
== L#2ED25 @166 /* So, why am I here? */
END
IF~~THEN REPLY @167 /* I need your help again, Eddard. Will you join me, please? */ EXTERN L#2ED25 JOIN.00.01
IF~~THEN REPLY @168 /* I summoned you by accident. Sorry, but could you stand over there and wait until I really need you? */ EXTERN L#2ED25 JOIN.00.02

CHAIN L#2ED25 JOIN.00.01
@169 /* I suppose I can join. (wink) */
==L#2ED25 @170 /* It's good I had a little workout yesterday, after a long break. Perhaps some part of me knew we'd join forces again and fight against some evil or inane power. */
==L#2ED25 @171 /* You'll tell me all the details once we move on. */
DO ~SetGlobal("L#2EddardJoined","GLOBAL",1) JoinParty()~ EXIT

CHAIN L#2ED25 JOIN.00.02
@172 /* A bizarre request, but... fine. I'll stand over there. */
DO ~MoveToPoint([2530.1335])~ EXIT

CHAIN IF ~NumTimesTalkedToGT(0) OR(2) Global("L#2EddardJoined","GLOBAL",0) Global("L#2EddardJoined","GLOBAL",1)~ THEN L#2ED25 JOIN.0R.00
@173 /* Ah, you're back. */
END
IF~~THEN REPLY @167 /* I need your help again, Eddard. Will you join me, please? */ EXTERN L#2ED25 JOIN.00.01
IF~~THEN REPLY @168 /* I summoned you by accident. Sorry, but could you stand over there and wait until I really need you? */ EXTERN L#2ED25 JOIN.00.02

//KICK OUT

CHAIN IF ~Global("L#2EddardJoined","GLOBAL",1) OR(2) Global("L#2EddardRomanceActive","GLOBAL",3) Global("L#2EddardRomanceActive","GLOBAL",0)~ THEN L#2ED25P LEAVE.10
@150 /* <CHARNAME>? Is something wrong? */
==L#2SD25J IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @151 /* No! Come one! Let's keep him! He's doing SO great! */
==L#2ED25P @152 /* Do you want me to leave? */
END
IF~~THEN REPLY @153 /* Sorry, but yes. I'll get back here if I need you again, Eddard. */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",0)~ EXIT
IF~!AreaCheck("AR4500")~THEN REPLY @174 /* Sorry, but yes, Eddard. Go to the Pocket Plane, I'll meet you there. */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",0) CreateVisualEffectObject("SPDIMNDR",Myself) Wait(2) MoveBetweenAreas("AR4500",[2530.1335],0)~ EXIT
IF~~THEN REPLY @155 /* No, stay. I still need you. */ DO ~JoinParty()~ EXIT

CHAIN IF ~Global("L#2EddardJoined","GLOBAL",1) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN L#2ED25P LEAVE.20
@156 /* <CHARNAME>? I thought we like spending time together. That we're a good team... */
END
IF~~THEN REPLY @157 /* Things change, Eddard, and... I don't need you anymore. Sorry. Wait here, in case I needed you back, but for now, that's it. */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",0) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT
IF~!AreaCheck("AR4500")~THEN REPLY @175 /* Things change, Eddard, and... I don't need you anymore. Sorry... Go to the PocketPlane, I'll meet you there if I need you back. But until then... */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",0) SetGlobal("L#2EddardRomanceActive","GLOBAL",3) CreateVisualEffectObject("SPDIMNDR",Myself) Wait(2) MoveBetweenAreas("AR4500",[2530.1335],0)~ EXIT
IF~~THEN REPLY @159 /* No, stay. It's some kind of mistake, Eddard. I need you here. */ DO ~JoinParty()~ EXIT

CHAIN IF ~Global("L#2EddardJoined","GLOBAL",0)~ THEN L#2ED25P BACK.10
@160 /* Hello, <CHARNAME>. You need me back? */
END
IF~~THEN REPLY @161 /* Yes. Welcome back, Eddard. */ DO ~SetGlobal("L#2EddardJoined","GLOBAL",1) JoinParty()~ EXIT
IF~~THEN REPLY @162 /* No, sorry, but no. */ EXIT



//////////////////////////////// 
//////////////////////////////// 
/////Banters - SOA + TOB//////// 
//////////////////////////////// 
//////////////////////////////// 

BEGIN L#2EDB 
BEGIN L#2ED25B 

////EDDARD+SKIE

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEddard","GLOBAL",0)~ THEN L#2SDSKB Eddard2Skie1 
@176 /* You know, it feels weird, because we were all convinced that you're dead. When the caravan was found, it was like... you know... finding your tombstone! */
DO ~SetGlobal("L#2SDSkieEddard","GLOBAL",1)~ 
==L#2SDSKB @177 /* And then you're suddenly here. And even looking like the old Eddard. Not too many scars. Still that guy who would crash Boernalla's heart. */
==L#2EDB @178 /* Oh, right, Boernalla... I thought you'd forget about that. She's never been my type, sorry. And believe me, if I could let you know I'm alive, I'd do that. I'd let you or father or mother know. But... that wasn't really an option. */
==L#2SDSKB @179 /* It's... I know. But I feel as if we lost so much time. But—at least you're here, now, and can talk to you. So all's better. Maybe I just need some time to enjoy your return to the fullest! It's like you suddenly got a chest full of new clothes and wanted to try them all at once. */
==L#2EDB @180 /* I know the feeling and... believe me, I'm also feeling it. And quite happy I can again see my weird sister! */
==L#2SDSKB @181 /* Hey! I'm not weird! You're weird! */
==L#2EDB @182 /* Hah, of course I am. To you I'll always be weird. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEddard","GLOBAL",1)~ THEN L#2SDSKB Eddard2Skie2
@183 /* ...and do you remember how we would put lard in father's sponge-cake sandwitch and how wierded out we were when we found out he actually liked it? */
DO ~SetGlobal("L#2SDSkieEddard","GLOBAL",2)~ 
==L#2EDB @184 /* I do, yes. Skie, I did not loose my memory. I may have been gone for a while, but... everything else is still there, In my mind and in my heart. */
==L#2SDSKB @185 /* I'm glad and... it's not like I'm checking you. I'm just flooded with all these memories and thinking about them now makes me happier. */
==L#2SDSKB @186 /* For a long while, thinking about all those jokes or all those lessons we had to attend to together, it was all kinda painful. I realized that sharing that BORING days at the estate wasn't that bad, because at least we could whine about it together. Or fight Daddy so he could let us go, meet friends or do normal stuff. */
==L#2SDSKB @187 /* And the sad part is that I felt as if it was for nothing. Because that's not going back. And it's back. And these memories feel okay again */
==L#2EDB @188 /* They are more than just okay, Skie. Those memories helped me fight and survive. Day by day. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEddard","GLOBAL",2)~ THEN L#2SDSKB Eddard2Skie3
@189 /* ...wait, what did you say? */
DO ~SetGlobal("L#2SDSkieEddard","GLOBAL",3)~ 
==L#2EDB @190 /* I said you become quite strong. Perhaps you even learned some things I wouldn't be able to learn. */
==L#2SDSKB @191 /* I THINK I may need to hear that one more time. */
==L#2EDB @192 /* Skie... */
==L#2SDSKB @193 /* Okay, okay. I'm just surprised that you noticed, but... I suppose you learned few tricks too! I just wish you were taught that some nicer way, rather than in order to survive as a slave... That sounds so creepy, even when I say it myself. */
==L#2EDB @194 /* It does. But I must say that it's good to see how stronger you'd become. Hah! If only father saw you today! */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEddard","GLOBAL",3)~ THEN L#2SDSKB Eddard2Skie4
@195 /* ...and when I was dead, it felt weird. Like too weird. I don't want anyone to feel that way. */
DO ~SetGlobal("L#2SDSkieEddard","GLOBAL",4)~ 
==L#2EDB @196 /* I'm happy you're back and... whenever you tell me that, or add new details, I get these thrills. Bad thrills. */
==L#2SDSKB @197 /* I know, but I got saved and... it's not happening again. */
==L#2EDB @198 /* Of course. I'm not letting this happen. */
EXIT

CHAIN IF WEIGHT #1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEddard","GLOBAL",4)~ THEN L#2SDSKB Eddard2Skie5
@199 /* I think you should shave all that facial hair. So you could be like my little brother! */
DO ~SetGlobal("L#2SDSkieEddard","GLOBAL",5)~ 
==L#2EDB @200 /* What next? Should I get rid of all my body hair? Chest, armpit, legs? Should I also make myself a wooden sword? Hah, sorry, Skie, but I'm fine in my current body. And my sideburns, mustache and beard. They're staying. */
==L#2SDSKB @201 /* Eh, a pity... */
==L#2SDSKB @202 /* Unless... */
==L#2EDB @203 /* Unless what? */
==L#2SDSKB @204 /* Unless I shave them of when you fall asleep. */
==L#2EDB @205 /* Skie... you're being creepy. */
==L#2SDSKB @206 /* I'm just joking! That would be way too weird! */
==L#2SDSKB IF ~OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN @207 /* But maybe <CHARNAME> will convince you to do that, at some point! */
==L#2EDB IF ~OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN @208 /* I still hope <CHARNAME> just likes how I look. */
==L#2EDB @209 /* Anyway, I guess we should move on. */
EXIT

CHAIN IF WEIGHT #1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEddard","GLOBAL",5)~ THEN L#2SDSKB Eddard2Skie6
@210 /* ...and what happaneded next?! */
DO ~SetGlobal("L#2SDSkieEddard","GLOBAL",6)~ 
==L#2EDB @211 /* The woman from the old house entered the room and said, the child is long dead and all that time they were in the house, they were only feeding an illusion. A memory of the long lost treasure that they can never have back. That's how the chapter eleven ends. */
==L#2SDSKB @212 /* Oh, I have goosebumps! */
END
IF~~THEN REPLY @213 /* What the two of you are doing? */ EXTERN L#2EDB Eddard2Skie6-1
IF~~THEN REPLY @214 /* Uhm, am I interrupting something? */ EXTERN L#2EDB Eddard2Skie6-1
IF~~THEN REPLY @215 /* What kind of morbid story is that...?! Do you want her to have nightmares again? */ EXTERN L#2EDB Eddard2Skie6-1

CHAIN L#2EDB Eddard2Skie6-1
@216 /* Heh, Skie likes it when I tell her the stories I read. */
==L#2SDSKB @217 /* He's a fine storyteller and some books can be so haevy... I wouldn't take them on long trips! So I usually ask him to tell me those stories! */
==L#2EDB @218 /* That's more or less how it is. */
END
IF~~THEN REPLY @219 /* Okay, go on, you weirdos. */ EXTERN L#2EDB Eddard2Skie6-2
IF~~THEN REPLY @220 /* A pity you didn't invite me, I could listen to that, too. */ EXTERN L#2EDB Eddard2Skie6-3
IF~~THEN REPLY @221 /* I see. I won't interrupt your brother-and-sister time, then. */ EXTERN L#2EDB Eddard2Skie6-4

CHAIN L#2EDB Eddard2Skie6-2
@222 /* Well, if we are weirdos, then you are the LEADER OF WEIRDOS. You should think about that. */
EXIT

CHAIN L#2EDB Eddard2Skie6-3
@223 /* Hah. Perhaps next time! But... I suppose we could do that, yes. */
EXIT

CHAIN L#2EDB Eddard2Skie6-4
@224 /* It's not like interrupting, it's just the thing we've been doing since we were kids. Anyway, you can join us some other time. */
EXIT

CHAIN IF WEIGHT #1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
Global("L#2EddardRomanceActive","GLOBAL",2)
CombatCounter(0) 
Global("L#2SDSkieEddard","GLOBAL",6)~ THEN L#2SDSKB Eddard2Skie7
@225 /* You know, I must say that I'm kinda happy that you and <CHARNAME> are together. I think <PRO_HESHE> is far from boring and that's good. */
DO ~SetGlobal("L#2SDSkieEddard","GLOBAL",7)~ 
==L#2EDB @226 /* Heh, we'll <PRO_HESHE> is certainly interesting and... good looking. But also quite skilled and I think I just like the way <PRO_HESHE> is. */
==L#2SDSKB @227 /* Seriously, I wish the two of you well. I suppose when you have someone like that, it's easier to become better, right? Of course I'm right. */
==L#2EDB @228 /* This time you certainly are. */
EXIT

CHAIN IF WEIGHT #1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
Global("L#2EddardRomanceActive","GLOBAL",2)
CombatCounter(0) 
Global("L#2SDSkieEddard","GLOBAL",7)~ THEN L#2SDSKB Eddard2Skie8
@229 /* So, is <PRO_HESHE> a good kisser? */
DO ~SetGlobal("L#2SDSkieEddard","GLOBAL",8)~ 
==L#2EDB @230 /* Skie, come on! I'm not going to tell you that. It's between me and <PRO_HIMHER>. */
==L#2SDSKB @231 /* You can be SO boring sometimes! It's not like I want to steal your cuddly beloved one from you, Eddard. Haha. And I guess the point is for you to like it. */
==L#2EDB @232 /* I DO like it. */
==L#2SDSKB IF ~Gender(Player1,MALE)~ THEN @233 /* Good, and... about his... */
==L#2EDB IF ~Gender(Player1,MALE)~ THEN @234 /* SKIE! NO! */
==L#2SDSKB IF ~Gender(Player1,MALE)~ THEN @235 /* ...hair. I was about to ask you about his hair and—wait... you thought I'd ask about... EWWW! You pervert! */
==L#2EDB IF ~Gender(Player1,MALE)~ THEN @236 /* This is getting... awkward. */
==L#2SDSKB IF ~Gender(Player1,MALE)~ THEN @237 /* Well, you made it awkward, brother! */
==L#2SDSKB @238 /* You know what? Maybe it'd be best if we just move on. Perhaps I should leave some stuff just for the two of you. For the sake of my own mind and imagination. */
EXIT

////EDDARD+SKIE (ToB)

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEddard25","GLOBAL",0)~ THEN L#2SD25B Eddard25Skie1 
@239 /* Why are you looking at me like that, Eddard? Do I have something on my face? */
DO ~SetGlobal("L#2SDSkieEddard25","GLOBAL",1)~ 
==L#2ED25B @240 /* Sis, I think you got some muscles because of that adventuring. Soon your jacket may be too small for you. */
==L#2SD25B @241 /* What? No, no, no, no. That's not gonna happen! And... I knew I may get a bit stronger, but I'm not going to resign from that jacket. Seriously. */
==L#2SD25B @242 /* I'll find a seamstress or... a tailor. And they'll make it all work just fine. That's the ONLY option. */
==L#2SD25B @243 /* And it's not like I'll get much bigger. Perhaps just a bit more... ripped. But a TINY bit. */
==L#2ED25B @244 /* Of course, of course. It's not like you're going to eat hundreds of saffron buns. */
==L#2SD25B @245 /* Oh, I would eat one... but just ONE. Perhaps we'll find some shop selling them. */
==L#2ED25B @246 /* ...or another deamon pretending to be one. They know what we desire most, so be careful. */
==L#2SD25B @247 /* Uh, that would be the WORST disguise ever! */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEddard25","GLOBAL",1)~ THEN L#2SD25B Eddard25Skie2
@248 /* Oh, it would be great if you played a guitar for us! I always loved it when you played for me at home. */
DO ~SetGlobal("L#2SDSkieEddard25","GLOBAL",2)~ 
==L#2ED25B @249 /* Sadly, Skie, I do not have a guitar. And... I think I'd need to practice first! It's been over a year since I played. */
==L#2SD25B @250 /* Oh, with all that money we've got we can just buy you the guitar. If you want. Pretty please? */
==L#2ED25B @251 /* Heh... perhaps... when we're done with all's that happening, Skie. */
==L#2SD25B @252 /* Ugh, another year then...? */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
Global("L#2EddardRomanceActive","GLOBAL",2)
CombatCounter(0) 
Global("L#2SDSkieEddard25","GLOBAL",2)~ THEN L#2SD25B Eddard25Skie3
@253 /* It's kinda sweet when you look like that on <CHARNAME>, you know. I'm not sure I ever saw you look like that at any other man or woman! Hah! */
DO ~SetGlobal("L#2SDSkieEddard25","GLOBAL",3)~ 
==L#2ED25B @254 /* Well, it looks like you're back to your old habit of embarassing me, Skie? Please, at least do it a bit more... quiet? */
==L#2SD25B @255 /* Wasn't that you who told me to speak of how I feel freely because that's just who I am? */
==L#2ED25B @256 /* Erm... */
==L#2SD25B @257 /* Exactly. That was your own teaching, brother. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
Global("L#2EddardRomanceActive","GLOBAL",2)
CombatCounter(0) 
Global("L#2SDSkieEddard25","GLOBAL",3)~ THEN L#2SD25B Eddard25Skie4
@258 /* So... you're happy, right? */
DO ~SetGlobal("L#2SDSkieEddard25","GLOBAL",4)~ 
==L#2ED25B @259 /* In general? I... think so. Happier than I were when I was enslaved, that's for sure... */
==L#2SD25B @260 /* No, I mean... with <CHARNAME>. He's a good <PRO_MANWOMAN>, but is <PRO_HESHE> treating you well? I mean, it always looks like it, but... how are YOU feeling about this? */
==L#2ED25B @261 /* I'm happy. And <CHARNAME> is a wonderful <PRO_MANWOMAN>, yes. I wouldn't be with <PRO_HIMHER> if I weren't happy. I know there are some people who should be together but this thing between us... it's working. It's making me feel right. */
==L#2SD25B @262 /* Good, good! But if <PRO_HESHE> hurts you, <PRO_HESHE>'s gonna see you can't mess with my brother without getting into trouble with Skie Silvershield. */
==L#2SD25B @263 /* ...but I really hope it's not gonna happen, because I REALLY like <PRO_HIMHER> too, so... let's just assume it's all gonna stay that way. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD") 
See("L#2EDDRD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID) 
Global("L#2EddardRomanceActive","GLOBAL",2)
CombatCounter(0) 
Global("L#2SDSkieEddard25","GLOBAL",4)~ THEN L#2SD25B Eddard25Skie5
@264 /* Eddard. Hey, Eddard! Psst! */
DO ~SetGlobal("L#2SDSkieEddard25","GLOBAL",5)~ 
==L#2ED25B @265 /* What's wrong, Skie? */
==L#2SD25B @266 /* I got you a mouthwash. */
==L#2ED25B @267 /* Gods, why? */
==L#2SD25B @268 /* Because we wouldn't want you to repell <CHARNAME> with something that silly like a morning breath. */
==L#2ED25B @269 /* We're fine, REALLY. Skie, come on, I do care for my teel and breath and... everything. And insinuating it's not true is quite mean. */
==L#2SD25B @270 /* Okay, just... keep it as an emergency thing, then. Better safe than sorry. */
EXIT

////Aerie 

CHAIN IF ~InParty("AERIE") 
See("AERIE") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("AERIE",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardAerie","GLOBAL",0)~ THEN L#2EDB Aerie2Eddard1 
@271 /* Aerie, I am truly sorry. */
DO ~SetGlobal("L#2EddardAerie","GLOBAL",1)~ 
==BAerie @272 /* What for, Eddard...? I think it's the first time we're truly talking, so... I'm not sure I know what you're apologizing for. */
==L#2EDB @273 /* Last time we're resting, I... by accident... saw your scars. I both apologize for not turning away my look, but also... for what have happened to you. */
==L#2EDB @274 /* I know circumstances under which such wounds and scars happen and I wish I was wrong, but I think you suffered greatly. And not because of your own will or because you were asking for it. */
==BAerie @275 /* I... I did suffer, yes, and... I indeed feel strange knowing you saw my scars. I'd rather pretend they do not exist and in situation like this is becomes... truly difficult... */
==L#2EDB @276 /* I know how it feels. I had to deal with ill circumstances and will. And I too were hurt. */
==BAerie @277 /* Eddard, please, I... I do not doubt it, but as I said: I am not sure I feel comfortable knowing you've seen those scars... without me knowing it... */
==BAerie @278 /* So please, just... leave me be. */
EXIT
 
CHAIN IF ~InParty("AERIE") 
See("AERIE") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("AERIE",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardAerie","GLOBAL",1)~ THEN L#2EDB Aerie2Eddard2 
@279 /* I can't stop thinking how I confused you. Perhaps it would have been better if I kept it for myself. That piece of information I saw how hurt you were... */ 
DO ~SetGlobal("L#2EddardAerie","GLOBAL",2)~ 
==BAerie @280 /* Maybe it would indeed be better, but... it already happened, Eddard. And... you apologized. So it's only fair to forgive you. */
==BAerie @281 /* I suppose I am apable of that. And I'm feeling a bit better. I needed some time. Just... I'd rather have more privacy. Some space so I could... contemplate. About many things. */
==L#2EDB @282 /* Of course, Aerie, that's understandable. */
==BAerie @283 /* Thank you. */
==L#2EDB @284 /* It's nothing, you're welcome. But just let me admit that... I'm glad we're better. If there's anything you'd like to discuss or talk about, you know where to find me. */
==BAerie @285 /* Yes... I suppose I do. Now... escuse me, Eddard. I may need some... alone time. */ 
EXIT 

// Aerie ToB 

CHAIN IF ~Global("L#2EddardAerieTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("AERIE") 
See("AERIE") 
!StateCheck("AERIE",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Aerie2EddardTOB_01 
  @286 /* I think if I told the old Aerie who she is going to become, she would not believe me. This person you are today is like those people writes stories about! Not just novellists, but also common people, when they dream about becoming strong and respected. */
  DO ~SetGlobal("L#2EddardAerieTOB","GLOBAL",1)~ 
  == BAerie25 @287 /* You are right... while I wouldn't describe my current self the way you did it, I wouldn't believe you if you told me I would go that far... */
  == L#2ED25B @288 /* I... also hope that enought time has passed so you no longer feel angry about how I saw your scars and... you know what I am speaking of. */
  == Baerie25 @289 /* I'm not sure I was angry. Even if I was, it wasn't exactly about you. Just... a small portion of it was that you saw my scars. But it was mostly about how I... could barely think about them. I would see them, with my mind, as they were some... evil markers. Mementos of misfortune. I'm not sure if that's understandable... */
  == L#2ED25B @290 /* It is. It truly is. But the new Aerie I see is stronger. And even if some scars may feel as these mementos, they also show where we came from. How we changed and how much we care about survival. */
  == L#2ED25B @291 /* And there's nothing wrong about that. */
EXIT 

////Anomen 

CHAIN IF ~InParty("ANOMEN") 
See("ANOMEN") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("ANOMEN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardAnomen","GLOBAL",0)~ THEN L#2EDB Anomen2Eddard1 
@292 /* Looking at you reminds me what kind of burden a family name can be. That little detail that can cause much pressure. */
DO ~SetGlobal("L#2EddardAnomen","GLOBAL",1)~ 
==BAnomen @293 /* I suppose that "Silver Shield" you were forced to hold was never a light one. There is a chance it will never become light. No matter how wide your arms will get. */
==L#2EDB @294 /* That's an awfully bitter notice... and perhaps a true one. */
==L#2EDB @295 /* Names like ours come with burden. We are born with them and... well... I guess most of us die with them. */
==L#2EDB @296 /* But... I think we're getting painfully serious here. So perhaps we should end it, before we become like the dead already. Even though we most certainly breathe. */
EXIT 

CHAIN IF ~InParty("ANOMEN") 
See("ANOMEN") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("ANOMEN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardAnomen","GLOBAL",1)~ THEN L#2EDB Anomen2Eddard2 
@297 /* ...that was when my father would bring that Ghaffley-guy and I saw him stole our wine and whiskey from the kitchen. Our cook would use them for some pastry and desserts. He just went in ther and took them. */ 
DO ~SetGlobal("L#2EddardAnomen","GLOBAL",2)~ 
==BAnomen @298 /* Perhaps he could not resist the urge. I am not trying to make any excuses for him but I saw how some men and women find it hard to resist some... calls. */ 
==L#2EDB @299 /* I... am sure you know what you are talking of, Anomen, but I don't think such things should ever happen. */
==BAnomen @300 /* Neither do I believe it, Eddard. You may need to trust me on that. But... I think I am done talking about this. I think we should just... move on. */
EXIT 

////Anomen ToB 

CHAIN IF ~Global("L#2EddardAnomenTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("ANOMEN") 
See("ANOMEN") 
!StateCheck("ANOMEN",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Anomen2EddardTOB_01 
  @301 /* I once told you that there is a chance a family name will always remain a burden, but our work made me realize it's not just a matter of name. Just look at how many obstacles <CHARNAME> had to face. Because of <PRO_HISHER> blood, beliefs, companions or... just because <PRO_HESHE> was standing in one place, not another. */
  DO ~SetGlobal("L#2EddardAnomenTOB","GLOBAL",1)~ 
  == BAnome25 @302 /* Mmm, that is indeed truth, Eddard. Perhaps that is what this world is about: about fight and its results. <CHARNAME>, I presume, wanted to live. Wanted to show who <PRO_HESHE> is and what <PRO_HESHE> is worth. */
  == L#2ED25B @303 /* I think it's also about making a change. */
  == L#2ED25B @304 /* I think that's also what <CHARNAME> has been doing all that time. */
  == BAnome25 @305 /* Of course. The change. They are most of the time so hard to predict. */
EXIT 

////Cernd 

CHAIN IF ~InParty("CERND") 
See("CERND") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("CERND",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardCERND","GLOBAL",0)~ THEN L#2EDB Cernd2Eddard1 
@306 /* I think you'd love the Cloakwood area, Cernd. And thanks to <CHARNAME> it wasn't exactly exploited by the Iron Throne. */
DO ~SetGlobal("L#2EddardCERND","GLOBAL",1)~ 
==L#2EDB @307 /* They cared mostly about the mines, but if they would continue extracting the resources, I think the Cloakwood as a whole would suffer. Even if because of the carts going to and fro, with the iron they tried to get. */
==BCernd @308 /* Whenever there is a spring, there are creatures that will sip its water, Eddard. However, it is best when the thirst is distinguished from gluttony and greed. Otherwise, many may suffer. */
==L#2EDB @309 /* Yes, I suppose you are right. And that's more or less what <CHARNAME> stopped. It was a chance of exploit. Something that would end up with people dying. or suffering. */
==BCernd @310 /* Then I am glad this ended. And perhaps I will indeed get my chance to see Cloakwood with my own eyes. */
==L#2EDB @311 /* Let's hope the Shadow Druids are no longer there. I bet you'd rather avoide them. */
==BCernd @312 /* I would cetainly would. */
EXIT 

CHAIN IF ~InParty("CERND") 
See("CERND") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("CERND",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardCERND","GLOBAL",1)~ THEN L#2EDB Cernd2Eddard2 
@313 /* I wonder if there are times when people like you, seeing harm men do to other men, would rather change into some creature and remain in it forever. */
DO ~SetGlobal("L#2EddardCERND","GLOBAL",2)~ 
==BCernd @314 /* Every element has its place, Eddard, so does men of all races. But... I suppose yes, there are times when people can truly show monstrous tendencies. I wish that didn't happen but... that wish, I'm afraid, will remain just a dream. */
==L#2EDB @315 /* Mhm. I suppose so. */
==BCernd @316 /* Gladly, there are the sensitive people in this world, too. Men that can show not everyone is the same and not everyone has to bring more pain than hope. */
==L#2EDB @317 /* While I'd like to be such man, Cernd, that does doesn't sound as an easy one. Perhaps... even overwhelming. */
EXIT 
 
////Cernd ToB 

CHAIN IF ~Global("L#2EddardCerndTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("CERND") 
See("CERND") 
!StateCheck("CERND",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Cernd2EddardTOB_01 
  @318 /* When you change, Cernd, you are like a different being. You do not remind me of the calm man I know. That's somehow... fascinating! */
  DO ~SetGlobal("L#2EddardCerndTOB","GLOBAL",1)~ 
  == BCernd25 @319 /* Wherever is sun, there's also a shadow, my friend. And wherever is a threat, there are those that will try to do something about it. And means... well, the can take different shapes. */
  == L#2ED25B @320 /* Quite impressive shapes, as we could see more than once. Also, quite hairy and clawed. */
  == BCernd25 @321 /* Heh, well... yes. You're right. Even I had to learn how to get used to this. But the shape I can wear is indeed different fromt he skin I usually walk in. */
  == L#2ED25B @322 /* Different is understatement, Cernd. It's like calling tident a fork. */
EXIT 

////Edwin 

CHAIN IF ~InParty("EDWIN") 
See("EDWIN") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("EDWIN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardEdwin","GLOBAL",0)~ THEN L#2EDB Edwin2Eddard1 
@323 /* My mother's friend once showed me how to produce flame, but... it looks like you can do more than that, heh. */ 
DO ~SetGlobal("L#2EddardEdwin","GLOBAL",1)~ 
==BEdwin @324 /* Are you truly comparing MY powers to some... parlor tricks and cantrips. It shows much about what you actually know about magic, foolish boy. (It's like comparing a mouse to Kazgaroth.) */
==L#2EDB @325 /* I think I know more than you think. I suple never aspired to be a master arcasnist. I also know I am not a sorcerer. */
==BEdwin @326 /* That is quite clear, yes, and even if you tried, I can tell you wouldn't make a proper mage, boy. You lack certain... potential. */
==BEdwin @327 /* True power isn't for everyone. Some may need to satisfy themselves with mare crumbs of magic, lying to themselves they truly understand something they're barely brushed. (Exactly like you.) */
==L#2EDB @328 /* Maybe. I know some magic, though, and I never call myself a specialist. But neither I will say I know zero about it, Edwin. */
EXIT 

CHAIN IF ~InParty("EDWIN") 
See("EDWIN") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("EDWIN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardEdwin","GLOBAL",0)~ THEN L#2EDB Edwin2Eddard2 
@329 /* Have you ever regreted you took that exact way of approaching magic, Edwin? */
DO ~SetGlobal("L#2EddardEdwin","GLOBAL",1)~ 
==BEdwin @330 /* Doubts are for those of weak mind, boy. I however, focus on what I want to know and I embrace it. That makes me a mage, and that will make me me an charmage. In time. When I decide the timing is correct. (And that should be sooner than you think.) */
==L#2EDB @331 /* Mmm, I suppose it's good you're condifent about where you are and where you want to be. That may help to set a specific path to your goal. No matter what it is. */
==BEdwin @332 /* Hah! I can't believe what I am going to say, but you are correct. To that I can agree. */
==BEdwin @333 /* While I can't call you as many students I happened to talk to in Thay, I... suppose you are not exactly a waste of breath and seed like most men I have to deal here, in that part of the world. */
==BEdwin @334 /* But enough of talks! There are matters I still need to focus on. (I won't let talks like that delay the progress I planned for myself.) */
EXIT 

////Edwin ToB 

CHAIN IF ~Global("L#2EddardEdwinTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("EDWIN") 
See("EDWIN") 
!StateCheck("EDWIN",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Edwin2EddardTOB02 
 @335 /* There are times when I think you'd eagerly create a world of your own if you could. */
  DO ~SetGlobal("L#2EddardEdwinTOB","GLOBAL",1)~ 
  == BEdwin25 @336 /* Perhaps I could, boy, but... there are still secrets in this world that wait for Edwin Odesseiron to uncover them. And I'll happily do it. (And then, use what I learned however I wish.) */
  == L#2ED25B @337 /* Well, I can certainly relate to that, as... the process of learning may be pleasnt. So is uncovering secrets. */
  == BEdwin25 @338 /* Yes. Indeed. But... you're wasting my time again. Time no one is giving me back so... do us all a favor, boy, and learn on your now. I am busy. (He's taking way too much of my time.) */
  == L#2ED25B @339 /* Of course. I won't trouble you again. */
EXIT 

////Haer'Dalis 

CHAIN IF ~InParty("haerdalis") 
See("haerdalis") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("haerdalis",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardhaerdalis","GLOBAL",0)~ THEN L#2EDB Haerda2Eddard1 
@340 /* If you were a usual man, I would ask if you learned fighting on a ballet room's floor, but I presume, Haer'Dalis, that they do not have such rooms in... wherever you're from. */
DO ~SetGlobal("L#2Eddardhaerdalis","GLOBAL",1)~ 
==BHaerda @341 /* Ah, there are many rooms and many doors where I come from, and I wouldn't be surprised to find a ballet room behind one of them, my dear Trumpeter Swan. */
==L#2EDB @342 /* With that many doors you may easily get lost and... I think, while some may think I do not know what I am talking considering my family home, I would rather hace a small house, even a cottage, but know it well, rather than live in a place filled with doors and rooms I find hard to count. */
==BHaerda @343 /* Then you should never see the City of Doors, because that's more or less what Sigil is, Trumpeter Swan. An enormous surprise. A puzzle hard to solve. Perhaps even impossible to solve, considering how much time it would require. */
==L#2EDB @344 /* Mmm. Then I will simply trust you that this place is not for me. I'm wondering what kind of place you think I'd like. */
==BHaerda @345 /* Hah, well, 'tis may be something I'd need to think about first, Eddard. */
EXIT 

CHAIN IF ~InParty("haerdalis") 
See("haerdalis") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("haerdalis",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardhaerdalis","GLOBAL",1)~ THEN L#2EDB Haerda2Eddard2 
@346 /* So? Have you made your mind, Haer'Dalis? Do you know what place you think I'd enjoy. */
DO ~SetGlobal("L#2Eddardhaerdalis","GLOBAL",2)~ 
==BHaerda @347 /* Aye, and I think you are exactly in that place right now. Not literally, no my friend! but what I believe you want is to adventure and learn. And that is what <CHARNAME> provides, am I wrong? */
==L#2EDB @348 /* Heh, I suppose you're not. */
==L#2EDB @349 /* That is indeed what I find... thrilling. Knowing this world. Not any world, but this one. That I come from. Sword Coast. Amn, Perhaps Waterdeep and maybe, just maybe, Neverwinter. */
==L#2EDB @350 /* These are the lands and cities I know, I may return to and that somehow affected the world I was growing in, so... I suppose I should understand them. At least a bit. */
==BHaerda @351 /* Mayhap you should, yes, Trumpeted Swan, and perhaps that's what you actually want, not something you should do. */
==L#2EDB @352 /* Mmm. You may be right, Haer'Dalis. */
EXIT 

////Haer'Dalis ToB 

CHAIN IF ~Global("L#2EddardHaerdalisTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("HAERDALIS") 
See("HAERDALIS") 
!StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Haerda2EddardTOB_01 
  @353 /* I must say, than since we talked before, about places, and learning about my world and cultures that shaped it, I tried to learn and it's... richer than I though. */
  DO ~SetGlobal("L#2EddardHaerdalisTOB","GLOBAL",1)~ 
  == BHaerd25 @354 /* Ah, Eddard, Trumpeter Swan, that means you made few steps already and there are even more information and scenarios for you to see and understand. To some, it takes years. Five, ten or even twenty or thirty! I suppose it teppends, my friend, how much you want to know. */
  == L#2ED25B @355 /* Are you saying that there may be no limit to this. */
  == BHaerd25 @356 /* That's what I am saying, indeed, as this world is not written in stone, Eddard. While you learn, new stories and new tales are shaped. */
  == L#2ED25B @357 /* Well... I suppose it's going to take me some time. */
  == BHaerd25 @358 /* True. True it is. */
EXIT 

////Imoen 

CHAIN IF ~InParty("imoen2") 
See("imoen2") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("imoen2",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardImoen","GLOBAL",0)~ THEN L#2EDB Imoen2Eddard1 
@359 /* I heard that we have a common friend. */
DO ~SetGlobal("L#2EddardImoen","GLOBAL",1)~ 
==BImoen2 @360 /* Do we...? */
==L#2EDB @361 /* Liia. Duke Jannath. */
==BImoen2 @362 /* Ah... right. I... am sorry, Eddard, I still fing it hard to gather my thoughts sometimes, considering how much happened in your lives in the past year... */
==L#2EDB @363 /* I suppose that's natural, Imoen. A pity, though, that when you were in Baldur's Gate I wasn't there. Perhaps we could learn more. Exchange tales. */
==L#2EDB @364 /* Considering that Liia was training you, my father wouldn't mind if we worked together. Perhaps he would even encourage it. */
==BImoen2 @365 /* Maybe... but I suppose it couldn't have happened... you were... captured. And I wasn't just studing, I was also attacked and worried about the Crusade and... everything. */
==L#2EDB @366 /* True. That is why this "we could have" will wonderings will remain as "what if" with no real consequences and... nevermind. */
==L#2EDB @367 /* I'm still glad, though, that we can work together now. */
EXIT 

CHAIN IF ~InParty("imoen2") 
See("imoen2") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("imoen2",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardImoen","GLOBAL",1)~ THEN L#2EDB Imoen2Eddard2 
@368 /* ...and then Liia, believe me or not, drunk one glass of wine too much! Haha! She insisted on casting the Color Spray to color the ice scultpture this artist prepared, hah! EVERYTHING went wrong. and it was just a Color Spray spell. */
DO ~SetGlobal("L#2EddardImoen","GLOBAL",2)~ 
==L#2EDB @369 /* That was the last time I saw her drink more than two glasses of her favorite red. No wonder why. She should be happy only my father, monther, Duke Belt and myself were there, that evening. */
==BImoen2 @370 /* Hah! Well... I must say you cheered me up quite a bit! I can't imagine Duke Jannath get drunk like that and... try something like that... with a Color Spray. That some woman would tell me not to "overuse magical energies as..." */
==L#2EDB @371 /* "...you can never know when you'll need them!" Hah! I know, I know. */
==BImoen2 @372 /* I just hope she's safe now, though. Perhaps there will be time when we'll meet again. And talk... */
EXIT

////Imoen ToB 

CHAIN IF ~Global("L#2EddardImoenTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("IMOEN2") 
See("IMOEN2") 
!StateCheck("IMOEN2",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Imoen2EddardTOB_01 
  @373 /* ...you really think so? */
  DO ~SetGlobal("L#2EddardImoenTOB","GLOBAL",1)~ 
  == BIMOEN25 @374 /* I do. Your father would be proud. You helped with great things... and... */
  == BIMOEN25 IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @375 /* ...it's the same with Skie. You are both heroes. I just hope that once again this will be enough to... make everything work well... */
  == L#2SD25J IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @376 /* I really hope so! And... thank, Imoen. It's nice you're saying these things. */
  == BIMOEN25 @377 /* It looks like we really changed this world. */
  == L#2ED25B @378 /* For the better. Mostly. And... I hope it's going to stay that way. */
EXIT 

////Jaheira 

CHAIN IF ~InParty("jaheira") 
See("jaheira") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("jaheira",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardJaheira","GLOBAL",0)~ THEN L#2EDB Jaheira2Eddard1 
@379 /* I heard you knew <CHARNAME>'s foster father. What was he like? */
DO ~SetGlobal("L#2EddardJaheira","GLOBAL",1)~ 
==BJaheir @380 /* Gorion? Yes, I knew him. We worked together a couple of times and... there were parts of our lives we didn't know about, but I can say he was a wise man. And resourcesful. */
==BJaheir @381 /* He always had a couple of plan versions and he was quite mindful, too. That's why... finding out he died truly saddened me... and surprised. */
==L#2EDB @382 /* Thank you for telling me. I was wondering who was that person that taught <CHARNAME> and took care of <PRO_HIMHER>. */
==BJaheir @383 /* Perhaps... I wouldn't tell everyone what I told you. But... you seem like a good person. Still young, but I'm not surprised you want to know more about <CHARNAME>. */
==L#2EDB @384 /* Mmm. Well... yes. We're woring together. And I suppose you can know someone by who raised that person and who that person worked with. I guess. That's what they say. */
==BJaheir @385 /* Right. Anyway, since you know that already, I think it would be best if we move on now. */
EXIT 

CHAIN IF ~InParty("jaheira") 
See("jaheira") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("jaheira",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardJaheira","GLOBAL",1)~ THEN L#2EDB Jaheira2Eddard2 
@386 /* You know, I met a Harper once.  */
DO ~SetGlobal("L#2EddardJaheira","GLOBAL",2)~ 
==BJaheir @387 /* Mmm, it looks like everyone knows about my... "friends" these days. But tell me the name. Perhaps I know that agent. */
==L#2EDB @388 /* Simnick. Simnick Meancock. */
==BJaheir @389 /* Ah... yes... Simnick. Well, we were never good friends. And somehow I always thought that name suited him very well. */
==L#2EDB @390 /* Hah! I was having EXACTLY the same thought. */
==L#2EDB @391 /* He came to father once, wanting to warn him about an arsonist in Baldur's Gate, but somehow this... Meancock acted as if he was more important that both the arsonist and my father. And... actually, anyone else in the room. */
==BJaheir @392 /* Yes. That would be him. */
==BJaheir @393 /* You see, the fact you're working with someone doesn't always mean you share the same beliefs or the same tackt. */
==BJaheir @394 /* I know many good Harpers. But I suppose there are also those that... are... how to put it... Meancocks. */
EXIT 

////Jaheira 


CHAIN IF ~Global("L#2EddardJaheiraTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("JAHEIRA") 
See("JAHEIRA") 
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Jaheira2EddardTOB_01 
  @395 /* It would be nice to see you as someone equally important as Elminster. Or Alustriel Silverhand. */
  DO ~SetGlobal("L#2EddardJaheiraTOB","GLOBAL",1)~ 
  == BJahei25 @396 /* Hah! Well, that's a good one, Eddard! */
  == BJahei25 @397 /* I am sorry, but I never aspired to be like any of those. And I doubt I will ever be as old as they are now. I just do what must be done. Help those, I need to help. I do not plan to become such power in Toril... or never was I a Chosen of Mystra candidate. She wouldn't chose me. And maybe that's good. */
  == L#2ED25B @398 /* You do not need to be one of the Chosen. Or... perhaps you'll be a Chosen of Silvanus. Or Mielikki. Or anyone else. Or just Jaheira. A woman that cares. */
  == BJahei25 @399 /* Now, you are telling some bizarre ridiculous stories, Eddard. Well... perhaps one day you will tell them to your son. Or your daughter. */
  == BJahei25 IF ~Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN @400 /* Perhaps you'll have one of this with <CHARNAME> one day. */
  == BJahei25 @401 /* It is them you should tell such stories, Master Silvershield. But... thank you. Even if only for amusing me. */
EXIT 

////Jan 
 
CHAIN IF ~InParty("l#2eddrd") 
See("l#2eddrd") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("jan",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardJan","GLOBAL",0)~ THEN BJAN Jan2Eddard1 
@402 /* Ah, Eddard! I heard Silvershield family has some land near Baldur's Gate. I thought that... perhaps when this is over, we should go there, so I could inspect the soil and help you and your family grow some extra-ordinary plants and vegetables. Everything for a friend. Perhaps... we could even start a businss. */
DO ~SetGlobal("L#2EddardJan","GLOBAL",1)~ 
==L#2EDB @403 /* What business? */
==BJan @404 /* If I succeed and help you, I am sure there will be other noble families who will gladly use help of Jensens, and perhaps we'll be able to make some of my family join in. They are all skilled in some way and I think that could be a great success. */
==L#2EDB @405 /* Well, Jan, write a business plan and perhaps we'll talk about this. I... I'm not sure if I can succeed in greengrocing business, but... maybe one of my friends— */
==BJan @406 /* That is a splendid idea! Yes, of course, I say yes to this, and I should start working on the document. Actually, I am very good with preparing such things... most of the time... and when it doesn't include Athkatlan clerks, but this time it actually doesn't include them, so all should be fight. */
==L#2EDB @407 /* Right... somehow I'm starting to worry what kind of document I may receive from you. */
EXIT 

CHAIN IF ~InParty("l#2eddrd") 
See("l#2eddrd") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("jan",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardJan","GLOBAL",1)~ THEN BJAN Jan2Eddard2 
@408 /* I prepared the document you asked for, Eddard. Here. Just take a look! */
DO ~SetGlobal("L#2EddardJan","GLOBAL",2)~ 
==L#2EDB @409 /* These are... wait—why there is a turnip or a carrot drawn in almost every page? */
==BJan @410 /* I thought that if anyone is to truly understand that I am serious aboout it... and that all Jansens are serious, I need to show my dedication and knowledge on sizes and shapes of these vegetables. You see, it is truly amazing what shapes and sizes they can take. And some, like carrots, can have different colors. Naturally, without any magical enhancements! And— */
==L#2EDB @411 /* Jan, Jan, Jan. Please. I... I'm not sure I can show this to anyone. Not with all these vegetables! And this carrot it looks like—Nevermind. I... I'm not sure I want to go that way. */
==BJan @412 /* Ah... well, I can try to prepare a new document, but I'll need some time. */
==L#2EDB @413 /* Erm... just... take the all time you need. */
EXIT

////Jan ToB 

CHAIN IF ~Global("L#2EddardJanTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("JAN",CD_STATE_NOTVALID) 
InParty("l#2eddrd") 
See("l#2eddrd") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)~ 
THEN BJAN25 Jan2EddardTOB_01 
  @414 /* Eddard! Do you still remember that business plan you asked me to do from scratch? I have it ready. And it's BETTER than ever! I'm not lying, it truly is, so... here. I'd like you to take a look at it. */
  DO ~SetGlobal("L#2EddardJanTOB","GLOBAL",1)~ 
  == L#2ED25B @415 /* Jan... I asked you to skip the drawing. And there are even more drawings here. And more... carrots. And even more resembling... things. And—on Nine Hells, how many pages are here? */
  == BJAN25 @416 /* Exactly one thousand, one hundred and seventy seven pages. */
  == L#2ED25B @417 /* Jan. You're... insane. This si—it's... like... argh—no one is going to read this... */
  == BJAN25 @418 /* Even you? I worked on it so hard. I... I almost broke my wrist. Just... trust me, it's a really good document and I'd love you to take a look at it. Even if I need to make it shorter, perhaps we can cut out few pages. Like twenty perhaps? */ 
  == L#2ED25B @419 /* I... */
  == L#2ED25B @420 /* ...I mean... */
  == L#2ED25B @421 /* ... */
  == L#2ED25B @422 /* Gods... */
  == L#2ED25B @423 /* What I got myself into... */
EXIT 

////Keldorn 

CHAIN IF ~InParty("keldorn") 
See("keldorn") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("keldorn",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardKeldorn","GLOBAL",0)~ THEN L#2EDB Keldorn2Eddard1 
@424 /* I must say that I envy that beard of yours. My looks poorly when compared to yours. I suppose I may never grow what you have. */
DO ~SetGlobal("L#2EddardKeldorn","GLOBAL",1)~ 
==BKeldor @425 /* Well, my boy, it's not that important. I know some youg men like you would like to have a beard, but not everyone have and it doesn't mean there's something wrong with your face. */
==BKeldor @426 /* I was told it's all in the flesh and skin and some just can't grow it, but they still can be strong. Virtuous. And they can make other man marvel for who they are and for what they can achive. */
==L#2EDB @427 /* I... I know that, Keldorn, but you probably know that there are situation in which appearance matters and I believe that men with beards like your are more often trusted to be experienced and more capable. */
==BKeldor @428 /* Perhaps. But those truly clever know facial har has nothing to do with skills and capability. */
==BKeldor @429 /* Besides, you do not need to prove to anyone you are "manly" enough. And we trained together. I know you are strong and that you have a body of a fine fighter. You have no reason to be worried about who you are. */
==L#2EDB @430 /* I know and... I've been told that I'm handsome, but there are also these that would see a boy in me, not a man. */
==BKeldor @431 /* You are a man, Eddard. And I am sorry for calling you a boy before. */
==L#2EDB @432 /* It's fine. I suppose you're right. I am a grown man and I do earned a place in this team. */
==BKeldor @433 /* You have earned it, yes. I am sure <CHARNAME> would do the same. */
==L#2EDB @283 /* Thank you. */
EXIT 

CHAIN IF ~InParty("keldorn") 
See("keldorn") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("keldorn",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardKeldorn","GLOBAL",1)~ THEN L#2EDB Keldorn2Eddard2 
@434 /* Our last conversation. I think I'd like it to stay between us only, Keldorn. I realized that it can make people think I have some... unsolved issues. */
DO ~SetGlobal("L#2EddardKeldorn","GLOBAL",2)~ 
==BKeldor @435 /* It was a talk between gendlemen. We all have right to have some doubts and questions, Eddard. You are not different. And if you think I do never had doubts about what kind of men I am, then your wrong. */
==BKeldor @436 /* I met Lady Isyna, a warrioress... most likely stronger than me. She too felt she could be better. Or she was afraid people would think she's not wise enough to serve Oghma Church. But she was wrong. She was, and hopefully is, exactly the person she needed to be that time. */
==BKeldor @437 /* And you are exactly the man you are supposed to be. Strong. Vigorous. Clever. And let me say, handsome. You will be just fine. You already are. */
==L#2EDB @438 /* Thank you again, Keldorn. */
==BKeldor @439 /* You are welcome, Master Silvershield. And do not worry, this talk should stay between us. */
EXIT

////Keldorn ToB 

CHAIN IF ~Global("L#2EddardKeldornTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
HPPercentLT("KELDORN",80)
InParty("KELDORN") 
See("KELDORN") 
!StateCheck("KELDORN",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Keldorn2EddardTOB_01 
  @440 /* You're hurt, Master Firecam... */
  DO ~SetGlobal("L#2EddardKeldornTOB","GLOBAL",1)~ 
  == BKeldo25 @441 /* Heh. Yes. Not for the first time and probably not for the last time. Thank you, though, you helped my in that last battle. Sometimes I'm feeling you're getting stronger than me. And quicker. */
  == L#2ED25B @442 /* You're just saying that because of what we talked about long time ago. */
  == BKeldo25 @443 /* No. I am saying that because I can see that you became an even more skilled man. A person of many talents. It's good to know that once I slow down, there will be men alike you fighting for Toril's men and women. */
  == L#2ED25B @444 /* There's still much time before that happens. */
  == BKeldo25 @445 /* Haha, of course. But still, it's good to know. */
EXIT 

////Korgan 

CHAIN IF ~InParty("l#2eddrd") 
See("l#2eddrd") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("korgan",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardKorgan","GLOBAL",0)~ THEN BKorgan Korgan2Eddard1 
@446 /* Ye be holdin' tha weapon o' yers like it be ye cock, no yer weapon! Ye need t' swin' it, an' all ye do be wiggle it! */
DO ~SetGlobal("L#2EddardKorgan","GLOBAL",1)~ 
==L#2EDB @447 /* I do NOT wiggle it and I know how to fight, Korgan. I've been practicing for years now. */
==BKorgan @448 /* Ye may be practicin', aye, bu' ye still need t' kill a few goblins o' gnolls t' know how t' properly swin' ye thin'! Har har har! */
==L#2EDB @449 /* Now, I'm not sure if you're reffering to—you know, nevermind. */
==L#2EDB @450 /* I don't want to know. */ 
EXIT 

CHAIN IF ~InParty("korgan") 
See("korgan") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("korgan",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardKorgan","GLOBAL",1)~ THEN L#2EDB Korgan2Eddard2 
@451 /* I'm sorry to say that but there are few things in you that remind me of Kagain. If he paid his men and women more, perhaps things would go more fortunate to me... */
DO ~SetGlobal("L#2EddardKorgan","GLOBAL",2)~ 
==BKorgan @452 /* Har har! Ye now blamin' Battleaxe fer crimes me would probably do, bu' ne'er did? Har! Nah, go an' cry under a different tree... this wood not be carrin' wha' happened t' ye. */
==L#2EDB @453 /* Of course you don't. And fine, I shouldn't bother you. It's not like it's my hobby anyway. I'll better go and do some pushups. */
EXIT

////Korgan ToB 

CHAIN IF ~Global("L#2EddardKorganTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("KORGAN",CD_STATE_NOTVALID) 
InParty("KORGAN") 
See("KORGAN") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Korgan2EddardTOB_01 
  @454 /* There I times when I think you just want to kill our enemies with your body odour... */
  DO ~SetGlobal("L#2EddardKorganTOB","GLOBAL",1)~ 
  == BKorga25 @455 /* Ye may think ye be funny, boy, bu' ye be jealous fer me left an' right swin'! */
  == BKorga25 @456 /* It be months since me told ye 'bout tha' wigglin' o' yers and me see no improvement! Har har! */
  == L#2ED25B @457 /* Eh, nevermind. You know, just... kill our enemies the way you want. Axe, breath, crotch mephitis... you pick it. */
EXIT 

////Mazzy 

CHAIN IF ~InParty("mazzy") 
See("mazzy") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("mazzy",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardmazzy","GLOBAL",0)~ THEN L#2EDB Mazzy2Eddard1 
@458 /* Gods, if you were there, with that bow of yours, during mour little archery showdowns between me and Skie, you would have beat us both. Your archery skills are marvelous, miss Mazzy. */
DO ~SetGlobal("L#2Eddardmazzy","GLOBAL",1)~ 
==BMazzy @459 /* Thank you, but... I'm not sure such "showdowns" would be something for me. I'd rather use my abilities to actually make a change, not to kill time. */
==BMazzy @460 /* But... don't get me wrong, it's not that I despise such entertainment. It's still better than what they to at Athkatla's Copper Coronet, from what I have heard. */
==L#2EDB @461 /* And you mean... */
==BMazzy @462 /* Drunking until you can stand no more. Every single night. */
==BMazzy @463 /* Sounds like a waste of health and resources. */
EXIT 

CHAIN IF ~InParty("mazzy") 
See("mazzy") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("mazzy",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardmazzy","GLOBAL",1)~ THEN L#2EDB Mazzy2Eddard2 
@464 /* Avoreen sounds like an interesting god. */
DO ~SetGlobal("L#2Eddardmazzy","GLOBAL",2)~ 
==BMazzy @465 /* Being a god is about more than being interestng, Eddard, but... I suppose you know that. I guess you just wanted to start a conversation. */
==L#2EDB @466 /* Well, I just like talking to you and you seem like a person I could learn much from. And... I think it's good when a person believes in something. Or someone . And you certainly have that. */
==BMazzy @467 /* Mhm, yes, I suppose I do. More than only Avoreen, I think. */
EXIT 

////Mazzy ToB 

CHAIN IF ~Global("L#2EddardMazzyTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("MAZZY") 
See("MAZZY") 
!StateCheck("MAZZY",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Mazzy2EddardTOB_01 
  @468 /* Miss Mazzy, I must say that if I'd ever were to suggest the next person to train the Flaming Fist in Baldur's Gate, I'd suggest you. */
  DO ~SetGlobal("L#2EddardMazzyTOB","GLOBAL",1)~ 
  == BMazzy25 @469 /* That is very nice of you, Eddard, but I'm unsure if I would sign such agreement. It would depend on my work and my family... I must admit that I do worry if they are fine. */
  == L#2ED25B @470 /* Of course, I do understand. Even if you'd reject the option, it would be good for your name. */
  == L#2ED25B @471 /* Having a well known name can be quite helpful every now and then. */
EXIT 


////Minsc 

CHAIN IF ~InParty("minsc") 
See("minsc") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("minsc",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardminsc","GLOBAL",0)~ THEN L#2EDB Minsc2Eddard1a 
@472 /* So, you were sent on this... */
DO ~SetGlobal("L#2Eddardminsc","GLOBAL",1)~ 
==BMinsc @473 /* Dajemma, yes! That is to make people see Minsc is strong. And so Minsc could see the world, kick evil butts in other parts of the world! */
==L#2EDB  @474 /* That's an interesting custom, though I have a question. */ 
==L#2EDB  @475 /* When do you send someone on such adventure... when that person reaches some age? When some elder says so? When that person, I don't know, grows proper armpit hair? */
== L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @476 /* Egh, I'd shave it RIGHT AWAY. Seriously. */
== L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @477 /* I wouldn't, Skie, and I still don't, it may get itchy. But that's not the point, Skie. */
==BMinsc  @478 /* When ready, of course! And that can mean many many things! When a man wants to show he truly is a man and can see good from evil, then he may be ready! Minsc went later, with Dynaheir, whe she had to go to the Sword Coast. It's been quite some time, though... Hmm. */
==L#2EDB  @479 /* Mhm, right. I get it. I... I suppose that's all I wanted to know. Thank you, Minsc. */ 
==BMinsc  @480 /* Of course! Minsc and Boo are always happy to help! *squeak* */
EXIT 

CHAIN IF ~InParty("minsc") 
See("minsc") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("minsc",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardminsc","GLOBAL",1)~ THEN L#2EDB Minsc2Eddard2 
@481 /* I am strong too, but your arm, Minsc... it looks damn big! It can be quite intimidating. */
DO ~SetGlobal("L#2Eddardminsc","GLOBAL",2)~ 
==BMinsc @482 /* Minsc needs strong arms and strong legs and sharp blade and skilled friends like you and Boo! All that to stop evil. That is what heroes do. Right, Boo? *squeak* */
==L#2EDB @483 /* Yes, I do understand it and I know HOW you are using those muscles. I'm just saying they are intimidating and... it's good to have someone THAT big on our side. */
==BMinsc @484 /* Side of good is our side. So yes. That is for whom Minsc and this group fight for! */
==BMinsc @485 /* Using muscles for evil would be wrong. So Minsc and Boo are never going that way. */
==L#2EDB @486 /* Of course, Minsc. I'm actually quite glad. */
EXIT 

////Minsc ToB 

CHAIN IF ~Global("L#2EddardMinscTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("MINSC") 
See("MINSC") 
!StateCheck("MINSC",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Minsc2EddardTOB_01 
  @487 /* Time may pass, but I feel as if we got stuck in it. On one hand I feel as if we, how you say it, kicked hundreds of evil butts, but on the other hand... you don't look much older. Not sure about how I look like, though. */
  DO ~SetGlobal("L#2EddardMinscTOB","GLOBAL",1)~ 
  == BMinsc25 @488 /* The more evil butts you kick, Eddard, the younger you feel! That's the old rule Minsc and Boo believe. And just looks at them! We DO look young! */
  == L#2ED25B @489 /* Heh, just as I said, you indeed do. */
  == BMinsc25 @490 /* Perhaps, if we kick enough evil butts, we will be able to fight evil for the next one hundred years! Wouldn't that be something? *squeak* */
  == L#2ED25B @491 /* I'm not sure if that'd be something I'd like to do. */
  == L#2ED25B @492 /* I'll be really old, brinked, all my hair would be probably gray and I'd probably have problems with my bladder. I think I'd rather have some proper rest when I'm one hundred ninteen or twenty. */
EXIT 


////Nalia 

CHAIN IF ~InParty("nalia") 
See("nalia") 
!StateCheck("nalia",CD_STATE_NOTVALID) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardnalia","GLOBAL",0)~ THEN L#2EDB Nalia2Eddard1 
@493 /* Nalia, you seem... tired. */
DO ~SetGlobal("L#2Eddardnalia","GLOBAL",1)~ 
==BNalia @494 /* I haven't been sleeping very well, lately, but you do not need to worry, Eddard. I'll be fine... I just need some time. Last weeks weren't easiest, so you may need to excuse my state. */
==L#2EDB @495 /* There's nothing to excuse, I'm just a bit worried about you and about how you may be feeling. */
==L#2EDB @496 /* Body shows when you are tired. Your face, your skin. And I can see you may feel... overwhelmed. */
==BNalia @497 /* Perhaps a bit, but I know I... I'm not the only one suffering. So I find it hard to ask for a break, while I know some people can't ask for that. */
==L#2EDB @498 /* Fine, then... just at least let me take that backpack. I need some good workout anyway, and some sweat, as I had a solid portion of... dried meat and... I just could work out a bit. */
==BNalia @499 /* I suppose that would be fine... Thank you. */
EXIT 

CHAIN IF ~InParty("nalia") 
See("nalia") 
!StateCheck("nalia",CD_STATE_NOTVALID) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardnalia","GLOBAL",1)~ THEN L#2EDB Nalia2Eddard2 
@500 /* Have you been sleeping better lately? I thought I could give you that little tonic my cousin taught me to make. It can help your muscles relax. */
DO ~SetGlobal("L#2Eddardnalia","GLOBAL",2)~ 
==BNalia @501 /* I suppose trying it won't hurt, but let me take a little sip first so— */
==BNalia @502 /* It's... mostly alcohol. Potent alcohol. Ah... */
==L#2EDB @503 /* I... probably should have warned you. But it was only a small sip. I hope you're okay? */
==BNalia @504 /* It's fine. I'm just a bit... surprised. */
==L#2EDB @505 /* Sorry. I can be a bit... reckless, sometimes. */
==BNalia @506 /* No, no, it's very... good. I like it, Eddard. I just will take a little sip, as... I wouldn't want to drink, we're on a mission. */
==L#2EDB @507 /* Of course, Nalia. */
EXIT 

////Nalia ToB 

CHAIN IF ~Global("L#2EddardNaliaTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("NALIA") 
See("NALIA") 
!StateCheck("NALIA",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Nalia2EddardTOB_01 
  @508 /* Nalia, perhaps one day, when you are in Baldur's Gate, and if I'm there too, perhaps I should show you my family estate. It's not a keep, but I think you may like it. I could open some wine and we could talk. */
  DO ~SetGlobal("L#2EddardNaliaTOB","GLOBAL",1)~ 
  == BNalia25 @509 /* Maybe, but... why are you offering me this? */
  == L#2ED25B @510 /* Because frinedship between noble families feel so... unsure and sometimes it's not even true. But I like you and it would be a ncie idea to have a friend at home. Someone with whom I won't need to follow some script. It's just that. Nothing else. */
  == L#2ED25B @511 /* Oh, you thought that I... I... no. Hah. Well, I just realized how it could sounded. */
  == BNalia25 @512 /* Well, I'd be happy to come then. A friendly visit. Perhaps you could show me the city. */
  == L#2ED25B IF ~Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN @513 /* Sure. And if my beloved <CHARNAME> is with us, then we could go to a pub later. */
  == BNalia25 IF ~Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN @514 /* I'd love that. */
  == L#2ED25B @515 /* Then we have a deal! */
EXIT 

////Valygar 

CHAIN IF ~InParty("valygar") 
See("valygar") 
!StateCheck("valygar",CD_STATE_NOTVALID) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardvalygar","GLOBAL",0)~ THEN L#2EDB Valygar2Eddard1 
@516 /* ...excuse me? I'm not sure I understand, Valygar. */
DO ~SetGlobal("L#2Eddardvalygar","GLOBAL",1)~ 
==BValyga @517 /* I said it saddens me when I look at you. */
==L#2EDB @518 /* Okay... Why? */
==BValyga @519 /* Because you are still young and from a good family, yet you too were lured by the promises of magic. You are a good fighter, but even though, you had to give yourself to magic. That's the sad part. */
==L#2EDB @520 /* Well, no need to pity me. I am doing just fine, Valygar. */
==L#2EDB @521 /* But thank you for your pointless care. */
EXIT 

CHAIN IF ~InParty("valygar") 
See("valygar") 
!StateCheck("valygar",CD_STATE_NOTVALID) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardvalygar","GLOBAL",1)~ THEN L#2EDB Valygar2Eddard2 
@522 /* Valygar, I think there's so much... hate in you. */
DO ~SetGlobal("L#2Eddardvalygar","GLOBAL",2)~ 
==L#2EDB @523 /* Sometimes I think that something in your mind must have been gone wrong. I don't know if some woman or man broke your heart or is it just the broken home, but I wish you had a better past. */
==BValyga @524 /* Do not think I am some kind of book you can read. You are still a young boy. Even if only some years younger than me, you sitll can't tell one feeling or experience from another. */
EXIT 

////Valygar ToB 

CHAIN IF ~Global("L#2EddardValygarTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("VALYGAR") 
See("VALYGAR") 
!StateCheck("VALYGAR",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Valygar2EddardTOB_01 
  @525 /* So, even thou, as you once told me, I sadden you, you somehow managed to stay. Is that because you're looking in a different direction? */
  DO ~SetGlobal("L#2EddardValygarTOB","GLOBAL",1)~ 
  == BValyg25 @526 /* Well, I told you what I think, Eddard. I also told you that you are a good fighter, but somehow you forgot that part already. */
  == L#2ED25B @527 /* I... did not. But it pains me that you are so eager to judge others. */
  == L#2ED25B @528 /* I wish it was differently. */
EXIT 

////Viconia 

CHAIN IF ~InParty("viconia") 
See("viconia") 
!StateCheck("viconia",CD_STATE_NOTVALID) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardviconia","GLOBAL",0)~ THEN L#2EDB Viconia2Eddard2 
@529 /* It's not usual for someone like you to have a... fruitful past experience with someone like <CHARNAME>. I am sorry to say that, Lady DeVir, but most of people like me die after encounters with drow. Unless they are this Drizzt many speak with strange admiration. */
DO ~SetGlobal("L#2Eddardviconia","GLOBAL",1)~ 
==BViconi @530 /* Hah! Well, it s true, most Surfacers do not live long enough to tell about them meeting a usul ilythiiri, waelin. And by usual, I mean a servant of Lolth, those tha raid this world and delve again into the dark. */
==L#2EDB @531 /* But you stayed. */
==BViconi @532 /* Because I do not serve Lolth, no. I serve Shar. And... I could no longer stay in the Underdark. That is why I stayed under this cursed burning globe and that is why I stayed, if you really need to know, waelin. */
==BViconi @533 /* But thanks to reputation, the one you speak of, it's can be... difficult. But I'm not afraid to defend myself, if needed. */
==BViconi @534 /* So, does that satiate your curiosity? I showed you enough patience, so be careful how much more you may get. */
==L#2EDB @535 /* Partially. However, I am wondering if you like our food. */
==BViconi @536 /* Excuse me? You now ask me about... food? Dos ph'b'vecko, waelin! Why would it matter? */
==L#2EDB @537 /* I am sure most ask you about survival or how hard it is. I am sure you're done with questions like that. So I thought about something familiar to everyone, but also something that speaks to individual: food. */
==BViconi @538 /* This is... ridiculous. Begone! I wasted enough time on you, waelin... */
EXIT 

CHAIN IF ~InParty("viconia") 
See("viconia") 
!StateCheck("viconia",CD_STATE_NOTVALID) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardviconia","GLOBAL",1)~ THEN L#2EDB Viconia2Eddard2 
@539 /* I saw the last time we ate, you were chewing more carefully, Is that because you were thinking about what I have asked you about? */
DO ~SetGlobal("L#2Eddardviconia","GLOBAL",2)~ 
==BViconi @540 /* I must admit I was rarely asked about food by anyone, waelin. Back home, I would enjoy firelichen paste spread on sporebread, with a soup... if you really must know. I'd sometimes eat it with Pyrimo caviar or the fish itself. I heart they used rothé blood to catch it. */
==L#2EDB @541 /* Hmm, it does sound interesting. And here? I believe we can grow more things here, than it's possible where you come from. One of the benefits of living under the sun, instead of a rocky ceiling. */
==BViconi @542 /* Do these... question of yours ever end, waelin? Fine! I should tell you. I once stole this... stew, some intense... bulb, fried tomato paste and... seafood. */
==L#2EDB @543 /* Ah, Baldurian seafood stew! And that bulb you are reffering to, it must have been garlic, an important ingredient. I heard that stew is growing on popularity. */
==BViconi @544 /* I do not know and... this feels trivial, waelin! Is that really how your coversations feel like? Your... strange customs will never cease to amaze me. I... believe we should do something useful instead of talking about... nutrition. We should move on. Now. */
EXIT

////Viconia ToB 

CHAIN IF ~Global("L#2EddardViconiaTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("VICONIA",CD_STATE_NOTVALID) 
InParty("l#2eddrd") 
See("l#2eddrd") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)~ 
THEN BVicon25 Viconia2EddardTOB_01 
  @545 /* I still remember how you asked me about food, waelin. I presume you were trying to make me feel comfortable, strange thing. */
  DO ~SetGlobal("L#2EddardViconiaTOB","GLOBAL",1)~ 
  == BVicon25 @546 /* But I must admit it was a... surprisingly interesting experience. To speak about simple things, waste time like that! Shar, evagna uns'aa, but... I... did not truly despise it. */
  == L#2ED25B @547 /* Hah, it must have been hard to admit it. You are quite proud, Viconia, for someone who run away from home and had to hide under a hood to survive. */
  == BVicon25 @548 /* Watch what you're saying, waelin, because that one gesture you did will not help you if you keep that... jaunty tone. Usstan tlun naut zaale! */
  == L#2ED25B @549 /* Fine, fine, I'm... just happy that we've been working together and that we're both alive. People may fear you, some will never get used to it, but you are an interesting being. */
  == BVicon25 @550 /* You are walking a thin line, waelin, speaking of me as if I were some... speciment. But fine. Keep your tongue if that's the only way you know how to... communicate. Perhaps I'll find a way to tolerate it. */
  == L#2ED25B @551 /* Thank you. Believe me or not, but think it's about more than just tongue. Are you trying to make a kind gesture here, Viconia? */
  == BVicon25 @552 /* I think we wasted enough time on speaking of pointles customs, waelin, so waste no more breath on speaking your wild fantasies and... let us move on. Now. */
  == L#2ED25B @553 /* Heh, of course, Viconia. That's what I shall do. */
EXIT

////Yoshimo 

CHAIN IF ~InParty("yoshimo") 
See("yoshimo") 
!StateCheck("yoshimo",CD_STATE_NOTVALID) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardyoshimo","GLOBAL",0)~ THEN L#2EDB Yoshi2Eddard1 
@554 /* I think my mother used to drink this... special tea she had imported from Kara-Tur. Perhaps even from Kozakura. It had a green tint and intense taste. */
DO ~SetGlobal("L#2Eddardyoshimo","GLOBAL",1)~ 
==BYoshim @555 /* Ah, it might have been sencha. A special tea, my friend, and by special I mean so admired that drinking it would become a sort of... ritual itself. */
==L#2EDB @556 /* That might have been it! Yes. But... it had this strange taste. I tried it once. */
==BYoshim @557 /* Preparing sencha, Eddard, is, let me say so, like art. It demand special treatment, boty knowledge and sensitivity! If you want to drink it as my people do it, of course. */
==L#2EDB @558 /* I see. I suppose preparation is this kind of detail that can improve and completely destroy the experience. */
==BYoshim @559 /* Haha, you my be right, curious one! You may be indeed right, but... if we ever have a time between chores, spraring and other thing, mayhap Yoshimo should tell you how to properly prepare it. */
==L#2EDB  @560 /* I'd love that, thnak you. */
EXIT 

CHAIN IF ~InParty("yoshimo") 
See("yoshimo") 
!StateCheck("yoshimo",CD_STATE_NOTVALID) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2Eddardyoshimo","GLOBAL",0)~ THEN L#2EDB Yoshi2Eddard1 
@561 /* Agh... */
DO ~SetGlobal("L#2Eddardyoshimo","GLOBAL",1)~ 
==BYoshim @562 /* Ah, it looks like my young friend's stamina is on it's brink! Hah, perhaps it's because of the sparring we had. I told you, Eddard, to mind the energy you put in the way you use the blade. It's a more important detail than most could expect! */
==L#2EDB @563 /* Maybe. But weren't that why we took of the armor and the shirt? To protect it from sweat AND to make it less energy-consuming? */
==BYoshim @564 /* Haha, yes, and belive me, Yoshimo does not throw off his leather before every man! Yet as we can see, you still lacked proper energy distribution. */
==BYoshim @565 /* Some of your cuts can be stronger than mine, my friend, but you should remain careful AND mindful about the resources you have. And by resurces I also mean the power used by your muscles, hai. */
==L#2EDB @566 /* I... I'll try to remember it. And now, be as good and share some of your water with me, Yoshimo. I'm really thristy. */
==BYoshim @567 /* Of course, Eddard. Yoshimo does not ignore a rescue plea, heh. */
EXIT 

////Sarevok ToB 

CHAIN IF ~Global("L#2EddardSarevokTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("SAREVOK",CD_STATE_NOTVALID) 
See("l#2eddrd") 
InParty("l#2eddrd") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)~ 
THEN BSarev25 Sarevok2Eddard1 
  @568 /* Have we met before, cub? */
  DO ~SetGlobal("L#2EddardSarevokTOB","GLOBAL",1)~ 
  == L#2ED25B @569 /* Yes, actually we did. I'm Entar Silvershield's son. You met at one ball organized for Duke Belt, as a gift for his birthday. */
  == BSarev25 @570 /* Ah, that pointless meeting I attended. Yes, that was a chance a to gather some information I could later use. And I did. And... yes, now I remember you. You talked with Liia Jannath and Belt. */
  == BSarev25 @571 /* That party was probably more suitable for someone like you, and your rich father. To me, it was a day at work. */
  == L#2ED25B @572 /* Well, that's probably why you never even tried to smile. On the other hand, smile of Sarevok Anchev would probably steal the main attraction. It's so damn rare... */
  == L#2ED25B @573 /* ...but what else should we expect from someone who wanted to start a war... */
  == BSarev25 @574 /* Expect nothing. Or quite opposite, cub, and expect everything. Then perhaps you won't be taken from surprise as your father was, for a moment, by Slythe and Krystin. */
  == L#2ED25B @575 /* I'm not sure I know what you are speaking of and... perhaps that's good. */
  == L#2SD25J IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @576 /* They killed daddy for a moment, Eddard. These bad people and... Sarevok was a part of it. But they brought him back. */
  == L#2ED25B IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @577 /* You are lucky they did, Anchev! Otherwise we wouldn't be talking peacfully now. */
  == L#2ED25B @578 /* Let us move on now. I think I'm done with this conversation. */
EXIT 

////DORN 

CHAIN IF ~InParty("DORN") 
See("DORN") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("DORN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardDorn","GLOBAL",0)~ THEN L#2EDB Eddard2Dorn1 
@579 /* It's funny what a great warrior you are, and what a horrible kind of person, Dorn. */
DO ~SetGlobal("L#2EddardDorn","GLOBAL",1)~ 
== BDORN @580 /* Hah! The only "kind" of person I want to be is the living one. I do not care for pleseantries and what those like you, nobleman, think about my ways. */
== L#2EDB @581 /* Your ways? You mean murdering whatever moves so you could be sure you'll be the last man standing. */
== BDORN @582 /* Yes. And if you think I'd deny doing that, then you are a fool. That is why I'm still here. And why I am such good at what I'm doing, nobleman. */
EXIT 

CHAIN IF ~InParty("DORN") 
See("DORN") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("DORN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardDorn","GLOBAL",0)~ THEN L#2EDB Eddard2Dorn1 
@583 /* You had everything to be a good man. And I can imagine you as a knight, I do not care if you are a half-orc or not, and what people would say about that, but... you decided to take tha dark path. */
DO ~SetGlobal("L#2EddardDorn","GLOBAL",1)~ 
== BDORN @584 /* I've decided to take the winner's path. The one of the survivor. Now stop wasting my time and begone, pup. I have no patience for those like you. */
EXIT 

////Dorn 

CHAIN IF ~Global("L#2EddardDornTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("DORN",CD_STATE_NOTVALID) 
InParty("l#2eddrd") 
See("l#2eddrd") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Eddard2Dorn25 
  @585 /* So it is. You wanted to be survivor and you survived, Dorn. But you are still rotting on the inside. A pity, because you are strong and not as bad looking as some may think. And I always wanted to see a half-orc as a part of, let's say, Flaming Fist. */
  DO ~SetGlobal("L#2EddardDornTOB","GLOBAL",1)~ 
  == L#2ED25B @586 /* They could use some diversity in their amidst. */
  == BDORN25 @587 /* Your ideas are still fantasies, pup. Why would I join the Flaming Fist. */
  == L#2ED25B @588 /* I just said. To make a point. To show them you are strong. But also to make them see you as an equal. */
  == BDORN25 @589 /* Haha! We are not equal. And we will never be, pup. */
EXIT 

////NEERA 

CHAIN IF ~InParty("NEERA") 
See("NEERA") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("NEERA",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardNEERA","GLOBAL",0)~ THEN L#2EDB Eddard2Neera1 
@590 /* Wait, wait, wait! Are you telling me you could, let's say, summon the Sembian pudding? Just like that? */
DO ~SetGlobal("L#2EddardNEERA","GLOBAL",1)~ 
== BNEERA @591 /* Sure! And not just that! I can make a pudding out of EVERYTHING. If I stay focused, of course. It would be a pity if I summoned Sembian BLACK pudding. I bet there is at least one of those creatures in there. But I could also, let's say, turn a shoe into such pudding. */
== L#2EDB @592 /* Both these options sound risky. a chance for a Sembian black pudding... or a... shoe pudding. I think the shoe pudding is still a safer and there is a chance it will be an actual Sembian pudding, just transformed from a shoe. */
== BNEERA @593 /* Sure... so... here it is! Bam! */
== L#2EDB @594 /* Bam? That's not very... magic. But, hey, it is a pudding. Hmm, I'm wondering as it tasted. Hmm... */
== L#2EDB @595 /* Just as I thouhg. It tastes like feet. Bleh. And that was never my kind of kink, so... excuse me. I need to clean my tongue of that taste somehow. */
EXIT 

CHAIN IF ~InParty("NEERA") 
See("NEERA") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("NEERA",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardNEERA","GLOBAL",1)~ THEN L#2EDB Eddard2Neera2 
@596 /* So, were you preparing some more shoe puddings lately? The fact I didn't like it doesn't mean you must feel the same way. */
DO ~SetGlobal("L#2EddardNEERA","GLOBAL",2)~ 
== BNEERA @597 /* Oh, no. I've been trying to turn that into a battle spell. Something called Neera's Puddingination. */
== BNEERA @598 /* Wow, that name found really great. I'll say it again: NEERA'S PUDDINGINATION. I really like it. Hah. */
== L#2EDB @599 /* Wel, it does sound interesting, yes. I bet people would happily cast it on parties, Neera. */
EXIT 

////Neera ToB 


CHAIN IF ~Global("L#2EddardNeeraTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("NEERA") 
See("NEERA") 
!StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Eddard2Neera25 
  @600 /* So, how is Neera's Puddingination spell is comming along, my friend? */
  DO ~SetGlobal("L#2EddardNeeraTOB","GLOBAL",1)~ 
  == BNEERA25 @601 /* Oh, splendidly! I just need few more touches and... check how the quality of components affects the spell itself. It may REALLY hard to find a fresh squid tentacle... */
  == L#2ED25B @602 /* Unless you also come up with Neera's Squidification. */
  == BNEERA25 @603 /* Oh, THAT'S an idea! Thanks, Eddard! */
  == L#2ED25B @604 /* Wait—are we being serious now? Uhm... anyway... you're welcome? I guess. */
EXIT 

////RASAAD 

CHAIN IF ~InParty("RASAAD") 
See("RASAAD") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("RASAAD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardRASAAD","GLOBAL",0)~ THEN L#2EDB Eddard2Rasaad1 
@605 /* You like to have your spirit live in a well-built budy and... I must say you've succeeded. People would love to watch you perform all these gynmnastics and fight presentation as a part of balls. */
DO ~SetGlobal("L#2EddardRASAAD","GLOBAL",1)~ 
== BRASAAD @606 /* This, however, should be more than a presentation at balls, my friend. However, if that would inspire others to make at least one step towards balance, perhaps I could do it. */
== BRASAAD @607 /* I partially did it in Nashkel, I suppose, when I wanted to show these the town's people what they may achive by mindful practice. */
== L#2EDB @608 /* Well, I suppose it didn't go very well, though, as I haven't heard that Nashkel became the fittest place with shaped hunks. But... maybe they just didn't get it right. */
EXIT 

CHAIN IF ~InParty("RASAAD") 
See("RASAAD") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("RASAAD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardRASAAD","GLOBAL",1)~ THEN L#2EDB Eddard2Rasaad2 
@609 /* If I were to decide to be a full-plate hulk or a swift monk, I suppose I would choose the monk. It's closer to who I am now. */
DO ~SetGlobal("L#2EddardRASAAD","GLOBAL",1)~ 
== BRASAAD @610 /* I'd find that a fine way, yes, but why are you asking yourself who you'd become? Are you planning to change your ways, my friend? */
== L#2EDB @611 /* Oh, no. Not really. I just like asking myself these questions: "Would I rather do blah or bleh?" Let's say it's my marching game. */
== BRASAAD @612 /* Heh, well, I see. Whatever works for you and lets you reach that peace of mind we all need in this manner of work. */
EXIT 

////Rasaad ToB 

CHAIN IF ~Global("L#2EddardRasaadTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("RASAAD") 
See("RASAAD") 
!StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Eddard2Rasaad25 
  @613 /* The more you wander, the more people you see and they more places and events. Doesn't it somehow... confuse you, Rasaad? */
  DO ~SetGlobal("L#2EddardRasaadTOB","GLOBAL",1)~ 
  == BRASAA25 @614 /* No. The more I see, the better I understand how people feel. How the world works. But... to succeed you'd need to observe more than shallow doings. You'd need to notice what lies under them. */
  == L#2ED25B @615 /* I suppose that's true, but seeing all the chaos and suffering... it's not easy. */
  == BRASAA25 @616 /* That part never is, my friend. */
EXIT 

//HEXXAT 

CHAIN IF ~InParty("HEXXAT") 
See("HEXXAT") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("HEXXAT",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardHEXXAT","GLOBAL",0)~ THEN L#2EDB L#2Eddardexxat1 
@617 /* You know, I've been reading stories about your kind. */
DO ~SetGlobal("L#2EddardHEXXAT","GLOBAL",1)~ 
== BHEXXAT @618 /* What stories? */
== L#2EDB @619 /* About vampires living in a desolate places, preying on men and women, being their curse... but also about how your blood can boil. How you want to fight, feel, grasp what was taken from you. */
== L#2EDB @620 /* You see, there was this novel by Hov Cindersip, in which a vampire lord kills a family, but spares one child and he feels the urge to take care of it, but WITHOUT turning the kid into a vampire. The kid grows bigger, falls in love for the first time, with a neighbour named... Jinan, I think... */
== BHEXXAT @621 /* You should not believe in everything you read. These are not the vampires like me. Or those I faced. */
== L#2EDB @622 /* Isn't that the point? That we are all different? And that there may be different vampires? */
== BHEXXAT @623 /* Perhaps. But now we should move on. */
EXIT 

CHAIN IF ~InParty("HEXXAT") 
See("HEXXAT") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("HEXXAT",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardHEXXAT","GLOBAL",1)~ THEN L#2EDB L#2Eddardexxat2 
@624 /* Have you thought of writing a novel of your own? I'm sure there are many stories you could share, Hexxat. And I'd gladly read them. */
DO ~SetGlobal("L#2EddardHEXXAT","GLOBAL",2)~ 
== BHEXXAT @625 /* Many of these stories are mine only. And they should remain that way. */
== L#2EDB @626 /* But why? If people could read these texts, perhaps they would understand your point of view better. */
== BHEXXAT @627 /* My point of view would require my mind and... that only I have. */
EXIT 

////Hexxat ToB 

CHAIN IF ~Global("L#2EddardHexxatTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
InParty("HEXXAT") 
See("HEXXAT") 
!StateCheck("HEXXAT",CD_STATE_NOTVALID)~ 
THEN L#2ED25B Eddard2Hexxat25 
  @628 /* It's funny when I think you lived through more adventures that most people ever will, Hexxat. */
  DO ~SetGlobal("L#2EddardHexxatTOB","GLOBAL",1)~ 
  == BHEXXA25 @629 /* It is that people's fault only that she stay in one place. */
  == L#2ED25B @630 /* Of course, I'm not trying to blame you for anything. I just find this perspective... interesting. And perhaps it make me wonder what life is truly about. */
  == BHEXXA25 @631 /* Eveyone is going to give you a different answer to that question, young one */
  == L#2ED25B @632 /* Mmm. True. I suppose that's true. */
EXIT 

//WILSON 

CHAIN IF ~InParty("WILSON") 
See("WILSON") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("WILSON",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardWILSON","GLOBAL",0)~ THEN L#2EDB Eddard2WILSON1 
@633 /* I loved children's literature when I was younger and I've read many books about powerful animals. About a hyena vigilante becoming good and serving a trout king. */
DO ~SetGlobal("L#2EddardWILSON","GLOBAL",1)~ 
== L#2EDB @634 /* Oh, and there was one about the wounded boar, that also became a hero and lived until he was really old and opened a shop with honey. They called it The Boar's Honey. */
== BWILSON @635 /* Rff. */
== L#2EDB @636 /* Ah, so... that second one actually happened? I... didn't know what, Wilson. */
== BWILSON @637 /* Snufflesnort. Roar, sniff. */
== L#2EDB @638 /* And he's name is John. Well, good to know. */
== L#2EDB @639 /* From now I'll be sure to tell the story of John, the boar hero. */ 
EXIT 

CHAIN IF ~InParty("WILSON") 
See("WILSON") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("WILSON",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardWILSON","GLOBAL",0)~ THEN L#2EDB Eddard2WILSON1 
@640 /* Roar. Snoffle... grrr? */
DO ~SetGlobal("L#2EddardWILSON","GLOBAL",1)~ 
== BWILSON @641 /* Grr... */
== L#2EDB @642 /* Ah, right. I am sorry, but I'm still learning. But I'm doing good, ain't I? */
== BWILSON @643 /* Roar. */
== L#2EDB @644 /* Good! I'm happy you think so! */
EXIT 

//WILSON ToB 

CHAIN IF ~InParty("WILSON") 
See("WILSON") 
!StateCheck("l#2eddrd",CD_STATE_NOTVALID) 
!StateCheck("WILSON",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2EddardWILSONTOB","GLOBAL",0)~ THEN L#2ED25B Eddard2WILSON25 
@645 /* I doubt that my father will believe me that I fought arm with arm with such a great hero as you, Wilson. */ 
DO ~SetGlobal("L#2EddardWILSONTOB","GLOBAL",1)~ 
== BWILSO25 @646 /* Roar, rff. */
== L#2ED25B @647 /* You wouldn't mind telling him what a good warrior he sired? Well... uhm... I suppose that would convince him. And I'll happily welcome you in the Silvershield estate. */
== BWILSO25 @648 /* Roar, snuffle. Sniff. */
== L#2ED25B @649 /* Hah! Good! And yes, of course I'll buy some nice honey for a treat. Perhaps even John's famous honey, if I manage to get a jar. */
EXIT 

//////////////////////////////// 
//////////////////////////////// 
///// ROMANCE CONFLICTS //////// 
//////////////////////////////// 
//////////////////////////////// 

////Jaheira (R)

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD")
See("L#2EDDRD")
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID)
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#2EddardJaheiraR","GLOBAL",0)
Global("L#2EddardMatch","GLOBAL",1)
Global("JaheiraMatch","GLOBAL",1)
OR(2)
Global("JaheiraRomanceActive","GLOBAL",0)
Global("JaheiraRomanceActive","GLOBAL",1)~ THEN BJAHEIR JaheiraL#2Eddard1.00
@650 /* Well, it looks like you're making youself feel at home in this group, Eddard. That's good. And I can see how you look at <CHARNAME>. He saved many of us. But there are still some that fell. */
DO ~SetGlobal("L#2EddardJaheiraR","GLOBAL",1)~
==L#2EDB @651 /* I understand that, Jaheira, and I do not expect <CHARNAME> to save me every time we are in combet. I can take care of myself, but thank you for your concern. Even if not entirely wanted. Not this time, at least. */
==BJAHEIR @652 /* Of course, I am simply noticing you do seem to know more about <PRO_HIMHER> and I wanted to make sure you know what with what risk that may come from. */
END
IF~~THEN REPLY @653 /* Jaheira, stop acting as if I were responsible for someone wanting to know more about me! Gods, I wish you could sometimes just choke on those comments of yours... */ EXTERN BJAHEIR JaheiraL#2Eddard1.01
IF~~THEN REPLY @654 /* Eddard, she's just trying to warn you. She also suffered since she agreed to help me. Working with me is... dangerous. To say at least. You should remember that. */ EXTERN L#2EDB JaheiraL#2Eddard1.02

CHAIN BJAHEIR JaheiraL#2Eddard1.01
@655 /* Choke on them? Well, what a good way for a leader to speak to <PRO_HISHER> friend. I wanted to warn Eddard because I didn't want any of you to get hurt. */
==BJAHEIR @656 /* But perhaps I should indeed keep these comments for myself. */
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXIT

CHAIN L#2EDB JaheiraL#2Eddard1.02
@657 /* I understand. And... I feel as if I was getting into middle of something and perhaps I... shouldn't influence dynamics of this group so much. Escuse me. */
DO ~SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//HEXXAT (R)

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD")
See("L#2EDDRD")
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID)
!StateCheck("HEXXAT",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#2EddardMatch","GLOBAL",1)
OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
Global("L#2EddardHEXXATR","GLOBAL",0)~ THEN BHEXXAT L#2EddardHexxat.r.1
@658 /* It puzzles me. You were barely free and now, you throw yourself to fight along <CHARNAME>. And me. Doesn't it trouble you? */
DO ~SetGlobal("L#2EddardHEXXATR","GLOBAL",1)~
== L#2EDB @659 /* No. Why? You're not going to try to scare me away from this group, right? I am a horror novels enthusiast, so... it may be a hard task, Hexxat. */
== BHEXXAT @660 /* Why should I even try to scare you? If you are not a fit for this group, you will die sooner than later. */
== L#2EDB @661 /* Are you hoping for me to die? Because I'm also here and because... what? I wouldn't mind getting <CHARNAME> a bit better? Somehow you started behaving like that when <PRO_HESHE> shared some water with you. */
== BHEXXAT @662 /* You are accusing a vampire of jealousy. You are a strange man. */
END
IF~~THEN REPLY @663 /* Hexxat, stop teasing Eddard. I like him. He's fine. */ EXTERN L#2EDB L#2EddardHexxat.r.2
IF~~THEN REPLY @664 /* Eddard, it looks like Hexxat doesn't like you, so it would be best if you made your presence in this group a bit less... intense. I like Hexxat, so make it easier for all of us. */ EXTERN L#2EDB L#2EddardHexxat.r.3

CHAIN L#2EDB L#2EddardHexxat.r.2
@665 /* See? Problem solved. I'm fine. It looks like I'm not going anywhere, so let's try to get along. */
== BHEXXAT @666 /* I cannot promise anything like that. But indeed, something became more clear anyway. */
== BHEXXAT @667 /* I'll take a step back and let you, living, play while you still can. */
DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)~ EXIT

CHAIN L#2EDB L#2EddardHexxat.r.3
@668 /* So you'd rather make sure she's more comfortable than... */
==BHEXXAT @669 /* Than? */
==L#2EDB @670 /* Nevermind. */
DO ~SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//RASAAD (R)

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD")
See("L#2EDDRD")
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID)
!StateCheck("RASAAD",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#2EddardMatch","GLOBAL",1)
OR(2)
Global("RasaadRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",2)
Global("L#2EddardRASAADr","GLOBAL",0)~ THEN BRASAAD L#2EddardRasaad.r.1
@671 /* I was wondering if you are, my friend, strong enough to help and protect <CHARNAME>. I must say I realized that <PRO_HESHE>'s living under a lot of stress. It would be best if <PRO_HERHIS> companions could help and take some of the burden on our shoulders. */
DO ~SetGlobal("L#2EddardRASAADr","GLOBAL",1)~
==L#2EDB @672 /* Firstly, I think I can help with whatever <CHARNAME> would want me to help with. Secondly, I... think it should be for <CHARNAME> to decide what we should help with and you're not <PRO_HISHER> ambassador. I'm open though, for <PRO_HISHER> suggestion... when they come with <PRO_HISHER> own lips. */
END
IF~~THEN REPLY @673 /* Rasaad, Eddard is right and... I'd rather you listen to him. Eddard is smart and I think his presence is somehow growing on me. */ EXTERN BRASAAD L#2EddardRasaad.r.2
IF~~THEN REPLY @674 /* Eddard, Rasaad is right and I really need some help. Please, don't add even more problems and just help with solving all the troubles that already happened. Rasaad may instruct you, if you need help. */ EXTERN L#2EDB L#2EddardRasaad.r.3

CHAIN BRASAAD L#2EddardRasaad.r.2
@675 /* Of course and... I am sorry if I offended you in any way, <CHARNAME>. And I do apologize to you as well, Eddard. */
DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)~ EXIT

CHAIN L#2EDB L#2EddardRasaad.r.3
@676 /* Well... I think I'll handle it on my own. */
DO ~SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//NEERA (R)

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD")
See("L#2EDDRD")
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID)
!StateCheck("NEERA",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#2EddardMatch","GLOBAL",1)
OR(2)
Global("NeeraRomanceActive","GLOBAL",1)
Global("NeeraRomanceActive","GLOBAL",2)
Global("L#2EddardNEERAr","GLOBAL",0)~ THEN BNEERA L#2EddardNeera.r.1
@677 /* Have you noticed <PRO_HISHER> collarbone, Eddard. It looks quite... good! (she looks at you) */
DO ~SetGlobal("L#2EddardNEERAr","GLOBAL",1)~
== L#2EDB @678 /* Hmm, I guess it does. But... I don't know what do you see in collarbones. It's just... uhm... bone. There are other things <PRO_HESHE> has that looks good. */
== BNEERA @679 /* Oh, really? Well, it's good to know you look at <PRO_HIMHER> that way. But shush. I think <PRO_HESHE>'s listening to us! Agh, I wish I could just make us quieter. I'll stand over there and... you go there. Let's pretend nothing happened. Now. */
END
IF~~THEN REPLY @680 /* (Smile like Eddard) */ EXTERN L#2EDB L#2EddardNeera.r.2
IF~~THEN REPLY @681 /* (Smile like Neera) */ EXTERN BNEERA L#2EddardNeera.r.3

CHAIN L#2EDB L#2EddardNeera.r.2
@682 /* (He smiles at you back and you can tell it's an honest smile) */
== BNEERA @683 /* Hah! It looks <PRO_HESHE> likes you. Or... something. */
DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BNEERA L#2EddardNeera.r.3
@684 /* I've been spotted, Eddard...! */
==L#2EDB @685 /* It's not a bad thing. I think you wanted to be noticed, Neera. Anyway, it looks <PRO_HESHE> likes you. Maybe you're going to see that collarbone of <PRO_HISHER> from a closer distance. */
DO ~SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//DORN (R)

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD")
See("L#2EDDRD")
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID)
!StateCheck("DORN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#2EddardMatch","GLOBAL",1)
OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
Global("L#2EddardDornr","GLOBAL",0)~ THEN BDORN L#2EddardDorn.r.1
@686 /* Hmm. When I see how you act, I have a feeling that all you want is attention, pup. You're almost begging for it. */
DO ~SetGlobal("L#2EddardDornr","GLOBAL",1)~
== BDORN @687 /* You are only embarassing yourself, that's how I see it. */
== L#2EDB @688 /* I don't think I do. Perhaps it's you who's embarassing himself with that neverending grimace. */
== BDORN @689 /* Hmm? That's all you've got. */
END
IF~~THEN REPLY @690 /* Stow it, Dorn. Stop insulting a person I like. */ EXTERN L#2EDB L#2EddardDorn.r.2
IF~~THEN REPLY @691 /* Eddard, please. Give me a break. You could be more serious about all of this. That's actually something you could learn from Dorn. */ EXTERN L#2EDB L#2EddardDorn.r.3

CHAIN L#2EDB L#2EddardDorn.r.2
@692 /* See? I was right. */
==BDORN @693 /* If you truly like him, then perhaps the two of you are worth eachother. Weak things. */
DO ~SetGlobal("DornRomanceActive","GLOBAL",3)~ EXIT

CHAIN L#2EDB L#2EddardDorn.r.3
@694 /* Is that really what you think? */
==BDORN @695 /* You heard <PRO_HIMHER>. */
DO ~SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

////Viconia (R)

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD")
See("L#2EDDRD")
!StateCheck("viconia",CD_STATE_NOTVALID)
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#2EddardMatch","GLOBAL",1)
OR(2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)
Global("L#2Eddardviconiar","GLOBAL",0)~ THEN BViconi ViconiaL#2Eddard.r.1
@696 /* When I look at you, I think you're an interesting choice for a pet. Because that's what you're aspiring to be with that... sweet attitude of yours, hmm? You aspire to be <CHARNAME>'s pet? */
DO ~SetGlobal("L#2Eddardviconiar","GLOBAL",1)~
==L#2EDB @697 /* I don't think I am anyone's pet, Viconia. I'm a man of my own choices. */
END
IF~~THEN REPLY @698 /* Viconia, you're crossing a line here. Stop insulting Eddard. */ EXTERN BViconi ViconiaL#2Eddard.r.2
IF~~THEN REPLY @699 /* Eddard, please, you should know this place in this party. I need you obey those that are doing this longer than you do. */ EXTERN L#2EDB ViconiaL#2Eddard.r.3

CHAIN BViconi ViconiaL#2Eddard.r.2
@700 /* Ah, of course. Your <PRO_MASTERMISTRESS> has spoken, Eddard. */
DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXIT

CHAIN L#2EDB ViconiaL#2Eddard.r.3
@701 /* And now you're treating me like a dog? Perhaps the two of you are worth eachother after all. */
DO ~SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

////Aerie (R)

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD")
See("L#2EDDRD")
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID)
!StateCheck("AERIE",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#2EddardMatch","GLOBAL",1)
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("L#2EddardAerier","GLOBAL",0)~ THEN BAerie AerieL#2Eddard.r.1
@702 /* ...I'm not sure I understadn, Eddard. Are you saying that you... think <CHARNAME>'s good looking? I mean... I'm not sure that's how we should be looking at <PRO_HIMHER>. */
DO ~SetGlobal("L#2EddardAerier","GLOBAL",1)~
==L#2EDB @703 /* It's not like that! I said... Eh, nevermind. And... just nevermind. */
==BAERIE @704 /* I'm sorry, perhaps I just misunderstood something. */
==L#2EDB @705 /* Yes. Perhaps you did. (Eddard looks at you troubled) */
END
IF~~THEN REPLY @706 /* (Ignore him and smile at Aerie instead) */ EXTERN BAERIE AerieL#2Eddard.r.2
IF~~THEN REPLY @707 /* (Smile at Eddard to show him everything's fine and he doesn't need to be embarassed, no matter what he meant) */ EXTERN L#2EDB AerieL#2Eddard.r.3

CHAIN BAERIE AerieL#2Eddard.r.2
@708 /* Oh... Well, I think <CHARNAME> may need us. I'll get back to march in a second. */
==L#2EDB @709 /* Right... we will both be back, just... a second. */
DO ~SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

CHAIN L#2EDB AerieL#2Eddard.r.3
@710 /* Heh... Urm... I'll be back to work in a second, <CHARNAME>. No worries. I may just need to take... a sip of water. */
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT

//ANOMEN (R)

CHAIN IF WEIGHT #-1 ~InParty("L#2EDDRD")
See("L#2EDDRD")
!StateCheck("L#2EDDRD",CD_STATE_NOTVALID)
!StateCheck("ANOMEN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#2EddardMatch","GLOBAL",1)
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
Global("L#2EddardAnomenr","GLOBAL",0)~ THEN BAnomen AnomenL#2Eddard.r.1
@711 /* Now, I suppose there are a couple of things I could teach you about tactics and leadership, Eddard. I believe you should at all times see what <CHARNAME> needs. */
DO ~SetGlobal("L#2EddardAnomenr","GLOBAL",1)~
==BAnomen @712 /* And remember <PRO_HESHE> is the most important part of this group. Probably irreplacable. */
==L#2EDB @713 /* I know that and you do not need to teach me, Anomen, as I too know basics of leadership. And I'd rather listen what <CHARNAME> needs from <PRO_HIMHER>, not from you. */
==BAnomen @714 /* Hmm, I'm sure you'd preffer that. */
END
IF~~THEN REPLY @715 /* Anomen, stop it. */ EXTERN L#2EDB AnomenL#2Eddard.r.2
IF~~THEN REPLY @716 /* Eddard, Anomen is just trying to help. Respect him, I value his opinion. */ EXTERN L#2EDB AnomenL#2Eddard.r.3

CHAIN L#2EDB AnomenL#2Eddard.r.2
@717 /* Thank you, <CHARNAME>, I... I don't know what was it all about. */
DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT

CHAIN L#2EDB AnomenL#2Eddard.r.3
@718 /* Mhm. Of course. I suppose that's an order. */
DO ~SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT




/////////////////////////////////////////////
/////////////////////////////////////////////
/////////// POST-JOIN TALKS (SOA) ///////////
/////////////////////////////////////////////
/////////////////////////////////////////////

BEGIN L#2EDJ 

//SKIE DEAD - LOCK FRIENDSHIP AND ROMANCE

CHAIN IF ~Global("L#2EddardBlockEverything","GLOBAL",1)~ THEN L#2EDJ SKIE.LOCK.DEAD
@719 /* You... let my sister die? And then you just left her? I cannot ignore this <CHARNAME>. People die, sometimes we can do nothing about it, but... I... just can't let is slide. */
==L#2EDJ @720 /* Your mission is important so I'll not leave you, but you're not among my good books anymore. */
DO ~SetGlobal("L#2EddardBlockEverything","GLOBAL",2)~ EXIT

//ELDOTH ALIVe

CHAIN IF ~Global("L#2EddardEldothCom1","GLOBAL",1)~ THEN L#2EDJ ELD.00.01.00
@1932
DO ~SetGlobal("L#2EddardEldothCom1","GLOBAL",2)~ EXIT

//ELDOTH DEAD

CHAIN IF ~Global("L#2EddardEldothCom2","GLOBAL",1)~ THEN L#2EDJ ELD.00.02.00
@1933
==L#2SDSKJ @1934
==L#2EDJ @1935
==L#2SDSKJ @1936
DO ~SetGlobal("L#2EddardEldothCom2","GLOBAL",2)~ EXIT

//PHAERE REACTION

EXTEND_TOP UDPHAE01 106
IF ~Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN REPLY @1937 EXTERN UDPHAE01 l#edd.phaere2
END

CHAIN UDPHAE01 l#edd.phaere2
@1938
END
++ @1939 + 111
++ @1940 + 101
++ @1941 + 105
++ @1942 + 103

CHAIN IF ~Global("L#2EddardCommentPhaereSex","GLOBAL",1)~ THEN L#2EDJ PH.00.01.00
@1943
DO ~SetGlobal("L#2EddardCommentPhaereSex","GLOBAL",2)~ EXIT

//FRIENDTALK #1

CHAIN IF ~Global("L#2EddardFriendTalk","GLOBAL",2)~ THEN L#2EDJ F.01.00
@721 /* I must admit, it's good to have a chance to be free and enjoy little things! Give me Mrs. Bridehoove's, our pastry chef from Silvershield estate, mincemeat pies and I'm done for today. Joking, of course, they would be stale halfway from the Gate, but—it's damn good to feel free. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @722 /* Oh, I DO remember those pies! */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @723 /* Haha! I bet you do! I once saw you eat FIVE of them. AT ONCE. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @724 /* Shush! You wasn't supposed to tell anyone that, Eddard! */
==L#2EDJ @725 /* I'm wondering if Mrs. Bridehoove is still there, working for my family. It's been so long, since—you know. */
END
IF~~THEN REPLY @726 /* It's been a while since the caravan attack in which they captured you. */ EXTERN L#2EDJ F.01.01
IF~~THEN REPLY @727 /* We do not have time for talks on things like that. Not now and... to be honest, I'd rather move on than waste my time on idle chatters. */ EXTERN L#2EDJ F.01.02

CHAIN L#2EDJ F.01.01
@728 /* Yes. It's been... too long. But I was quite lucky to have survived at all. It was quite unlikely. Skie thought I'm gone and so did many many others. */
==L#2EDJ @729 /* I must admit, though, that there is this grain of bitter disappointment and embarassment. I was supposed to help those people, to make sure the caraven will reach its destination. It was an important task, the time was crucial and the whole circumstances, the crisis. And instead I not only failed, but was one of the only two men that survived the ambush. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @730 /* But... it's not like it was up to you who's gonna make it and who's going to... you know. */
==L#2EDJ @731 /* It's worse than scars, you know. That... experience of failure. So when I mentioned disappointment, I meant the one I have in myself. Perhaps it will be gone one, at some point, but now it feels quite bitter. */
END
IF~~THEN REPLY @732 /* Death is always bitter. But feeling that you're the one to blame can be even worse. */ EXTERN L#2EDJ F.01.03
IF~~THEN REPLY @733 /* Well, they were just... unlucky. All of you were. What happened is not that uncommon, though. Especially around those poorer than you. */ EXTERN L#2EDJ F.01.04
IF~~THEN REPLY @734 /* We don't have time for this. We should move on, Eddard, before this <DAYNIGHT> will go to waste.. */ EXTERN L#2EDJ F.01.02

CHAIN L#2EDJ F.01.03
@735 /* True. So very true. */
EXTERN L#2EDJ F.01.05

CHAIN L#2EDJ F.01.04
@736 /* Ah, I see you certainly know how to needle someone like me. But I suppose that's... not untrue what you're saying. */
EXTERN L#2EDJ F.01.05

CHAIN L#2EDJ F.01.05
@737 /* Father would often say that "responsibility can be like shooting arrows at a mirror: once you hit, prepare to see all these cracks and remember how it was to see the image whole." */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @738 /* Ugh, I heard that at least ocne a month. */
==L#2EDJ @739 /* I suppose I know what he meant. I did all my best, I was responsible, buy being in that position means you're going to face all these... things you'd rather never see. And what you see all these "cracks" you may need to remind yourself what was it for. And that you were not the only one there. A pity, though, that the other man was Vully. Perhaps if it was someone else, the burden of failure could be divided and carried by more than just one pair of hands. */
==L#2EDJ @740 /* Anyway, I'm not here to complain. Sorry. I didn't mean to get you down, discourage you, or anything like that. I... should have probably talked about the mincemeat pies rather than how it feels to fail. */
==L#2EDJ @741 /* But I heard you stopped a war up north. The one Iron Throne and Sarevok almost started! */
END
IF~~THEN REPLY @742 /* Yes. Luckily this job doesn't only bring failures, but also some victories. */ EXTERN L#2EDJ F.01.06
IF~~THEN REPLY @743 /* Yes, I suppose. But—look, if you want to talk about how you felt, it's fine. You don't need to change the subject. */ EXTERN L#2EDJ F.01.07
IF~~THEN REPLY @744 /* It was long time ago and I can barely remember how everything happened. I just... fought some battles, faced few men... */ EXTERN L#2EDJ F.01.08
IF~~THEN REPLY @745 /* Perhaps even more than one! */ EXTERN L#2EDJ F.01.09
IF~~THEN REPLY @746 /* Look... we should move on. */ EXTERN L#2EDJ F.01.02

CHAIN L#2EDJ F.01.06
@747 /* Well said, <CHARNAME>, well said. */
EXTERN L#2EDJ F.01.10

CHAIN L#2EDJ F.01.07
@748 /* No. It's okay. I know what happened and sprinkling that wound with salt isn't going to help. I just need some time. */ 
EXTERN L#2EDJ F.01.10

CHAIN L#2EDJ F.01.08
@749 /* Hah! Well, I didn't know youre that humble! It's a huge achivement, stopping such tragedies, so you shouldn't be hestitating when talking about it. It's a big deal and you deserve some praise for a well done job. */
EXTERN L#2EDJ F.01.10

CHAIN L#2EDJ F.01.09
@750 /* Ah, right. Caelar and the Crusade. I heard about that while I was in captivity. People talked about her and that army she led. It caused quite some chaos. */
EXTERN L#2EDJ F.01.10

CHAIN L#2EDJ F.01.10
@751 /* Anyway, I must say it may be quite interesting to work with the Hero of Baldur's Gate. That city if my little homeland and I'm glad it wasn't turned into ash and rubble. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",3)~ EXIT

CHAIN L#2EDJ F.01.02
@752 /* Ah, wrong timing? Well, I suppose we'll talk some other time. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",3)~ EXIT

//FRIENDTALK #2

CHAIN IF ~Global("L#2EddardFriendTalk","GLOBAL",5)~ THEN L#2EDJ F.02.00
@753 /* I should tell you that I sent a note to the Silvershield estate, <CHARNAME>. It would be cruel to keep them thinking that I'm dead. Well, maybe I could keep it up with Aunt Olha, to avoid her parties... and to rub her nose a bit! A spitful one she is. You wouldn't like her. Well, SHE wouldn't like YOU. */
END
IF~~THEN REPLY @754 /* Wait, why?! I'm beyond likeable! */ EXTERN L#2EDJ F.02.01
IF~~THEN REPLY @755 /* It's good you let you family know. */ EXTERN L#2EDJ F.02.02
IF~~THEN REPLY @756 /* I suppose you know best how and well to tell them. */ EXTERN L#2EDJ F.02.02
IF~~THEN REPLY @757 /* I don't care about things like if you informed you're family that you're back from the dead. Let us just move on. */ EXTERN L#2EDJ F.02.03

CHAIN L#2EDJ F.02.01
@758 /* I bet you are! Just look at that face of yours. But to make her like you, you'd need to be a Sembian artisian, eager to give her some discounts on weirdly excentric and slightly offputting sculptures. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @759 /* She's the worst! */
==L#2EDJ @760 /* Yes, she's that kind of person. */
END
IF~~THEN REPLY @761 /* I see. Well, anyway, it's good you let you family know. */ EXTERN L#2EDJ F.02.02
IF~~THEN REPLY @762 /* Right. Back on the topic: I suppose you know best how and well to tell them. */ EXTERN L#2EDJ F.02.02
IF~~THEN REPLY @763 /* Eh... I don't care sho she is and what is she like or who she would would approve. Let us just move on, I don't have time for such nonsense. */ EXTERN L#2EDJ F.02.03

CHAIN L#2EDJ F.02.02
@764 /* I included this little locket I took as a token of good luck, so they'll know it's not some kind of trick. They'll know it's me and... perhaps it's good if I avoid them for a while, otherwise father may start interrogating me... or even worse: put me through extra sparring classes to make sure situation like this never happens again. */
==L#2EDJ @765 /* So, tell me, how did you like father? */
END
IF~~THEN REPLY @766 /* He seems fine. */ EXTERN L#2EDJ F.02.03x
IF~~THEN REPLY @767 /* He cares about his city. */ EXTERN L#2EDJ F.02.03x
IF~~THEN REPLY @768 /* He can be handful... */ EXTERN L#2EDJ F.02.04
IF~~THEN REPLY @769 /* He is a good man, I suppose, but maybe be difficult to work with. */ EXTERN L#2EDJ F.02.04
IF~~THEN REPLY @770 /* He seems impulsive while expecting everyone else to be quite opposite. */ EXTERN L#2EDJ F.02.04
IF~~THEN REPLY @771 /* He is a hypocrite. */ EXTERN L#2EDJ F.02.05
IF~~THEN REPLY @772 /* I hate him. */ EXTERN L#2EDJ F.02.05
IF~~THEN REPLY @773 /* I don't know him that well. */ EXTERN L#2EDJ F.02.06
IF~~THEN REPLY @774 /* I don't know and I don't care. What I know is that we should be moving. */ EXTERN L#2EDJ F.02.03

CHAIN L#2EDJ F.02.03x
@775 /* Hmm, you speak of him kindly. Hah, I'm not sure everone would agree with you, but... he is a good man. */
EXTERN L#2EDJ F.02.07

CHAIN L#2EDJ F.02.04
@776 /* Hmm, that's quie true. He's not a bad man and he cares a lot, but he's not a saint and he has his... moods. But everyone does, I suppose. */
EXTERN L#2EDJ F.02.07

CHAIN L#2EDJ F.02.05
@777 /* Strong words! But I do not expect you to love him. He's not your father and... he doesn't make things easy for his kids anyway. But he's a good man. Just... demanding? */
EXTERN L#2EDJ F.02.07

CHAIN L#2EDJ F.02.06
@778 /* Mhm. Right. */
EXTERN L#2EDJ F.02.07

CHAIN L#2EDJ F.02.07
@779 /* I suppose hot blood runs in the family. From what I heard, my grandfather had it too. Maybe I have it too... */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @780 /* ...and Skie. You know her. */
==L#2EDJ @781 /* I suppose we are alike, it just manifests in a bit different ways. We may dislike it, we may think it's not true, but it matters who made us into this world. Would you agree? */
END
IF~~THEN REPLY @782 /* You know who's my father, don't you? */ EXTERN L#2EDJ F.02.08
IF~~THEN REPLY @783 /* I... don't want to talk about this, Eddard. Just... let us move on. I'm done talking about nonsense. */ EXTERN L#2EDJ F.02.03

CHAIN L#2EDJ F.02.08
@784 /* Heh, I heard, yes. But I suppose that's good. At least that spares you, I presume awkward, coming out. I can imagine people react in all sorts of ways when they find out that you the guy who made you is the infamous God of Murder. It can be a true party-killer in some circles. */
END
IF~~THEN REPLY @785 /* But you don't seem to be bothered. */ EXTERN L#2EDJ F.02.10
IF~~THEN REPLY @786 /* Doesn't it frighten you, or something? */ EXTERN L#2EDJ F.02.10
IF~~THEN REPLY @787 /* It is! And even a Child of Bhaal deserves a party every now and then! One during which <PRO_HESHE> doesn't need to hid who <PRO_HESHE> is! */ EXTERN L#2EDJ F.02.09
IF~~THEN REPLY @788 /* I'm done talking about this. Let us move  on, Eddard. */ EXTERN L#2EDJ F.02.03

CHAIN L#2EDJ F.02.09
@789 /* True. You too deserve some normal fun. A garden party. With refreshing drinks and tiny tartalettes.  */
EXTERN L#2EDJ F.02.10

CHAIN L#2EDJ F.02.10
@790 /* As I said, it does matter who our parents are, but it doesn't mean blood is going to manifest itself the same way. Let me see you back... hmmm. Looks good. The face, the chest... No, I don't think I can see any signs of abysmal corrution or that would say have to be a copy of Bhaal. I know, I know, there are at least thee families in Baldur's Gate I know, who would expect you to burn with hellish flames or something like that. */
==L#2EDJ @791 /* Sorry for a long introduction, but jokes aside: this quite long talk was to... let you know what you are and who you are is fine by me. You saved me and I know you stopped a war and that is more than many other "heroes of Baldur's Gate" did in the last ten years. */
==L#2EDJ @792 /* So... as long as you don't mind my onw little idiosyncrasises, we should remain mutual in our respect. And... I won't like, I'd like that. I lie things fair and honest. */
END
IF~~THEN REPLY @793 /* We're on the same page then. */ EXTERN L#2EDJ F.02.11
IF~~THEN REPLY @794 /* Right. Anyway, I think it's time to move on. */ EXTERN L#2EDJ F.02.12

CHAIN L#2EDJ F.02.11
@795 /* I'm happy to hear that! */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",6)~ EXIT

CHAIN L#2EDJ F.02.12
@796 /* Of course, of course. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",6)~ EXIT

CHAIN L#2EDJ F.02.03
@797 /* Mmm. Fine. I suppose you're moody when it comes to when people can talk to you. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",6)~ EXIT

//FRIENDTALK #3 (UPON REST - BEFORE REST: MISSINI)

CHAIN IF ~Global("L#2EddardFriendTalk","GLOBAL",8)~ THEN L#2EDJ F.03.00
@798 /* Fourty seven, fourty eight... forty nine... fifty. Right. Could you pass me that cloth? I... had to gather my thoughts and I like to exercise when doing so. */
END
IF~~THEN REPLY @799 /* Sure. Here. */ EXTERN L#2EDJ F.03.01
IF~~THEN REPLY @800 /* Want to tell me what you needed to think about? */ EXTERN L#2EDJ F.03.02
IF~~THEN REPLY @801 /* I'm not your servant, go and take it yourself. And leave me be, I too need to think about something. */ EXTERN L#2EDJ F.03.03

CHAIN L#2EDJ F.03.01
@802 /* Thank you! */
EXTERN L#2EDJ F.03.02

CHAIN L#2EDJ F.03.02
@803 /* What you're having here, it's all quite serious. I just hope I can help you properly, that's why I want to stay in shape. Physically and mentally and... */
END
IF~~THEN REPLY @804 /* And...? */ EXTERN L#2EDJ F.03.04
IF~~THEN REPLY @805 /* Whatever. Do it quietly and let me get back to my own business. I want to have some sleep soon. */ EXTERN L#2EDJ F.03.03

CHAIN L#2EDJ F.03.00
@806 /* I've been in some dark places, the last year was a difficult one and I'm glad it's over. And I am in better spirit now, but that also means I may need to act differently. Take deal with new kinds of challanges. */
==L#2EDJ @807 /* Being a slave can break a soul and while I feel better now, what we're doing now is a kind of transition and I still feel I need some strength to do that. And by the way, your life isn't exactly a piece of cake. Unless the cake is on fire, guarded by a undead dragon and... a death curse, perhaps? I like how I need to become better, but, as I said, I haven't dealt with such challanges for a while and I may need a second or two to adapt. */
==L#2EDJ @808 /* But hey, I can already tell you that whole adventure will get me few scares and get my chest harier, hah. */
END
IF~~THEN REPLY @809 /* You'll need to shave it with blade barrier! */ EXTERN L#2EDJ F.03.04
IF~~THEN REPLY @810 /* Just... don't push yourself too much. As you said yourself, your last year was different from what we're doing now. I don't want you to get hurt or something. */ EXTERN L#2EDJ F.03.05
IF~~THEN REPLY @811 /* Eh, I don't think I want to spend more time on your jumping between serious topics and jokes. We should get some sleep. */ EXTERN L#2EDJ F.03.03

CHAIN L#2EDJ F.03.04
@812 /* Nah, I'll leave it like that so people could get jealous. */
EXTERN L#2EDJ F.03.06

CHAIN L#2EDJ F.03.05
@813 /* It's fine. It really is. */
EXTERN L#2EDJ F.03.06

CHAIN L#2EDJ F.03.06
@814 /* As you may have noticed, I do joke when things get serious, but that's how I got through all the preasure. Even back home. Skie would always see it, help me to blow of some steam, let us have one of our archery showdowns so we could see who's better, but also to do something about all these thought. Alternative was way too dreadful: she would ask me to let me fix my nails and... I always preffered to deal with my nails and hair on my own. */
==L#2EDJ @815 /* And I also learned to joke a bit. To deal with new tasks, challanges and our father's ways to get me better. "You need to be prepared for every scenario, boy." And rarely I had any control over scenarios I would like to happen. But I played along. Learned. How to fight. How to deal. Endure. */
==L#2EDJ @816 /* At least I look good. Have mustly bones and muscles. And some unfulfilled dreams, of course. */
END
IF~~THEN REPLY @817 /* Like what? */ EXTERN L#2EDJ F.03.07
IF~~THEN REPLY @818 /* I'm done talking. I think we both need some sleep so let's end that idle chatter and finally get some sleep. */ EXTERN L#2EDJ F.03.03

CHAIN L#2EDJ F.03.07
@819 /* You may laugh, but while my friend would get scolded for breaking a window or doing other stupid things growing boys do, I had to take dyplomacy classes. So... I regret I couldn't cause normal problems, get into fights, trying things for the first time. These cam way later than to my other friends. And some I might have missed forever. */
==L#2EDJ @820 /* Oh well, at least my sister was there, with me, so we could regret not doing things together. Heh. */
==L#2EDJ @821 /* Anyway, I've got the last series of sit-ups. Perhaps You want to hold my feet or just join me? That way we can talk another moment. */
END
IF~~THEN REPLY @822 /* Hmm, why not. */ EXTERN L#2EDJ F.03.08
IF~~THEN REPLY @823 /* Sorry, but no. I have other things to do, so let's stop the idle chatter and let me get back to my before-sleep duties. */ EXTERN L#2EDJ F.03.03

CHAIN L#2EDJ F.03.08
@824 /* Great! Perhaps I should tell you a story when Skie wanted to practice her make-up skills and painted father's bust! Hah, that was a good one! And if you only saw his face! */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",9)~ EXIT

CHAIN L#2EDJ F.03.03
@825 /* Mhm. Fine. I won't take any more of your time, then. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",9)~ EXIT

//FRIENDTALK #4 (MISSINI)

CHAIN IF ~Global("L#2EddardFriendTalk","GLOBAL",10)~ THEN L#2SDMES F.04.00
@826 /* Well, this should become our routine, <CHARNAME>. And... it is true... Eddard, you're really here! Your father asked me to check if that note was truly real! Your parents couldn't believe, even though you also sent your father's locket. */
==L#2EDJ @827 /* Missini, my old friend! Who would have guessed you'd still be working for the Silvershield. I hope they gave you a pay-rise. */
==L#2SDMES @828 /* You haven't changed a bit, young lord. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @829 /* Well, he only got some bruises and lost a year of life and... */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @830 /* It's fine, Skie. Let's not stress it right now. Please. */
==L#2EDJ @831 /* Believe me or not, I am glad you stayed with my parents. They always trusted you. */
==L#2SDMES @832 /* I wouldn't leave them. Especially after news about your death. False news, as we can see. */
==L#2EDJ @833 /* I would call it a... temporary death. It was like that. I was made a slave and... I wouldn't call that a life. */
==L#2SDMES @834 /* Is it true what you wrote in your letter? That Vully Grip was involved? That they joined the bandits who treated you that way? */
==L#2EDJ @835 /* Yes. Sadly. But he's gone now. It looks like <CHARNAME> and Skie dealt with him. */
==L#2SDMES @836 /* Humph! Good riddance! That monster knew how important that mission was and how your father and mother would feel about loosing their child... */
==L#2EDJ @837 /* Perhaps let us focus on the fact that I'm back. */
==L#2SDMES @838 /* Let me tell you, that you should also be back home. */
==L#2EDJ @839 /* Maybe, but... look, I went through a lot, Missini, everyone knows it. This... was hard. And there are thoughts I need to deal with and I'd rather do it while helping those that need my help, instead of staring into walls of my room and thinking how should things have went differently. So... I'm staying. */
==L#2SDMES @840 /* It looks like <CHARNAME> has this... special power that lures Silvershield like moths to a candle. Forgive me this comparison, young lord. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @841 /* There are some moths that look nice. Most are indeed nasty though. But... let's not make a big deal of it. */
==L#2EDJ @842 /* Missini... */
==L#2SDMES @843 /* I know, my lord, I just... am glad to see you. Even if it's here, not in the place where people would actually want to see you. */
==L#2EDJ @844 /* Missini, don't make it harder than it is. I told you. I need some... space right now! */
==L#2SDMES @845 /* I'm sorry. My comments could have been a bit... unfortunated. */
==L#2SDMES @846 /* As for you, <CHARNAME>... */
END
IF~~THEN REPLY @847 /* Yes, yes. I should remember who I am working with and keep him safe. */ EXTERN L#2SDMES F.04.01
IF~~THEN REPLY @848 /* Just spare me the talk, Missini. It's starting to be annoying. */ EXTERN L#2SDMES F.04.01

CHAIN L#2SDMES F.04.01
@849 /* I... right. I suppose you know and... Perhaps I too should trust you. */
==L#2SDMES @850 /* I know I may sound ungrateful, <CHARNAME>, and... perhaps I should appologise to you. But those children are important to me. Not because I'm working for the Silvershield, but also because I saw them gro. Take their first lessons. */
==L#2SDMES @851 /* I saw that young man shave for the first time. And then, I had to help him with four cuts. */
==L#2EDJ @852 /* Yes, yes... let's embarass me a bit more. Slavery clearly wasn't enough. */
==L#2SDMES @853 /* The things is... I do care. But I suppose I should just accept things change. I'll tell your parents that you're truly alive. And that you'll be back when you're done with other things. When you're ready. */
==L#2EDJ @854 /* Thank you, Missini. */
==L#2SDMES IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @855 /* And Miss Skie... thank you that you investigated the case. That you helped to uncover the truth about your brother's whereabouts. It's good to see how a heroine is born... */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @856 /* Wait... what? That was actually... nice. Thank you, Missini. */
==L#2SDMES @857 /* Now, it's time for me to leave. */
==L#2SDMES @858 /* Good luck... to all of you. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",11) DestroySelf()~ EXIT

CHAIN IF ~Global("L#2EddardFriendTalk","GLOBAL",11)~ THEN L#2EDJ F.04.0X
@859 /* That was... an intense before-the-sleep set of happening. A workout, our talk and now this. But... I suppose we can finally rest now. We'll talk again when everyone gets a chance to have a deep breath. I certainly need that. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",12) RestParty()~ EXIT

//FRIENDTALK #5 

CHAIN IF ~Global("L#2EddardFriendTalk","GLOBAL",14)~ THEN L#2EDJ F.05.00
@860 /* I'm wondering how Jackly's doing... I hope he's fine. */
END
IF~~THEN REPLY @861 /* Who's Jackly? */ EXTERN L#2EDJ F.05.01
IF~~THEN REPLY @862 /* I don't give a damn about who that is. Let's just move on. And please, stop slowing us down. */ EXTERN L#2EDJ F.05.02

CHAIN L#2EDJ F.05.01
@863 /* Jackly was my friend. We met in slavery. He was a half-elf, more or less of my age, also good looking and we would have eachother back. That become necessary when you are treated like an item that can be thrown away the very second it's broken. */
==L#2EDJ @864 /* He was the first person I met. When They locked my in a cell, with no clothing, no blanket, he would talk to me. I cried at first. A grown man and I cried like when I was a kid. But he would tell me his story, he would tell me how to survive in this new world I were stuck in. He gave me water. There's this chance I would be dead if it wasn't for him. */
==L#2EDJ @865 /* He was bought like... four months before you freed me. This lady saw him and said he looks to fair to be locked like an animal. */
==L#2EDJ @866 /* I've seen worse buyers and the moment they opened the cage, she came to him and gave him her cloack, so... there is a huge chance he's alive. I really hope he's alive. But all of that also made me think about noble families... */
==L#2EDJ @867 /* I realized that I'm glad people that worked for my family got their workers the... right way. Hired them. But... I'm afraid some families don't handle things that way. That lady that... bough Jackly... I hope she did it to change his fate. But I saw buyers that would buy slaves for different reason. To own them. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @868 /* It's really really really creepy. All that you're saying, Eddard. */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @869 /* It is, Skie. */
==NALIAJ IF ~InParty("NALIA") See("NALIA") !Dead("NALIA")~ THEN @870 /* Gods... people can be so... cruel. I'm happy we can be better than this... */
==L#2EDJ @871 /* That's also why I told Missini that I can do more good by staying with you. I can help people who's suffering or those that were in a similar situation. */
END
IF~~THEN REPLY @872 /* No wonder you want things to change. That you want to help people. */ EXTERN L#2EDJ F.05.03
IF~~THEN REPLY @873 /* Do you really think you will meet Jackly again? He can be anywhere. */ EXTERN L#2EDJ F.05.04
IF~~THEN REPLY @874 /* I don't want to hear about such things. I'd rather pretend things like that do not happen. */ EXTERN L#2EDJ F.05.05
IF~~THEN REPLY @875 /* Whatever. I think we should move on, Eddard. Please, stop slowing us down. */ EXTERN L#2EDJ F.05.02

CHAIN L#2EDJ F.05.03
@876 /* I know it sounds trivial, but... yes. That and perhaps to build a reputation of my own. So people knew one person can be many things. A man. A slaver. Or... a former slaver. And, if I succeed, a not that bad guy who gives a damn? */
EXTERN L#2EDJ F.05.06

CHAIN L#2EDJ F.05.04
@877 /* I don't know. Perhaps we'll never meet again, but... I don't know. I kinda hope we will. Even if only so I could tell him that I'm grateful for his help. */
EXTERN L#2EDJ F.05.06

CHAIN L#2EDJ F.05.06
@878 /* Anyway, I'm telling you all these sad things again! Agh! Sorry. I PROMISE, next time we're going to do something nicer. I mean, talk about something nicer. I suppose anything would be better, so... that's not a difficult promise to hold to. */
END
IF~~THEN REPLY @879 /* Heh, indeed, it's not! */ EXTERN L#2EDJ F.05.07
IF~~THEN REPLY @880 /* It's not a sad story, actually. It shows that even in such situations like the one you where in there are people who you can count on. Trust. */ EXTERN L#2EDJ F.05.08
IF~~THEN REPLY @881 /* Do me a favor and simple don't slow me down at all. No more idle chatters. */ EXTERN L#2EDJ F.05.02

CHAIN L#2EDJ F.05.07
@882 /* Good! And... thanks for listening. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",15)~ EXIT

CHAIN L#2EDJ F.05.08
@883 /* I guess you're right. But there are some bitter parts here, too. So... sorry for that. But still, thanks for listening. I may have needed that. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",15)~ EXIT

CHAIN L#2EDJ F.05.05
@884 /* No matter what you think, they do. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",15)~ EXIT

CHAIN L#2EDJ F.05.02
@885 /* Mhm. Fine. If that's how you want it to be. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",15) SetGlobal("L#2EddardFriendshipActive","GLOBAL",3)~ EXIT

//FRIENDTALK #6

CHAIN IF ~Global("L#2EddardFriendTalk","GLOBAL",17)~ THEN L#2EDJ F.06.00
@886 /* Hey, I have a riddle for you! Listen carefully: How often do Entar Silvershield takes a bath? */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @887 /* Oh, oh! I know this one! */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @888 /* Shush! Let <PRO_HIMHER> think! */
==L#2EDJ @889 /* Go on! Take a guess! */
END
IF~~THEN REPLY @890 /* Everyday, I hope. */ EXTERN L#2EDJ F.06.01
IF~~THEN REPLY @891 /* Every week? */ EXTERN L#2EDJ F.06.01
IF~~THEN REPLY @892 /* Once a month? */ EXTERN L#2EDJ F.06.01
IF~~THEN REPLY @893 /* Once a year? */ EXTERN L#2EDJ F.06.01
IF~~THEN REPLY @894 /* Never? */ EXTERN L#2EDJ F.06.01
IF~~THEN REPLY @895 /* He never leaves the bathtub? */ EXTERN L#2EDJ F.06.01
IF~~THEN REPLY @896 /* I do not have time for jokes things like this... Let us move on. */ EXTERN L#2EDJ F.06.02

CHAIN L#2EDJ F.06.01
@897 /* Oncee a SILVERYMOON. Hah! */
END
IF~~THEN REPLY @898 /* Excuse me? */ EXTERN L#2EDJ F.06.03
IF~~THEN REPLY @899 /* Huh. Good one! */ EXTERN L#2EDJ F.06.04
IF~~THEN REPLY @900 /* Gods... kill me already. */ EXTERN L#2EDJ F.06.04
IF~~THEN REPLY @901 /* I don't have time for this. Let's move on! Now! */ EXTERN L#2EDJ F.06.02

CHAIN L#2EDJ F.06.03
@902 /* Silverymoon. It's a city up north. And the idiom is "one a blue moon". It means "rarely". Get it? Hah! */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @903 /* Haha! Oh, Eddard. */
==L#2EDJ @904 /* Well, that's one of my favorites. */
EXTERN L#2EDJ F.06.05

CHAIN L#2EDJ F.06.04
@905 /* But you get it, right? Silverymoon. It's a city up north. And the idiom is "one a blue moon". It means "rarely". Get it? */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @906 /* Haha! Oh, Eddard... */
==L#2EDJ @907 /* That's one of my favorites. */
EXTERN L#2EDJ F.06.05

CHAIN L#2EDJ F.06.05
@908 /* Maybe you'll like this one: Why there are no werewolves in Baldur's Gate? */
END
IF~~THEN REPLY @909 /* I give up. */ EXTERN L#2EDJ F.06.06
IF~~THEN REPLY @910 /* Please... no... */ EXTERN L#2EDJ F.06.06
IF~~THEN REPLY @911 /* NO... Don't do this! */ EXTERN L#2EDJ F.06.06
IF~~THEN REPLY @912 /* Don't— */ EXTERN L#2EDJ F.06.06
IF~~THEN REPLY @913 /* I think I know, but go on. I know you want to say it. */ EXTERN L#2EDJ F.06.06
IF~~THEN REPLY @914 /* Eddard! We don't have time for this. Let us move on... */ EXTERN L#2EDJ F.06.02

CHAIN L#2EDJ F.06.06
@915 /* Because Baldur's Gate has SILVERSHIELDS! */
END
IF~~THEN REPLY @422 /* Gods... */ EXTERN L#2EDJ F.06.07
IF~~THEN REPLY @916 /* I didn't know you are a pun-guy. */ EXTERN L#2EDJ F.06.07
IF~~THEN REPLY @917 /* It's clear, you passed the test. You can become a dad. You have all the puns you need and embarass your kids. */ EXTERN L#2EDJ F.06.07
IF~~THEN REPLY @918 /* Eddard... We don't have time for this. Let us move on. NOW! */ EXTERN L#2EDJ F.06.02

CHAIN L#2EDJ F.06.07
@919 /* Heh. You see, I would always say these jokes. Our parents are always so serious about being a noble or about the role of a Duke. But we are still people. So I would keep saying those... not poor jokes to remind them. They would be angry and I relly know power comes with responsibility. But we can't forget we can still laugh. */
==L#2EDJ @920 /* Title has this burden and there were days when everyone at the estate would be quiet. I always found it hard to stand when I was a kid. I eventually stopped telling them, when father started giving me more serious jobs, but I never forgot that life can't be only about titles and being serious and humble. You need to learn hot to laugh from yourself. Otherwise you can get really bitter. */
==L#2EDJ @921 /* I hope father remembers those terrible terrible jokes. Even when I'm not around. But I suppose it may be hard to remember them when people get scared. And the vision of a war can scare most men and women. */ 
END
IF~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~THEN REPLY @922 /* So you think your father has a tendency of being bitter, yes? */ EXTERN L#2SDSKJ F.06.08
IF~OR(3) !InParty("L#2SDSkie") !See("L#2SDSkie") Dead("L#2SDSkie")~THEN REPLY @922 /* So you think your father has a tendency of being bitter, yes? */ EXTERN L#2EDJ F.06.09
IF~~THEN REPLY @923 /* I suppose it could be difficult, yes. The war, the bandit attacks... */ EXTERN L#2EDJ F.06.10
IF~~THEN REPLY @924 /* You know you were being childish while your father was probably afraid. */ EXTERN L#2EDJ F.06.11
IF~~THEN REPLY @925 /* We don't have time to discuss it. We should get going. */ EXTERN L#2EDJ F.06.02

CHAIN L#2SDSKJ F.06.08
@926 /* YES. */
EXTERN L#2EDJ F.06.09

CHAIN L#2EDJ F.06.09
@927 /* Well... he can be that way. Sometimes. */ 
EXTERN L#2EDJ F.06.12

CHAIN L#2EDJ F.06.10
@928 /* True... Eh... */
EXTERN L#2EDJ F.06.12

CHAIN L#2EDJ F.06.11
@929 /* I... I know... */
EXTERN L#2EDJ F.06.12

CHAIN L#2EDJ F.06.12
@930 /* I eventually stopped, though, as I know father is serious because that's who he is. But I'd like to know we could also talk about other things than changes in infrastructure of the city or investigation cases of forgery. I wanted to know I could sit with him. Have a talk. Like father and son. */
==L#2EDJ @931 /* So I hope he remembers those jokes, but also that he realized why I was telling them. That he actually listened. Maybe we'll have a pint when I'm back. Or when he retires... */
==L#2EDJ @932 /* Anyway, I suppose that's enough jokes for today. Let's move on. We can talk again soon. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",18)~ EXIT

CHAIN L#2EDJ F.06.02
@933 /* Mhm. It looks like you're not in the mood right now. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",18)~ EXIT

//FRIENDTALK #7

CHAIN IF ~Global("L#2EddardFriendTalk","GLOBAL",20)~ THEN L#2EDJ F.07.00
@934 /* Our last talk made me wonder if I'd like to take the Dukes position after my father retires. */ 
END
IF~~THEN REPLY @935 /* Would you? */ EXTERN L#2EDJ F.07.01
IF~~THEN REPLY @936 /* Look, I don't have time for this. We should move on. The sooner, the better. */ EXTERN L#2EDJ F.07.02 

CHAIN L#2EDJ F.07.01
@937 /* I can joke around, but... I think I would. If it would help in reaching some stabilization and if I knew I could actually offer some aid, then I would accept it. But I wouldn't want that to happen just yet. I'm feeling I still have much to learn. */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @938 /* And perhaps I could use some of Skie's help. She's smarter than some may think. And she's creative once you make her focus on something and once she sees her input matters. */
==L#2EDJ @939 /* I know I've been telling puns, that there I do not succeed in everything I make, but I think I also am capable of inducting a change once I see the need. I sometimes struggle when it comes to taking the best approach, but... I suppose that would come with experience. It... does come with experience... right? */
END
IF~~THEN REPLY @940 /* I think so. I too had to learn how to be a leader and... oh boy, I made so many mistakes right after I had to run from Candlekeep. */ EXTERN L#2EDJ F.07.03
IF~~THEN REPLY @941 /* Of course it comes with experience. And with time. And you can also get some counselors, which could discuss different scenarios with you. I think that's how it works. */ EXTERN L#2EDJ F.07.03
IF~~THEN REPLY @942 /* I don't know. And I don't care. I think it would be best if we move on. */ EXTERN L#2EDJ F.07.02

CHAIN L#2EDJ F.07.03
@943 /* Hmm, it does make sense. I think I may need to think another while about this. */
==L#2EDJ @944 /* Thank you for lending me your ear. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",21)~ EXIT

CHAIN L#2EDJ F.07.02
@945 /* Eh... right... */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",21) SetGlobal("L#2EddardFriendshipActive","GLOBAL",3)~ EXIT

//FRIENDTALK #8

CHAIN IF ~Global("L#2EddardFriendTalk","GLOBAL",23)~ THEN L#2EDJ F.08.00
@946 /* I must admit that it looks like I'll learn much from working with you. And maybe, just maybe, though, I'll be a better candidate to help if my family needs my help. I think I did well by staying with you, <CHARNAME>. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @947 /* Ekhem! */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @948 /* Of course, Skie, all thank's to you. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @949 /* Oh, I do have good ideas. Sometimes. Well, most of the time. */
==L#2EDJ @950 /* So... thanks for taking me in. */ 
END
IF~~THEN REPLY @951 /* No problem. You're a fine help and you make some things easier. */ EXTERN L#2EDJ F.08.01
IF~~THEN REPLY @952 /* You looked like someone who can handle fighting and that's the sort of companions I need right now. Upcoming battles are going to be quite hard. I don't want they be fatal to us. Only to our enemies. */ EXTERN L#2EDJ F.08.01
IF~~THEN REPLY @953 /* Yes, yes, yes, but let us move on now. Seriously. We're not here to chat. */ EXTERN L#2EDJ F.08.02

CHAIN L#2EDJ F.08.01
@954 /* I know what you mean. */
==L#2EDJ @955 /* A pity you weren't there instead of Vully. Things could be better. Perhaps we could save the caravan and its people. */
END
IF~~THEN REPLY @956 /* I was still a beginner back then. I'm not sure I would be of much use. */ EXTERN L#2EDJ F.08.03
IF~~THEN REPLY @957 /* We can't change the past, just like we can't turn a river's flow, Eddard. */ EXTERN L#2EDJ F.08.03
IF~~THEN REPLY @958 /* We don't have time for such talk. We should move on. Please. */ EXTERN L#2EDJ F.08.02

CHAIN L#2EDJ F.08.03
@959 /* Mmm. I'm just playing the "what if", it's one of my things. To be honest, you remind me much more of Jackly. He saved me. So did you. And he cared. I suppose so do you. About many things. */
END
IF~~THEN REPLY @960 /* I do. That's why I'm doing all of this. */ EXTERN L#2EDJ F.08.04a
IF~~THEN REPLY @961 /* I don't. Not as much as you think. It would be best if you finally realized that and made it less... awkward. */ EXTERN L#2EDJ F.08.02
IF~~THEN REPLY @962 /* Eddard, please. You are slowing us down. Over and over and over again. I need you to stop this. Please! */ EXTERN L#2EDJ F.08.02

CHAIN L#2EDJ F.08.04a
@963 /* Heh. Well... thanks. For being like that. It make life a bit easier. So, if you were ever afraid you may end up to be like Bhaal... I must say I don't see much of him in you. Not that I met him personally, but... you don't seem that... dark. Evil? Grim? Or vicious. */
END
IF~~THEN REPLY @964 /* Thanks. It's good to know there are people who see someone else in me, not just some... Bhaalspawn. */ EXTERN L#2EDJ F.08.04
IF~~THEN REPLY @965 /* Believe me, there's much of him in me. I just know how to manage this... potential and powers. That's what I do. */ EXTERN L#2EDJ F.08.05
IF~~THEN REPLY @966 /* You're wrong. I can feel Bhaal inside me and I know I'm his kid. But I also know how to plan things and how to make these plans work. */ EXTERN L#2EDJ F.08.05
IF~~THEN REPLY @967 /* We don't have time for this. We need to move on. Move, will you? */ EXTERN L#2EDJ F.08.02

CHAIN L#2EDJ F.08.04
@968 /* Always at your service. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",24) SetGlobal("L#2EddardFriendshipActive","GLOBAL",2)~ EXIT

CHAIN L#2EDJ F.08.05
@969 /* You do it very well, then. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",24) SetGlobal("L#2EddardFriendshipActive","GLOBAL",2)~ EXIT

CHAIN L#2EDJ F.08.02
@970 /* If that's how it is... I won't trouble you any longer. Excuse me. */
DO ~SetGlobal("L#2EddardFriendTalk","GLOBAL",24) SetGlobal("L#2EddardFriendshipActive","GLOBAL",3)~ EXIT 

//ROMANCE #1

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",2)~ THEN L#2EDJ R.01.00
@971 /* Let's say you can have one moment of luxury. Anything you want. What would you pick? */
END
IF~~THEN REPLY @972 /* A nice afternoon at a bathhouse, get all that dirt from me, perhaps have some nice drink while in the water... */ EXTERN L#2EDJ R.01.01
IF~~THEN REPLY @973 /* A one day at a library, but with just me in there, with access to all archives and perhaps some nice brew to drink. */ EXTERN L#2EDJ R.01.01
IF~~THEN REPLY @974 /* A feast with all kinds of food I'd like. Savory, sweet, sour. Perhaps with some wine or freshly squeezed juice? Or both. */ EXTERN L#2EDJ R.01.01
IF~~THEN REPLY @975 /* A moment among interesting people, perhaps a ball, where I am the centre o attention. Nice talks, laughts, perhaps a show of some sort? */ EXTERN L#2EDJ R.01.02
IF~~THEN REPLY @976 /* A massage done by some skilled someone with strong arms and with just me to take good care of. I can imagine that being quite something. */ EXTERN L#2EDJ R.01.01
IF~~THEN REPLY @977 /* It's not exactly a moment of luxury, but a quiet time and some grove, maybe near a nice, refreshing spiring. Something like that, I guess. */ EXTERN L#2EDJ R.01.03
IF~~THEN REPLY @978 /* It's not exactly a moment of lucury, but an evening at a pub, laughing, eating some bread and cheese. It would be nice. */ EXTERN L#2EDJ R.01.03X
IF~~THEN REPLY @979 /* I don't know and... nevermind. Please, don't waste my time on such pointless questions. */ EXTERN L#2EDJ R.01.04

CHAIN L#2EDJ R.01.01
@980 /* Ah, I can imagine that. Heh. It could indeed be something quite nice and bring some pleasure to a tired body and mind. */
EXTERN L#2EDJ R.01.05

CHAIN L#2EDJ R.01.02
@981 /* Hah, I've been there. I had to attend to that kind of meeting and balls. It could indeed be something quite nice and bring some pleasure to a tired body and mind. */
EXTERN L#2EDJ R.01.05

CHAIN L#2EDJ R.01.03
@982 /* Hmm, that's not an option I took into consideration, but... perhaps such a moment would indeed let a tired soul rest. Perhaps a walk with someone you like. Yes, that doesn't sound bad. */
EXTERN L#2EDJ R.01.05

CHAIN L#2EDJ R.01.03X
@983 /* Sounds perfect, actually. */
EXTERN L#2EDJ R.01.05

CHAIN L#2EDJ R.01.05
@984 /* Looking how much you do, I'd say you deserve such a moment. You spend days or a whole week on dealing with someone else's problem and... I know that's a good thin to do, but it doesn't mean you do not deserve some pleasure and—this kind of reward that would be only for you, only to bring you some fun. */
==L#2EDJ @985 /* I hope that when the most urgent work is done, you'll get such moment. */
END
IF~~THEN REPLY @986 /* Thank you. Maybe it's indeed going to happen. One day, that is. */ EXTERN L#2EDJ R.01.06
IF~~THEN REPLY @987 /* It's just a silly dream and dreams do not come true. Some dreams are better when dreamt and loose their magic when lived. */ EXTERN L#2EDJ R.01.07
IF~~THEN REPLY @988 /* We don't have time for such talks, Eddard. We need to go. Now. */ EXTERN L#2EDJ R.01.04

CHAIN L#2EDJ R.01.06
@989 /* Perhaps I'll help it happen. If I'll be in the position to help, of course. (smiles) */
EXTERN L#2EDJ R.01.08

CHAIN L#2EDJ R.01.07
@990 /* Yes, there are dreams that better remain exactly what they are, dreams, but it doesn't mean you have to resign from all of them. And... let's be honest, dream of one luxurious day isn't the same like a dream of creating a new interdminensional... race, or something. One day of luxury is way easier, you know. */
EXTERN L#2EDJ R.01.08

CHAIN L#2EDJ R.01.08
@991 /* If I were to pick one day, it would be going to my favorite alehouse. Have some ale with a comrade, play cards, perhaps eat some roasted pork so we could continue the evening without passing out. I don't like that. And I'm not a heavy-drinker. But... that's something I couldn't do without sneaking out. It's not something my family would endorse. */
==L#2EDJ @992 /* Then, maybe we would go and just talk. Throw stones at the sea or river or whatever. Talking with someone I like is the nice part. Without worrying that I'll make some "undiplomatic mistake" or offend someone because I didn't use the proper title. */
==L#2EDJ @993 /* Hah! By the way: do you have any titles I should know about? Anything else than the Hero of Baldur's Gate, of course! */
END
IF~~THEN REPLY @994 /* Nah, it's just <CHARNAME>. I like to keep it simple. */ EXTERN L#2EDJ R.01.09
IF~~THEN REPLY @995 /* Oh! You can call me "Lord"! */ EXTERN L#2EDJ R.01.10
IF~~THEN REPLY @996 /* Mm, I wouldn't mind being called "Lady"! */ EXTERN L#2EDJ R.01.11
IF~~THEN REPLY @997 /* I suppose "Sir" is most appropriate! */ EXTERN L#2EDJ R.01.13
IF~~THEN REPLY @998 /* I suppose "Ma'am" would be quite correct. */ EXTERN L#2EDJ R.01.14
IF~~THEN REPLY @999 /* Call me "Your Highest Emanation of Sexyness"! */ EXTERN L#2EDJ R.01.12
IF~~THEN REPLY @1000 /* Please, give me a break. Let just move on. I don't want to waste time on talks like this. */ EXTERN L#2EDJ R.01.04

CHAIN L#2EDJ R.01.09
@1001 /* Just <CHARNAME> it is! By the way, I think I like your name. It suits you. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",3)~ EXIT

CHAIN L#2EDJ R.01.10
@1002 /* Lord? Well, I should call you my lord for a whole day, then! You surely deserve it, haha! */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",3)~ EXIT

CHAIN L#2EDJ R.01.11
@1003 /* Lady? Well, I should call you my lady for a whole day, then! You surely deserve it, haha! */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",3)~ EXIT

CHAIN L#2EDJ R.01.12
@1004 /* Excuse me? Haha! That's a good one. Well, it is said! Today I shall call you Your Highest Emanation of Sexyness. Haha! */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",3)~ EXIT

CHAIN L#2EDJ R.01.13
@1005 /* Sir? Well, I should call you my sir for a whole day, then! You surely deserve it, haha! */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",3)~ EXIT

CHAIN L#2EDJ R.01.14
@1006 /* Ma'am? Well, I should call you ma'am for a whole day, then! You surely deserve it, haha! */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",3)~ EXIT

CHAIN L#2EDJ R.01.04
@1007 /* Eh, perhaps you're right. Perhaps I shouldn't take any more of your time. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",3) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//ROMANCE #2

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",5)~ THEN L#2EDJ R.02.00
@1008 /* I mentioned Jackly before, remember? That other slave that helped me when they put me in a cell. He would always say: "Hope is more than a wish: it can reshape your actions, but so does doubt." I think I agree with him. I can't imagine doing all this work without hope. */
END
IF~~THEN REPLY @1009 /* How do you understand it? */ EXTERN L#2EDJ R.02.01
IF~~THEN REPLY @1010 /* We don't have time for this. Let's just go. */ EXTERN L#2EDJ R.02.02

CHAIN L#2EDJ R.02.01
@1011 /* We have to face many terrible events. I can't imagine doing it without that what we do matters. That we can turn the table a bit, ease some pain or inspire someone. Luckily, mother always said I always sound as I had hope in my veins. I suppose she meant I do not give up easily. Other, though, would just call it stubbornes. Perhaps it's actually a mix of both. */
==L#2EDJ @1012 /* Doubt, on the other hand, is like a... venom? Or this little woodworm, slowly weakening you, when you don't even see that, leaving these empty holes, all until you shatter into splinters. */
==L#2EDJ @1013 /* Hope can do much. It can make us believe we're going to get to this... Irenicus. Help you. Help those you care about. Stop his plans from going the way he wants them to go. And that at the end, there will be this nice feast! */
END
IF~~THEN REPLY @1014 /* We need hope, I agree. Without it... well, victory may be hard. If not impossible. */ EXTERN L#2EDJ R.02.03
IF~~THEN REPLY @1015 /* I'm not sure I'd give all the credits to hope. It's also hard work, keen mind, a dose of luck, perhaps, some strong will and wits. */ EXTERN L#2EDJ R.02.04
IF~~THEN REPLY @1016 /* I don't know if I still have that much hope. I'm no longer sure we're going to survive this mission. It certainly feel suicidal. */ EXTERN L#2EDJ R.02.05
IF~~THEN REPLY @1017 /* We don't have any more time. Let's just go. */ EXTERN L#2EDJ R.02.02

CHAIN L#2EDJ R.02.03
@1018 /* True, true. */
EXTERN L#2EDJ R.02.06

CHAIN L#2EDJ R.02.04
@1019 /* Oh, we're collecting all of these now? Heh. Hope is main ingredient, perhaps... at least for me. But I wouldn't mind getting some more luck or wits. Heh. */
EXTERN L#2EDJ R.02.06

CHAIN L#2EDJ R.02.05
@1020 /* Come on, don't be so pessimistic. I'd share some hope with you, if it was dinkable, but... perhaps it's just enought if I tell you I can see we're getting better and better at this and that's a sign that we can actually win. */
EXTERN L#2EDJ R.02.06

CHAIN L#2EDJ R.02.06
@1021 /* There's something else, too. I must say that I hope that our work will get not only be a this chain of fights, but that we'll continue this chain of discussions and reflections on... things. Many things. Not just just virtues, but... bread? What makes a good apple a good apple? Or what makes men handsome? I mean, is that muscles? Or a mind? Or maybe a spirit? Once I know, I'll be able to plan what to work on next, heh. */
==L#2EDJ @1022 /* The point is—we're doing many things here. I guess. And I like all of them. Not just the "help everyone" part, but also the exchange of thoughts or... weird questions. That can be entertaining and nice too. */
END
IF~~THEN REPLY @1023 /* That's the reason why I'm not doing this alone, Eddard. */ EXTERN L#2EDJ R.02.07
IF~~THEN REPLY @1024 /* Look, I know you have high hopes about us bonding, but we're here for a job, so... hold your horses. */ EXTERN L#2EDJ R.02.02

CHAIN L#2EDJ R.02.07
@1025 /* Right. Well, that makes sense. And... I suppose I'm glad it does. */
==L#2EDJ @1026 /* Anyway, it was nice talking to you. Thanks. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",6)~ EXIT

CHAIN L#2EDJ R.02.02
@1027 /* I... I see you don't want to talk. Fine. I suppose... */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",6) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//ROMANCE #3 (UPON REST)

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",8)~ THEN L#2EDJ R.03.00
@1028 /* We're stopping? That's great, because... I've been thinking about something. */
END
IF~~THEN REPLY @1029 /* I'm all ears. */ EXTERN L#2EDJ R.03.01
IF~~THEN REPLY @1030 /* We're stopping because I need some rest. So... please, not right now. Let me just have some sleep. */ EXTERN L#2EDJ R.03.02

CHAIN L#2EDJ R.03.01
@1031 /* I was once taught by my friend how to use this special ink to paint these nice signs and symbols on the skin. It's something between a warpaint and a tattoo. It's not permament, but it should last for a week or two. I home some of that ink left and perhaps you'd like to be my canvas to<DAYNIGHT>, hmm? */ 
END
IF~~THEN REPLY @1032 /* Sure! That sounds like fun. */ EXTERN L#2EDJ R.03.03
IF~~THEN REPLY @1033 /* I... admire the fact you'd offer me such thing, but that's not for me. I'm really sorry. */ EXTERN L#2EDJ R.03.0X
IF~~THEN REPLY @1034 /* No, I'm not interested. I'd rather get some sleep instead of wasting time with you, Eddard. */ EXTERN L#2EDJ R.03.02

CHAIN L#2EDJ R.03.03
@1035 /* Good! I can draw them, but... you'd need to tell me where. */
END
IF~~THEN REPLY @1036 /* On my hand, perhaps? */ EXTERN L#2EDJ R.03.04
IF~~THEN REPLY @1037 /* On my arm, perhaps? */ EXTERN L#2EDJ R.03.05
IF~~THEN REPLY @1038 /* On my neck, perhaps? */ EXTERN L#2EDJ R.03.06
IF~~THEN REPLY @1039 /* On my chest, perhaps? */ EXTERN L#2EDJ R.03.07
IF~~THEN REPLY @1040 /* On my belly, perhaps? */ EXTERN L#2EDJ R.03.08
IF~~THEN REPLY @1041 /* On my calf, perhaps? */ EXTERN L#2EDJ R.03.09
IF~~THEN REPLY @1042 /* On my feet, perhaps? */ EXTERN L#2EDJ R.03.10
IF~~THEN REPLY @1043 /* On my thigh, perhaps? */ EXTERN L#2EDJ R.03.11
IF~~THEN REPLY @1044 /* You know what? I... changed my mind. That's... not for me. */ EXTERN  L#2EDJ R.03.0X

CHAIN L#2EDJ R.03.04
@1045 /* Hands it is, then! I'll get a nice chance to look at them. (wink) */
EXTERN L#2EDJ R.03.12

CHAIN L#2EDJ R.03.05
@1046 /* Arm it is, then! I'll get a nice chance to look at it. (wink) */
EXTERN L#2EDJ R.03.12

CHAIN L#2EDJ R.03.06
@1047 /* Neck it is, then! Let me see, it. I'll be gentle knowing it's a difficult area to play with. (wink) */
EXTERN L#2EDJ R.03.12

CHAIN L#2EDJ R.03.07
@1048 /* Chest it is, then! Hmm, I didn't know it would include undressing, but... why not. It may be a good place to work with. (wink) */
EXTERN L#2EDJ R.03.12

CHAIN L#2EDJ R.03.08
@1049 /* Belly it is, then! Hmm, that may be interesting... and kind of a challange. Perhaps here, and then I'll go under the navel. That may be a chance to see how you're treating yourself, too. (wink) */
EXTERN L#2EDJ R.03.12

CHAIN L#2EDJ R.03.09
@1050 /* Calf it is, then! I'll get a nice chance to look at it. (wink) */
EXTERN L#2EDJ R.03.12

CHAIN L#2EDJ R.03.10
@1051 /* Feet it is, then! I'll get a nice chance to look at them. I'll be careful, I heard some people have sensitive feet. (wink) */
EXTERN L#2EDJ R.03.12

CHAIN L#2EDJ R.03.11
@1052 /* Thigh it is, then! That's not a usual place, but... I like it. (wink) */
EXTERN L#2EDJ R.03.12

CHAIN L#2EDJ R.03.12
@1053 /* You may feel surprised, but while I enjoyed physical training, the swordsmanship lessons, I also enjoyed the history of art. I once asked my parents for this book on art of Chult. */
==L#2EDJ @1054 /* I've seen people practicing skin art there too. And in Calimshan. Actually, there are a couple places in the realms, where it got popular for many reasons. To wear it during the battles. To celebrate events. As a bonding ritual. Or even to summon spirits or amplify magic skills. */
==L#2EDJ @1055 /* This world can be truly interesting—wait, I may need a smaller brush now. Almost like a needle. Now... few final details. */
==L#2EDJ @1056 /* Art takes many forms, I suppose. That's why I like it. Its forms can be just as diverse as people of the realms. */
==L#2EDJ @1057 /* And... it's done. Keep it like that for a few hours and then you can use wet cloth to clean it. The tint of your skin will be darker in the place where the ink was. */
END
IF~~THEN REPLY @1058 /* Perhaps you could help me clean it later. */ EXTERN L#2EDJ R.03.13
IF~~THEN REPLY @1059 /* Thank you, Eddard. That's not something I've done before. */ EXTERN L#2EDJ R.03.14
IF~~THEN REPLY @1060 /* It looks really good. It indeed looks somehow... unusual. And nice. */ EXTERN L#2EDJ R.03.14
IF~~THEN REPLY @1061 /* Such a waste of time. I regret letting you do this to me. */ EXTERN L#2EDJ R.03.02
IF~~THEN REPLY @1062 /* I... suppose it looks fine. */ EXTERN L#2EDJ R.03.15

CHAIN L#2EDJ R.03.13
@1063 /* I... I can. If you'd like me too. It may be... nice to be the one to have that final touch in the process... */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",9) RestParty()~ EXIT

CHAIN L#2EDJ R.03.14
@1064 /* I'm glad you lie it. And it was pleasure to work with you on it... and to have a closer look on you. But, I should leave you now. I'm sure you'd like to have some sleep. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",9) RestParty()~ EXIT

CHAIN L#2EDJ R.03.15
@1065 /* Well, it't always nice to try new things. Even if they're not something you'd like to do again. Thank you for your patience in the whole process and... for giving it a try. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",9) RestParty()~ EXIT

CHAIN L#2EDJ R.03.0X
@1066 /* I understand. That's not something I would insist you to try so... perhaps we'll just talk next time we have a moment. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",9) RestParty()~ EXIT

CHAIN L#2EDJ R.03.02
@1067 /* Well, I'm sorry I bothered you, then. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",9) SetGlobal("L#2EddardRomanceActive","GLOBAL",3) RestParty()~ EXIT

//ROMANCE #4 

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",11)~ THEN L#2EDJ R.04.00
@1068 /* It's been a while since I read something from my favorite genre... */
END
IF~~THEN REPLY @1069 /* What would it be, I wonder? */ EXTERN L#2EDJ R.04.01
IF~~THEN REPLY @1070 /* We don't have time for this. Go and find a book club if that's what you want to talk about. */ EXTERN L#2EDJ R.04.02

CHAIN L#2EDJ R.04.01
@1071 /* Why would you bet I'm a heroic books enthusiast? I... may surprise you but my favorite genre is a crossing between horror and a romance. */
END
IF~~THEN REPLY @1072 /* Oh, that's quite interesting! */ EXTERN L#2EDJ R.04.03
IF~~THEN REPLY @1073 /* Is that a thing? I didn't even know such thing exists. */ EXTERN L#2EDJ R.04.03
IF~~THEN REPLY @1074 /* I must admit, you've got my attention... */ EXTERN L#2EDJ R.04.03
IF~~THEN REPLY @1075 /* Eddard, if you want to talk about books, go and find yourself a bookclub. */ EXTERN L#2EDJ R.04.02

CHAIN L#2EDJ R.04.03
@1076 /* I especially loved "The Hounting of Greenglaive" by Homleen Fallhood. It's this book about two brother, Fepplick and Dalamagh, who return to their manor near the fictional village of Valamman after their mother's passing. They want to sell their house and return to their wives, but as they stay, they start to see these... glipses of the future mixed with nighmares. */
==L#2EDJ @1077 /* One of them, fall in love with a maid that was taking care of the mansion while they were onthe way to Valamman. He tells himself that it's because he loves that mysterious aura she has, but it's actually because his marrige is based on lies. The more of these visions he see, the more he understands it. Brother, however is mortified, as there is this chamber, his old room, in which a eyeless ghost roam every night and cannot find a way to free himself from a family curse. */
==L#2EDJ @1078 /* It's actually an allegory of facing the truth and doubts, and clinging to unstatisfying reality that can never get us tryly happy, but—I suppose I told you few first chapters. Sorry. I just really like it and... I'd like to read something like that. */
END
IF~~THEN REPLY @1079 /* Hey, it's fine! I just... didn't know you're a book fan. */ EXTERN L#2EDJ R.04.04
IF~~THEN REPLY @1080 /* It actually sounds pretty amazing and I'd love to read it, one day. */ EXTERN L#2EDJ R.04.05
IF~~THEN REPLY @1081 /* If you want to talk about books, go and find someone else. That's not my cup of tea. */ EXTERN L#2EDJ R.04.02

CHAIN L#2EDJ R.04.04
@1082 /* Why? Because a hunk can't read horror romances? (wink) Hah, I'm joking, I... I suppose I wouldn't expect myself to be a bookworm if I were you. It's fine. */
EXTERN L#2EDJ R.04.06

CHAIN L#2EDJ R.04.05
@1083 /* Oh, you really should! It's worth all that time and effort of getting it. */
EXTERN L#2EDJ R.04.06

CHAIN L#2EDJ R.04.06
@1084 /* You see, Silvershield estate could be quite... lonely. And boring. That's why I liked such books. Because they could make me feels I missed in my everyday life. And it would inspire these games... */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1085 /* Wait... are you talking about "Grooms & Skulls"? That game we came up with? Quite morbid, but I could wear this black dress, oh, I QUITE liked it! Not sure I'd wear it now, but it served its purpose. */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1086 /* Yes, that was the game, heh. I'm surprised you remember it. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1087 /* Oh, do you REALLY think I'd forget how you wanted to be a husband to Mr. Skull, that ghost we made— */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1088 /* Skie! Leave some of these embarassing stories to me so I had something to share on a death bed. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1089 /* Fine, fine... but you're taking SO MUCH fun from me! */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1090 /* Right. Where was I...? Ah! */
==L#2EDJ @1091 /* That was obviously something that would make our parents slightly annyed, as we would cover all the windows to make our estate have that spooky feel. But that was just another way of forgetting the boring reality of classes, diplomacy and being a "paragon of virtues and humbleness" I was forced to be... */
END
IF~~THEN REPLY @1092 /* I can imagine these little Eddard and Skie being PAINFULLY creative. And just waiting to kill some time or sneak out of the mansion. */ EXTERN L#2EDJ R.04.07
IF~~THEN REPLY @1093 /* I suppose that's exactly what I expected from a bored kids locked in a big house with boring parents. */ EXTERN L#2EDJ R.04.08
IF~~THEN REPLY @1094 /* It sounds like the two of you had your ways of escaping your daily routines. */ EXTERN L#2EDJ R.04.07
IF~~THEN REPLY @1095 /* Whatever. We need to move on. Now. Stop causing these delays. */ EXTERN L#2EDJ R.04.02

CHAIN L#2EDJ R.04.07
@1096 /* Skie learned how to escape quite soon. And then she taught me some bits. */
EXTERN L#2EDJ R.04.09

CHAIN L#2EDJ R.04.08
@1097 /* Well, that sounds like a horror too. But... I suppose it sounds worse than it truly was. At least we were safe. */
EXTERN L#2EDJ R.04.09

CHAIN L#2EDJ R.04.09
@1098 /* Heh, those were different times. But I would still read something from the genre. Maybe it's nostalgia talking through me, but hey—what can I do, right? */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",12) AddStoreItem("shop08","L#2EDBOO",1,1)~ EXIT

CHAIN L#2EDJ R.04.02
@1099 /* I can't say that was very nice and understanding of you. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",12) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//ROMANCE #5

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",14)~ THEN L#2EDJ R.05.00
@1100 /* Well, you surely don't waste your time. We rarely stand in one place and—that's good. It means we won't be bored. Even if we need to do all these dozens and dozens of tasks. */
END
IF~~THEN REPLY @1101 /* But that's fine with you. */ EXTERN L#2EDJ R.05.01
IF~~THEN REPLY @1102 /* It's better than what you'd have back home. */ EXTERN L#2EDJ R.05.01
IF~~THEN REPLY @1103 /* I'd rather do that work than do hundred pushups everyday. */ EXTERN L#2EDJ R.05.02
IF~~THEN REPLY @1104 /* Mhm. Our life will get even richer if you stop slowing us down every now and then. */ EXTERN L#2EDJ R.05.03

CHAIN L#2EDJ R.05.01
@1105 /* Oh, I like it. I mean... the pace. And everything. And you're a good leader. */
==L#2EDJ @1106 /* Sorry, I'm probably babbling. Let's just move on. I need to think about something. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",15)~ EXIT

CHAIN L#2EDJ R.05.02
@1107 /* Haha, true, true. So very true. But... */
==L#2EDJ @1108 /* Nevermind. Sorry, I'm probably babbling. Let's just move on. I need to think about something. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",15)~ EXIT

CHAIN L#2EDJ R.05.03
@1109 /* Righ. I will bother you no longer. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",15) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//ROMANCE #6 (UPON REST)

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",17)~ THEN L#2EDJ R.06.00
@1110 /* You know, last time I kind of cut our talk, because I felt that wasn't the right time. I had to cool down my head so we could tak honestly. No games or anything like that. */
END
IF~~THEN REPLY @1111 /* Is something wrong? */ EXTERN L#2EDJ R.06.01
IF~~THEN REPLY @1112 /* I don't have time for this. We should move on. */ EXTERN L#2EDJ R.06.02

CHAIN L#2EDJ R.06.01
@1113 /* Quite opposite. The thing is I like you. You are a good leader and not just that. A person I care about. And... I sort of can't stop wondering if you'd let me kiss you. I don't know if you feel the same way, so I thought I'd simply ask. Just... to be sure. */
END
IF~~THEN REPLY @1114 /* I'm not sure we'd be a good pair, but... I suppose one kiss wouldn't hurt. */ EXTERN L#2EDJ R.06.03 
IF~~THEN REPLY @1115 /* I've noticed that you like talking to me and I had this feeling it may be about something... else. I don't want to name it just yet, though. */ EXTERN L#2EDJ R.06.03
IF~~THEN REPLY @1116 /* I hoped you'd ask, Eddard. I think I like you and talking to you often makes my day. That is a yes, by the way. */ EXTERN L#2EDJ R.06.03
IF~~THEN REPLY @1117 /* Sorry, but... no. I don't look at you that way. */ EXTERN L#2EDJ R.06.02

CHAIN L#2EDJ R.06.03
@1118 /* (He comes closer and leans gently, kissing your lips. The kiss isn't long, but it was also a chance to feel him better. He's strong. His skin has a scent of sweat pears and nutmeg.) */
==L#2EDJ @1119 /* I... heh... */
END
IF~~THEN REPLY @1120 /* What? */ EXTERN L#2EDJ R.06.04
IF~~THEN REPLY @1121 /* Something's wrong? I did something? */ EXTERN L#2EDJ R.06.04
IF~~THEN REPLY @1122 /* I'm sorry, Eddard, but... I don't feel it. I just don't. */ EXTERN L#2EDJ R.06.02

CHAIN L#2EDJ R.06.04
@1123 /* No it's... it's better than I though. Sorry, it's okay to say something like that, right? */
END
IF~~THEN REPLY @1124 /* Heh. Yes, it's fine. All's fine. That I can tell you. */ EXTERN L#2EDJ R.06.05
IF~~THEN REPLY @1125 /* Good, I thought I did something stupid or that I have a doggy breath. */ EXTERN L#2EDJ R.06.05
IF~~THEN REPLY @1126 /* I'm sorry, Eddard, but I don't feel it. */ EXTERN L#2EDJ R.06.02

CHAIN L#2EDJ R.06.05
@1127 /* So, want to repeat that? (smiles craftily and bites his lip) */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1128 /* Wait... were you two kissing or am I sleepwalking? Like... SERIOUSLY? */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1129 /* Skie, please, give us some space! Please. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1130 /* But I WANNA KNOW... */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1131 /* Do not expect to know everything. It's... just a kiss. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1132 /* I KNEW IT! I was afraid you are a clumsy kisser and that some may find it— */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1133 /* SKIE! */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1134 /* Okay, okay. I'll go and watch the scene from over there... */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @421 /* ... */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1135 /* Just joking... You're not the only one in family that can joke, you know. */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1136 /* I. BEG. YOU. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1137 /* Ugh... Fine, fine. I'll leave you be. */
==L#2EDJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1138 /* <CHARNAME>... I'm... really sorry for her. She can be so NOSY. So, about the kiss. */
==L#2EDJ @1139 /* I wouldn't mind stealing another one from you. */
END
IF~~THEN REPLY @1140 /* That's certainly an option. */ EXTERN L#2EDJ R.06.06
IF~~THEN REPLY @1141 /* We may need to talk. If you don't mind. */ EXTERN L#2EDJ R.06.07
IF~~THEN REPLY @1142 /* You know what? I just realized... that I can't do this. This is a bad idea. I'm sorry, Eddard. You may need to look elsewhere for company. */ EXTERN L#2EDJ R.06.02

CHAIN L#2EDJ R.06.06
@1143 /* Heh. Good too know. (kisses you again, you can feel his breath and as his chest moves as he does it) */
==L#2EDJ @1144 /* There... */
END
IF~~THEN REPLY @1145 /* I think we could see where this situation is going to lead us. If you're up. */ EXTERN L#2EDJ R.06.07x
IF~~THEN REPLY @1146 /* I hope that experiment isn't going to end up just yet. I think we should give this a chance. */ EXTERN L#2EDJ R.06.07x
IF~~THEN REPLY @1147 /* You know, Eddard, I... don't think it's going to work. That's not... it. */ EXTERN L#2EDJ R.06.02

CHAIN L#2EDJ R.06.07
@1148 /* Hmm? What would you like to talk about? */
END
IF~~THEN REPLY @1149 /* I've been observing you for a while and I think we could give this a chance. I thought it may happen. */ EXTERN L#2EDJ R.06.07x
IF~~THEN REPLY @1150 /* I thought we should make it clear: if you want, then we can see where this is going to lead us. If that's what you want. */ EXTERN L#2EDJ R.06.07x
IF~~THEN REPLY @1147 /* You know, Eddard, I... don't think it's going to work. That's not... it. */ EXTERN L#2EDJ R.06.02

CHAIN L#2EDJ R.06.07x
@1151 /* Let's just see how it goes. I know we're leading a dangerous life and sometimes it's hard to tell where things can take us, but as long as we're not hurting anyone and we can enjoy whatever this is going to be, I'd say it's good. */
==L#2EDJ @1152 /* So we don't need to label it, it's not an alchemist fire bottle we could be afraid that's going to burn us alive. So I'd say let's just have some rest now see what happenes next. */
END
IF~~THEN REPLY @1153 /* Right. */ EXTERN L#2EDJ R.06.08
IF~~THEN REPLY @1154 /* That makes sense. It's not like we're promissing eachother something. */ EXTERN L#2EDJ R.06.09
IF~~THEN REPLY @1155 /* That's... not for me. Sorry. We should end it before it truly starts. */ EXTERN L#2EDJ R.06.02

CHAIN L#2EDJ R.06.08
@1156 /* Good. Rest well, <CHARNAME>. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",18) RestParty()~ EXIT

CHAIN L#2EDJ R.06.09
@1157 /* Mhm. Right. I think that's... clear. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",18) RestParty()~ EXIT

CHAIN L#2EDJ R.06.02
@1158 /* Everything is suddenly much more clear. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",18) SetGlobal("L#2EddardRomanceActive","GLOBAL",3) RestParty()~ EXIT

//ROMANCE #7 (SOME TIME LATER, AFTER REST)

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",20)~ THEN L#2EDJ R.07.00
@1159 /* (You wake as the first one, when you start gathering your blankets, you realize that Eddards blanket's next to him, leaving him almost naked. All it covers is the his left knee and calf. He yawns and wakes up. When he realizes he must have throw off the blanket in sleep, he grasps it and tries to cover himself... as if it wasn't too late.) */
==L#2EDJ @1160 /* Gods...! I... well... that means... I don't have much more to hide from you. Sorry. The night was too warm for my taste... and... */
END
IF~Gender(Player1,MALE)~THEN REPLY @1161 /* No worries. It's not like you have something I haven't seen. Heh. */ EXTERN L#2EDJ R.07.01
IF~Gender(Player1,FEMALE)~THEN REPLY @1162 /* Well, it's not like you're the first man I saw naked, no worries. (wink) */ EXTERN L#2EDJ R.07.01
IF~~THEN REPLY @1163 /* You looked kinda adorable. So vulnerable. Like sleeping puppy. */ EXTERN L#2EDJ R.07.01
IF~~THEN REPLY @1164 /* No need to be embarassed. We all have a body and your looks fine. Just in case you didn't know. */ EXTERN L#2EDJ R.07.02
IF~~THEN REPLY @1165 /* Please, try to... control yourself next time. Or should we buy you a thinner blanket? */ EXTERN L#2EDJ R.07.03
IF~~THEN REPLY @1166 /* You know what? It's not like there will be a better moment so we can talk now, before we move on. I thought about our talk and it's not going to work. Sorry. */ EXTERN L#2EDJ R.07.04

CHAIN L#2EDJ R.07.01
@1167 /* It looks like you're having quite some fun. Look, I... urm. Well... that's me. Sorry. At least I weren't scratching myself or something. Not sure if that would be even MORE embarassing but—you know, I'll just shut up. That's the best what I can do. */
EXTERN L#2EDJ R.07.05

CHAIN L#2EDJ R.07.02
@1168 /* Erm... thank you? And... sorry for... all of that? At least I weren't scratching myself or something. Not sure if that would be even MORE embarassing but—you know, I'll just shut up. That's the best what I can do. */
EXTERN L#2EDJ R.07.05

CHAIN L#2EDJ R.07.03
@1169 /* YES. Thank you. */
EXTERN L#2EDJ R.07.05

CHAIN L#2EDJ R.07.05
@1170 /* Now, excuse me, let me at least put my pants on and. Right. Now. (stands up, gaving his pants on; he still looks a bit embarassed and he's standing with his hands on the hips, clearly trying to look as if nothing happened) */
==L#2EDJ @1171 /* Again, I apologize. I was used to cold nights. I rarely feel cold and... I got used to cold nights from my time in the cell. It's more comfortable now and—I'm babbling again. */
END
IF~~THEN REPLY @1172 /* Calm down. Really. */ EXTERN L#2EDJ R.07.06
IF~~THEN REPLY @1173 /* It's okay. Want something to eat? */ EXTERN L#2EDJ R.07.07
IF~~THEN REPLY @1174 /* I'd rather you at least wear something, so I don't need to feel that weird... */ EXTERN L#2EDJ R.07.08
IF~~THEN REPLY @1175 /* We need to talk. It's not like there will be a better moment so we can talk now, before we move on. I thought about our talk and it's not going to work. Sorry. */ EXTERN L#2EDJ R.07.04

CHAIN L#2EDJ R.07.06
@1176 /* Okay. It's I didn't want to make you weird. That's my main concern, but it doesn't look like you're feeling off... */
EXTERN L#2EDJ R.07.09

CHAIN L#2EDJ R.07.07
@1177 /* Eat? Erm, sure. I'm starving actually. */
EXTERN L#2EDJ R.07.09

CHAIN L#2EDJ R.07.09
@1178 /* And... thanks. For not making it weirder than it already is. Was. It's past. */
==L#2EDJ @1179 /* I've been sleeping much better lately. It took me a while after tou freed me, but I think I'm finally feeling good. Safe. Even if I said I'm feeling safer, it's not I feel it. */
END
IF~~THEN REPLY @1180 /* I'm glad. No wonder it took you a while, though. */ EXTERN L#2EDJ R.07.09x
IF~~THEN REPLY @1181 /* Well, I just had a demonstration of how safe you feel, hah. */ EXTERN L#2EDJ R.07.10
IF~~THEN REPLY @1182 /* Look... wait. There's something else I want to talk about. It's not like there will be a better moment so we can talk now, before we move on. I thought about our talk and it's not going to work. Sorry. */ EXTERN L#2EDJ R.07.04

CHAIN L#2EDJ R.07.08
@1183 /* Right. Again: sorry. */
==L#2EDJ @1184 /* It's just... I've been sleeping much better lately. It took me a while after tou freed me, but I think I'm finally feeling good. Safe. Even if I said I'm feeling safer, it's not I feel it. */
END
IF~~THEN REPLY @1185 /* That's good news. I'm glad you're trully better. No wonder it took you a while, though. */ EXTERN L#2EDJ R.07.10
IF~~THEN REPLY @1186 /* Well, I just had a demonstration of how safe you feel... */ EXTERN L#2EDJ R.07.09x
IF~~THEN REPLY @1187 /* Look... wait. Just wait. There's something else I want to talk about. It's not like there will be a better moment so we can talk now, before we move on. I thought about our talk and it's not going to work. Sorry. */ EXTERN L#2EDJ R.07.04

CHAIN L#2EDJ R.07.09x
@1188 /* Please, don't make me apologize again... */
==L#2EDJ @1189 /* Abstraining from recent... happening, I suppose I feel SO much safer. That's also thanks to you. So thank you. This group feels like a bunch of... really interesting people. But you leading us: it just feels right. */
EXTERN L#2EDJ R.07.11

CHAIN L#2EDJ R.07.10
@1190 /* Yes. And I suppose that's also thanks to you. So thank you. This group feels like a bunch of... really interesting people. But you leading us: it just feels right. */
EXTERN L#2EDJ R.07.11

CHAIN L#2EDJ R.07.11
@1191 /* No wonder people call you a hero. However, I guess that's enought of the BARE truth for one hour so, let me go an take my things. I suppose we should move on soon. */
==L#2EDJ @1192 /* Eat something nice, we may need quite some energy for today's work. I'll be waiting for you over there. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",21)~ EXIT

CHAIN L#2EDJ R.07.04
@1193 /* I... I see. Well, I'm glad you told me. Thank you. Let's pretend that... none of this happened, then. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",21) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//ROMANCE #8 

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",23)~ THEN L#2EDJ R.08.00
@1194 /* <CHARNAME>. I know our days of work are feeling as if they were getting longer and longer so here. I made you something. */
END
IF~~THEN REPLY @1195 /* Is that a sandwich? */ EXTERN L#2EDJ R.08.01
IF~~THEN REPLY @1196 /* I don't have time for this. We should move on. You're wasting too much of my time. */ EXTERN L#2EDJ R.08.02

CHAIN L#2EDJ R.08.01
@1197 /* Yes. And it's not an apology sandwich for the last time, I sweat. I know it may look like this but it's actually something else. */
==L#2EDJ @1198 /* I remember that one day my father was really worried about some event in the city. I'm not sure what that was, but he was spending most of the time working. He rarely ate. He got pale and even his eyes looked somehow differently. Like they were tired. I remember Skie made him a sandwich that day and for a moment he felt better. Stronger. And he really ate it. */
==L#2EDJ @1199 /* There's much on your heard, too, so while I'm not a good cook, I thought it would be better to prepare something simple, rather than something fancy that would end up with your food poisoning. So here it is: a cheese sandwich. Simple, but should give you some energy. */
END
IF~~THEN REPLY @1200 /* Thanks. I was actually quite hungry. */ EXTERN L#2EDJ R.08.03
IF~~THEN REPLY @1201 /* It's quite adorable. Thanks you. */ EXTERN L#2EDJ R.08.03
IF~~THEN REPLY @1202 /* I... don't want it. Sorry, but... just give me a break. */ EXTERN L#2EDJ R.08.02
IF~~THEN REPLY @1203 /* Go and eat it yourself. You're wasting too much of my time. */ EXTERN L#2EDJ R.08.02

CHAIN L#2EDJ R.08.03
@1204 /* Just remember to chew it! It would be a pity if a Hero of Baldur's Gate, slayer of monster and demons got defeated by a snack. */
==L#2EDJ @1205 /* Anyway, I hope this will be a good day and that it will get us one step closer to Irenicus and the victory we'd all want to see. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",24)~ EXIT

CHAIN L#2EDJ R.08.02
@1206 /* Sorry for wasting you time, then... */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",24) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//ROMANCE #9

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",26)~ THEN L#2EDJ R.09.00
@1207 /* I have an idea you may like, <CHARNAME>. A little game between the two of you, what do you say? I'll say two things and you're going to tell me which you feel works with you more. You know, dogs and cats. It's simple and perhaps I'll learn something new about you! */
END
IF~~THEN REPLY @1208 /* I like the idea. Let's do this. */ EXTERN L#2EDJ R.09.01
IF~~THEN REPLY @1209 /* I am sorry, Eddard, I do like you, but... I really dislike this game. It flattens things up. */ EXTERN L#2EDJ R.09.02
IF~~THEN REPLY @1210 /* No. Eddard, this... isn't working out. I'm sorry, but we need to end this. */ EXTERN L#2EDJ R.09.03

CHAIN L#2EDJ R.09.01
@1211 /* Mhm. Let's start then! */
==L#2EDJ @1212 /* Moon or sun. */
END
IF~~THEN REPLY @1213 /* Moon! */ EXTERN L#2EDJ R.09.04
IF~~THEN REPLY @1214 /* Sun! */ EXTERN L#2EDJ R.09.05

CHAIN L#2EDJ R.09.04
@1215 /* Good to know. That's my choice too. The next one... */ 
EXTERN L#2EDJ R.09.06

CHAIN L#2EDJ R.09.05
@1216 /* Sun? Intriguing. The next one... */
EXTERN L#2EDJ R.09.06

CHAIN L#2EDJ R.09.06
@1217 /* Shore or forest? */
END
IF~~THEN REPLY @1218 /* Shore, I think. */ EXTERN L#2EDJ R.09.08
IF~~THEN REPLY @1219 /* I'll go for the forest. */ EXTERN L#2EDJ R.09.08
IF~~THEN REPLY @1220 /* Forest on the shore! */ EXTERN L#2EDJ R.09.07

CHAIN L#2EDJ R.09.07
@1221 /* And that's cheating. */
END
IF~~THEN REPLY @1222 /* Then I say... shore. */ EXTERN L#2EDJ R.09.08
IF~~THEN REPLY @1223 /* Fine, I'll go with the forest. */ EXTERN L#2EDJ R.09.08
IF~~THEN REPLY @1224 /* Give me another one, then. */ EXTERN L#2EDJ R.09.08

CHAIN L#2EDJ R.09.08
@1225 /* Pub or library. */
END
IF~~THEN REPLY @1226 /* Pub. */ EXTERN L#2EDJ R.09.09
IF~~THEN REPLY @1227 /* Library. */ EXTERN L#2EDJ R.09.10

CHAIN L#2EDJ R.09.09
@1228 /* It looks like someone likes to party. Next one. */
EXTERN L#2EDJ R.09.11

CHAIN L#2EDJ R.09.10
@1229 /* A hunger for knowledge, hmm? That can be intriguing, too. Next one. */
EXTERN L#2EDJ R.09.11

CHAIN L#2EDJ R.09.11
@1230 /* Evening with a book or investigating a dungeon? */
END
IF~~THEN REPLY @1231 /* Hmm, a book. I'd like to rest a bit. */ EXTERN L#2EDJ R.09.12
IF~~THEN REPLY @1232 /* Investigating a dungeon, of course! */ EXTERN L#2EDJ R.09.13

CHAIN L#2EDJ R.09.12
@1233 /* Hah. Well, you've been busy lately, so I'm not surprised. */
EXTERN L#2EDJ R.09.14

CHAIN L#2EDJ R.09.13
@1234 /* Hah, well, somehow I'm not surprised, "<PRO_LORDLADY> adventurer". */
EXTERN L#2EDJ R.09.14

CHAIN L#2EDJ R.09.14
@1235 /* And finally: a kiss in a neck or a backrub? Focus as that's an important one. */
END
IF~~THEN REPLY @1236 /* A kiss. */ EXTERN L#2EDJ R.09.15
IF~~THEN REPLY @1237 /* Oh, I would kill for a backrub. */ EXTERN L#2EDJ R.09.15
IF~~THEN REPLY @1238 /* I really want both. Perhaps from a handsome and quite strong hunk? (grin) */ EXTERN L#2EDJ R.09.15
IF~~THEN REPLY @1239 /* Please, stop... Eddard, it's... not working out. I'm sorry, it's... just not it. */ EXTERN L#2EDJ R.09.03

CHAIN L#2EDJ R.09.15
@1240 /* Hah, so we know what we're going to do next time we'll be setting up a camp or staying in some inn. */
==L#2EDJ @1241 /* Look, I know the game's quite silly, but I'm still thinking of ways to learn more about you and just to fool around so you don't feel overwhelmed with our job and Irenicus. I wouldn't be surprised if you had dreams about him or about things he could do. So I thought a little game, even if silly, may help. */
END
IF~~THEN REPLY @1242 /* Yes. It was simple, but... at least it was something else. */ EXTERN L#2EDJ R.09.16
IF~~THEN REPLY @1243 /* The most important thing is that I appreciate the effort. */ EXTERN L#2EDJ R.09.17
IF~~THEN REPLY @1244 /* It did not, I'm afraid. I just can't stop thinking about things he did and things he can still... do. */ EXTERN L#2EDJ R.09.18
IF~~THEN REPLY @1245 /* Eddard, it's... it's... not working out. I'm sorry. We need to end this. */ EXTERN L#2EDJ R.09.03

CHAIN L#2EDJ R.09.16
@1246 /* It was. */
EXTERN L#2EDJ R.09.19

CHAIN L#2EDJ R.09.17
@1247 /* Heh. What a diplomatic reply... */
EXTERN L#2EDJ R.09.19

CHAIN L#2EDJ R.09.18
@1248 /* I know. But I also know we can't think about him all the time. */
EXTERN L#2EDJ R.09.19

CHAIN L#2EDJ R.09.19
@1249 /* Now, all jokes aside. I want to ask you with a whole seriousnessof my heart, <CHARNAME>: how are you truly feeling? */ 
END
IF~~THEN REPLY @1250 /* Fine. Perhaps just a bit tired. */ EXTERN L#2EDJ R.09.20
IF~~THEN REPLY @1251 /* Could be better, could be worse. */ EXTERN L#2EDJ R.09.20
IF~~THEN REPLY @1252 /* Could be better. It's all quite hard... */ EXTERN L#2EDJ R.09.20
IF~~THEN REPLY @1253 /* I'm in this mood or state when... I can no longer tell, to be honest. */ EXTERN L#2EDJ R.09.20
IF~~THEN REPLY @1254 /* Fine. I'm fine. */ EXTERN L#2EDJ R.09.21
IF~~THEN REPLY @1255 /* Eddard, it's... it's... not working out. Just leave me alone. I want to be alone. */ EXTERN L#2EDJ R.09.03

CHAIN L#2EDJ R.09.03
@1256 /* Are you sure? I'll respect your decision... no matter what it's going to be. */
END
IF~~THEN REPLY @1257 /* Yes. We should end this. */ EXTERN L#2EDJ R.09.03x
IF~~THEN REPLY @1258 /* No, I just need a while. Let's talk again soon. Just... give me a moment. */ EXTERN L#2EDJ R.09.03y

CHAIN L#2EDJ R.09.20
@1259 /* I hear you. Thank you for telling me. */
==L#2EDJ @1260 /* Know that you can talk to me. No matter how you feel. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",27)~ EXIT

CHAIN L#2EDJ R.09.21
@1261 /* Good. I'm glad to hear that. Know that you can talk to me. No matter how you feel. */
==L#2EDJ @1262 /* Now... let's get going. I'll try to help you relax when we stop. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",27)~ EXIT

CHAIN L#2EDJ R.09.02
@1263 /* Sure. I get it. Nevermind then. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",27)~ EXIT

CHAIN L#2EDJ R.09.03y
@1264 /* As you wish. We'll talk some other time. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",27)~ EXIT

CHAIN L#2EDJ R.09.03x
@1265 /* I understand... I... I'll leave you be, then. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",27) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//ROMANCE #10

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",29)~ THEN L#2EDJ R.10.00
@1266 /* The more we work, the more I realize how... alone we were in our house. Me and Skie. */
END
IF~~THEN REPLY @1267 /* You may need to tell me more about what you mean by that you see it more now. */ EXTERN L#2EDJ R.10.01
IF~~THEN REPLY @1268 /* Do you really feel like I care about that. Sorry, but I have more important things on my head right now. */ EXTERN L#2EDJ R.10.02

CHAIN L#2EDJ R.10.01
@1269 /* I can barely count how many people we met. People of all kinds of ages, races, heritage, status and reputation. Back home, even if we would see pople, it would be few the same personas, probably teachers or father's co-workers or counselors. Most of them sharing the same "proper" manners or even speaking patterns. Here I can see that this world is richer than I could ever imagined. I know, I mentioned diverse people before, when... I offered you skin art activity, but then, I based my information on what I saw in books. */
==L#2EDJ @1270 /* But that was all based on what I was taught or what I read about or heard. And I doubt any of the sources described it well enough. Since we started working together I feel like there are like seventy types of traders, dozens of common greetings, men and women that are above what we were expected to be. */
==L#2EDJ @1271 /* And it gives me that... sad feeling. */
END
IF~~THEN REPLY @1272 /* Sad? Shouldn't you be happy? */ EXTERN L#2EDJ R.10.03
IF~~THEN REPLY @1273 /* I'm not sure I understand where this is comming from, Eddard. */ EXTERN L#2EDJ R.10.03
IF~~THEN REPLY @1274 /* You feel that you were lied to about the world? */ EXTERN L#2EDJ R.10.04
IF~~THEN REPLY @1275 /* Look, we don't have time for this. We should be moving instead of wasting time our breath on idle chatters. */ EXTERN L#2EDJ R.10.02

CHAIN L#2EDJ R.10.03
@1276 /* It's—I feel as some part of reality was hidden from us. Perhaps on purpose? Or out of some... fear? */
EXTERN L#2EDJ R.10.05

CHAIN L#2EDJ R.10.04
@1277 /* Yes. And no. I feel as some part of reality was hidden from us. Perhaps on purpose? Or out of some... fear? */
EXTERN L#2EDJ R.10.05

CHAIN L#2EDJ R.10.05
@1278 /* Wouldn't we be better prepared to roles they wanted us to play if we actually knew the world? They could still teach us all the things, but we could also... feel things! Experience them. I... I'm not sure I'll ever be able to understand it. */
==L#2EDJ @1279 /* Sorry, you have nothing to do with this, but... I thought I could talk to you about my... observation. */
END
IF~~THEN REPLY @1280 /* We can talk about anything you want. And yes, I agree. They should have shown you this world. Or at least more parts of it. */ EXTERN L#2EDJ R.10.06
IF~~THEN REPLY @1281 /* Look, they did that, because they were worried about you. There is this opinion that children internalize bad habits or unwanted knowledge way too easly. That's may be what they were afrai of. */ EXTERN L#2EDJ R.10.07
IF~~THEN REPLY @1282 /* Eddard, we do not have time to waste on past we can't even change. Egh... just... give me a break. You're giving me a headache. */ EXTERN L#2EDJ R.10.02

CHAIN L#2EDJ R.10.06
@1283 /* Mhm. That's exactly what I mean... */
EXTERN L#2EDJ R.10.08

CHAIN L#2EDJ R.10.07
@1284 /* Maybe, but... somehow it still feels unfair. */
EXTERN L#2EDJ R.10.08

CHAIN L#2EDJ R.10.08
@1285 /* I suppose that's the thing with families like mine. And that's the part that makes me woried what may life would be if I were to return and stay at the estate. I'm not changing my mind, I would still step in, help my city when my father had no more strength to do it, but I'd like all of it to be more honest. And I don't want to make their mistakes. Or stop seeing those mistakes because of getting used to "noble reality". */
==L#2EDJ @1286 /* Here, though, I can feel more free than ever. More than when I was captured. And more than I was back home. */
END
IF~~THEN REPLY @1287 /* I'm feeling the same. Candlekeep was a... challanging place. For a similar reasons like those you mentioned, actually. */ EXTERN L#2EDJ R.10.09
IF~~THEN REPLY @1288 /* Eddard, we do not have time to waste on past we can't even change. Look, this... isn't working. Please, just let us move on and... sorry. */ EXTERN L#2EDJ R.10.02

CHAIN L#2EDJ R.10.09
@1289 /* Really? */
END
IF~~THEN REPLY @1290 /* Yes. There were rules there, and the Great Library, those routines, chores. And I rarely saw anyone from the outside. Mostly the same faces. Winthrop. Imoen. Gorion. Hull. Tethoril. So I too felt as if I were stuck in this... piece of sticky sap, that won't let me go. */ EXTERN L#2EDJ R.10.10
IF~~THEN REPLY @1291 /* Well, partially. Gorion was a demanding man. Sometimes I felt like he didn't want me to have any free time, so he would give me those chores and lessons. I know he wanted to prepare me for this life, but he also took something from me. Sadly, that's how it feels. */ EXTERN L#2EDJ R.10.10
IF~~THEN REPLY @1292 /* No. I... I don't know. But I can imagine how you felt. How it must have been for a growing up boys to be locked in a world of courtesies and expectations. I think it would scare me. */ EXTERN L#2EDJ R.10.10
IF~~THEN REPLY @1293 /* Eddard, we do not have time to talk about past. Look, this... isn't working. Please, just let us move on and... I'm sorry, it's how I feel. */ EXTERN L#2EDJ R.10.02

CHAIN L#2EDJ R.10.10
@1294 /* Mmm. Perhaps that's why we understand eachother. Even though we do differ from eachother. But that's good. It makes it all more... real. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",30)~ EXIT

CHAIN L#2EDJ R.10.02
@1295 /* It's good to know how you feel. Well, I won't waste any of your time and attention. Excuse me. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",30) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//ROMANCE #11 (SEX; UPON REST)

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",32)~ THEN L#2EDJ R.11.00
@1296 /* The last time we talk, I might have been in lower spirit. But I hope we can spend some more time together. If you'd like that, of course. I don't want to be impertinent. */
END
IF~~THEN REPLY @1297 /* I'll gladly spend more time with you, Eddard. I'm always up for it. */ EXTERN L#2EDJ R.11.01
IF~~THEN REPLY @1298 /* Of course. I... suppose I can handle some things later. Sit. Let's talk. */ EXTERN L#2EDJ R.11.01
IF~~THEN REPLY @1299 /* Eddard, I was to talk to you anyway. I don't think it's working out. We should end this. It's not leading us when I thought it would. */ EXTERN L#2EDJ R.11.02

CHAIN L#2EDJ R.11.01
@1300 /* Thank you. It's... I've been thinking about you and how we talk and how we can trust eachother. Not just in battle, but in feeling and sharing thoughts and... */
END
IF~~THEN REPLY @804 /* And...? */ EXTERN L#2EDJ R.11.03
IF~~THEN REPLY @1301 /* Look, about that. I don't think it's working out. We should end this. It's not leading us when I thought it would. */ EXTERN L#2EDJ R.11.02

CHAIN L#2EDJ R.11.03
@1302 /* I know we were to see if this relation ship can actually work, but to me it does. And I've been thinking: when we talked at first... we didn't promise eachother anything or it wasn't to bind us somehow. Do you think we can continue this, but as a couple. I just don't know if I want to get deeper into this thinking of it differently than you do. So I'd like us to be together. The two of us. */
END
IF~~THEN REPLY @1303 /* I think I'd like that. */ EXTERN L#2EDJ R.11.04
IF~~THEN REPLY @1304 /* I think we're already heading in that direction. */ EXTERN L#2EDJ R.11.04
IF~~THEN REPLY @1305 /* I'm sorry, but monogamous relationship are not for me. */ EXTERN L#2EDJ R.11.02
IF~~THEN REPLY @1306 /* Eddard, it's... not working out for me. We don't think the same about this, or feeling the same. Sorry. */ EXTERN L#2EDJ R.11.02

CHAIN L#2EDJ R.11.04
@1307 /* Heh. Well... it all feels somehow ligher already. I was afraid you'd say something else. That you're not feeling it. */
==L#2EDJ @1308 /* (He starts leaning slowly, clearly wantng to kiss you.) */
END
IF~~THEN REPLY @1309 /* (Kiss him.) */ EXTERN L#2EDJ R.11.05
IF~~THEN REPLY @1310 /* Wait... no. Sorry. I lied. I want to feel the same way, but I don't. I'm sorry, but I don't think I can make it work for me. */ EXTERN L#2EDJ R.11.02

CHAIN L#2EDJ R.11.05
@1311 /* (Again your lips meet, this time, however, Eddard feels more serious about everything. About how he feels. And his kiss reflects that. He's quieter, but the kiss is more confident. He holds you and you can feel how his body reacts to you and to what you said. You can feel his breath, his unremorsefulness for what the two of you are.) */
==L#2EDJ @1312 /* I want to be with you. Let me, please. */
END
IF~~THEN REPLY @1313 /* I want it too, you don't need to worry. */ EXTERN L#2EDJ R.11.06
IF~~THEN REPLY @1314 /* Hah, I suppose you were a good boy, so... come. */ EXTERN L#2EDJ R.11.06
IF~~THEN REPLY @1315 /* No. I'm not feeling it's right. I'm sorry, but I don't. */ EXTERN L#2EDJ R.11.02
IF~~THEN REPLY @1316 /* No. I... no. Just no. I don't want it. I changed my mind. */ EXTERN L#2EDJ R.11.02

CHAIN L#2EDJ R.11.06
@1317 /* (He doesn't reply back, instead he takes takes of his clothes, revealing the version of himself you saw some time ago, when he uncovered threw off the blanket during the sleep... however this time he doesn't look embarassed. Instead he becomes this careful man, not the chaotic trickster.) */
==L#2EDJ IF ~Gender(Player1,MALE)~ THEN @1318 /* (He comes at you, and helps you to take of your clothes, revealing your chest, soon leaving you without anything else, but your true self: a man of flesh and bones.) */
==L#2EDJ IF ~Gender(Player1,FEMALE)~ THEN @1319 /* (He comes at you, and helps you to take of your clothes, fires revealing your breast, soon leaving you without anything else, but your true self: a woman of flesh and bones..) */
==L#2EDJ @1320 /* (He kisses your neck, while letting you sense him the way you want. The way you feel is fit for this situation. As the time goes, the tension grows higher, to the point when you do not hold yourself back.) */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",33) RestParty()~ EXIT

CHAIN L#2EDJ R.11.02
@1321 /* I see. It's good you made things clear before everything became even more serious. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",33) SetGlobal("L#2EddardRomanceActive","GLOBAL",3) RestParty()~ EXIT

//ROMANCE #12 (DAY AFTER)

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",33)~ THEN L#2EDJ R.12.00
@1322 /* You awake...? (You can see his chest, still bare, move as he breath, while looking at you. He smiles, yet subtly. He seems calm.) */
END
IF~~THEN REPLY @1323 /* Mmm. No, not any more, I guess. How are you? */ EXTERN L#2EDJ R.12.01
IF~~THEN REPLY @1324 /* Still half-asleep. But I suppose I should ask if everything's fine. Are you okay? */ EXTERN L#2EDJ R.12.01
IF~~THEN REPLY @1325 /* No, clearly. But... Eddard, I think we need to talk. That... can't happen again. It didn't feel apropriate in this situation of a serious mission. A suicidal one. */ EXTERN L#2EDJ R.12.02

CHAIN L#2EDJ R.12.01
@1326 /* I'm feeling calm. It's been a while since—and it feels right. But also it makes me see everything really can be as it used to be. And I'm also happy that I learnt that with you. (He traces your ear lightly, than hugs you. You can see he didn't put anything on. It looks like truly feels comfortable with you and your closnesness.) */
==L#2EDJ @1327 /* Heh. I think I love you, <CHARNAME>. */
END
IF~~THEN REPLY @1328 /* I love you too. */ EXTERN L#2EDJ R.12.03
IF~~THEN REPLY @1329 /* I may need some more time to use that word, Eddard. */ EXTERN L#2EDJ R.12.04
IF~~THEN REPLY @1330 /* Eddard, I'm sorry, but... that doesn't make me feel comfortable. I'm sorry, but we need to end this. Better now than... later... */ EXTERN L#2EDJ R.12.02
IF~~THEN REPLY @1331 /* Eddard, I thought that we can have some good time, sex, but... it looks like it's something else for you. Sorry, but that's now what I want to have. Sorry. */ EXTERN L#2EDJ R.12.05

CHAIN L#2EDJ R.12.03
@1332 /* I'm happy to hear that. That means we're just for eachother. In... that sense. Right...? */
END
IF~~THEN REPLY @1333 /* Of course. */ EXTERN L#2EDJ R.12.06
IF~~THEN REPLY @1334 /* Yes. I suppose we're together already. */ EXTERN L#2EDJ R.12.06
IF~~THEN REPLY @1335 /* Sorry, but... but monogamy isn't for me. If that's what you're looking for, then... sorry. */ EXTERN L#2EDJ R.12.05

CHAIN L#2EDJ R.12.04
@1336 /* Of course, I... understand. (smiles) It's fine, it would be bizarre if people could synchronize feelings. So... whenever your ready. When you feel it. But does it mean we can be together? Just for eachother? */
END
IF~~THEN REPLY @1337 /* Of course we can. */ EXTERN L#2EDJ R.12.06
IF~~THEN REPLY @1338 /* Yes, Eddard. I suppose we're together already anyway. */ EXTERN L#2EDJ R.12.06
IF~~THEN REPLY @1339 /* Sorry, Eddard, but monogamy isn't for me. If that's what you're looking for, then... sorry. */ EXTERN L#2EDJ R.12.05

CHAIN L#2EDJ R.12.06
@1340 /* (He kisses yor arm. He starts to feel lighter, as clerifying the situation allowed his calm mood reunite with thankfulness that everything went as he hoped it woud.) */
==L#2EDJ IF ~Gender(Player1,MALE)~ THEN @1341 /* I'm happy to be with a strong man like you. Strong not just physically. */
==L#2EDJ IF ~Gender(Player1,FEMALE)~ THEN @1342 /* I'm happy to be with a strong woman like you. Strong not just physically. */
==L#2EDJ @1343 /* I suppose there's a lot I can learn from you! */
END
IF~~THEN REPLY @1344 /* Oh, I can certainly teach you a few things. */ EXTERN L#2EDJ R.12.07
IF~~THEN REPLY @1345 /* Mhm. Well, it's all very nice, but I think it's time to move on. */ EXTERN L#2EDJ R.12.08

CHAIN L#2EDJ R.12.07
@1346 /* Like... you mean. THESE things? Gods, was I too... quick, or something? I hope not! */
END
IF~~THEN REPLY @1347 /* Haha! No, there are some tricks I could show you, though! */ EXTERN L#2EDJ R.12.09
IF~~THEN REPLY @1348 /* No, no. Haha. I meant... cooking. I could teach you how to cook. No worries, it won't hurt. */ EXTERN L#2EDJ R.12.10
IF~~THEN REPLY @1349 /* Oh, no, I meant other things. I guess there are some thing I could teach you. We went through a very different education! */ EXTERN L#2EDJ R.12.11
IF~~THEN REPLY @1350 /* Nevermind. Well, it's all very nice, but I think it's time to move on. */ EXTERN L#2EDJ R.12.08

CHAIN L#2EDJ R.12.09
@1351 /* Uhm. Okay. I guess that could be interesting. I'll try to keep the right pace and focus, heh. */
==L#2EDJ @1352 /* Come now. I suppose we should get our things and get moving. (smiles) */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",34) SetGlobal("L#2EddardRomanceActive","GLOBAL",2)~ EXIT

CHAIN L#2EDJ R.12.10
@1353 /* Uhm. I suppose it's not a bad idea... */
==L#2EDJ IF ~Gender(Player1,MALE)~ THEN @1354 /* ...and learning how to cook from a handome man like you can be interesting. I hope I'll manage to focus, though! (winks) */
==L#2EDJ IF ~Gender(Player1,FEMALE)~ THEN @1355 /* ...and learning how to cook from a beautiful woman like you can be interesting. I hope I'll manage to focus, though! (winks) */
==L#2EDJ @1356 /* Come now. I guess we should get our things and get moving. (smiles) */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",34) SetGlobal("L#2EddardRomanceActive","GLOBAL",2)~ EXIT

CHAIN L#2EDJ R.12.11
@1357 /* Of course. I think I'd like that. (smiles) */
==L#2EDJ @1358 /* Come now. Let's move until then. But I'll wait for these lessons. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",34) SetGlobal("L#2EddardRomanceActive","GLOBAL",2)~ EXIT

CHAIN L#2EDJ R.12.08
@1359 /* Of course. Let me take my things and... I may need to find my pants. But I should be ready soon. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",34) SetGlobal("L#2EddardRomanceActive","GLOBAL",2)~ EXIT

CHAIN L#2EDJ R.12.05
@1360 /* I see... I suppose it's better to learn that now, rather than find out a year later. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",34) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

CHAIN L#2EDJ R.12.02
@1361 /* I... I see. I suppose I'm glad you told me. I wouldn't want you to force yourself into something you couldn't enjoy. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",34) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//ROMANCE #13 

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",36)~ THEN L#2EDJ R.13.00
@1362 /* Since we're are together and it may sound less as if I were fishing for compliment, would you mind telling me if you think I'm handsome? I suppose it's hard for a man to be judge on his own trial. */
END
IF~~THEN REPLY @1363 /* Well, of course you are. (wink) */ EXTERN L#2EDJ R.13.01
IF~~THEN REPLY @1364 /* You look fine. You're different to those usually catch my attention, but you're fit and nice and that's good. */ EXTERN L#2EDJ R.13.02
IF~~THEN REPLY @1365 /* I suppose. I... I don't know! It's... erm a hard question! */ EXTERN L#2EDJ R.13.03
IF~~THEN REPLY @1366 /* I'm not sure I would use that exact adjective, Eddard, but don't take it personally. */ EXTERN L#2EDJ R.13.04
IF~~THEN REPLY @1367 /* You know what? I don't think we're a good match, after all. I'm sorry, but we should end this. And don't ask me such questions again... */ EXTERN L#2EDJ R.13.05

CHAIN L#2EDJ R.13.01
@1368 /* Huh. Somehow it's hard to believe someone you're sleeping with to be a judge in this too, but hey, at least I know I'm your type. Thanks. */
EXTERN L#2EDJ R.13.06

CHAIN L#2EDJ R.13.02
@1369 /* Ah, well. So I'm not exactly your type? Well, you're still sleeping with me so... I guess that's good. It means there's still something in me that makes you want this to happen. Heh. Thanks. */
EXTERN L#2EDJ R.13.06

CHAIN L#2EDJ R.13.03
@1370 /* Okay, okay. I never wanted to make you feel confused or trouble. Sorry. */ 
EXTERN L#2EDJ R.13.06

CHAIN L#2EDJ R.13.04
@1371 /* Huh! I just learned that you can be honest to the bone! But... I suppose that's good. You're still sleeping with me so... I guess that's good. It means there's still something in me that makes you want this to happen. Heh. Thanks. */
EXTERN L#2EDJ R.13.06

CHAIN L#2EDJ R.13.06
@1372 /* I asked, because there it looks like different times have different conons of beauty and... I know how it may sound, but when I was growing up, when I was a teen, I hoped to look good. To be the type people would find attractive. Handsome. I know it's not the most important part life, but knowing people see you as good looking give this nice tingling. */
==L#2EDJ @1373 /* I may sound silly. Ugh, sorry, but I suppose all of us can be vain every now and then. */
END
IF~~THEN REPLY @1374 /* And what do you think about me? */ EXTERN L#2EDJ R.13.07
IF~~THEN REPLY @1375 /* It's fine. I suppose it's normal that some part of us want to appeal to other people. */ EXTERN L#2EDJ R.13.08
IF~~THEN REPLY @1376 /* I think that's something we should avoid. Vanity can be deadly. Perhaps even corrupting. */ EXTERN L#2EDJ R.13.09

CHAIN L#2EDJ R.13.07
@1377 /* Sorry for my languague, but you look DAMN good. Heh. */
EXTERN L#2EDJ R.13.10

CHAIN L#2EDJ R.13.08
@1378 /* Right. It's good I have such an understanding "significant other"! Heh. */
EXTERN L#2EDJ R.13.10

CHAIN L#2EDJ R.13.09
@1379 /* I know, it... I'll keep that part of me on a leash. I promise. */
EXTERN L#2EDJ R.13.10

CHAIN L#2EDJ R.13.10
@1380 /* Appearance was also a part of the court life. People would comment on it, spend much gold and effort to look younger or do something opposite: emphasise that part of them that makes them unique. A lock of white hair. A beauty spot, that's how they would call it. Some would show of their scars, mostly men proud of their battles. But I also knew a lady that would do the same. */
==L#2EDJ @1381 /* But I suppose I care mostly about what you think or feel or tell me. I'm happy to hear your opinion. No matter what it is. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",37)~ EXIT

CHAIN L#2EDJ R.13.05
@1382 /* That... was sudden. I am sorry if I angered you and... I will no longer bother you then. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",37)~ EXIT

//ROMANCE #14 

CHAIN IF ~Global("L#2EddardRomTalk","GLOBAL",39)~ THEN L#2EDJ R.14.00
@1383 /* Fighting by your side is... something a fine soul could use and feel even stronger. */
END
IF~~THEN REPLY @1384 /* And you're such soul, hmm? */ EXTERN L#2EDJ R.14.01
IF~~THEN REPLY @1385 /* I think your soul is strong enough even without my help. */ EXTERN L#2EDJ R.14.02
IF~~THEN REPLY @1386 /* Please, we don't have time for things like that. We should move on. */ EXTERN L#2EDJ R.14.03

CHAIN L#2EDJ R.14.01
@1387 /* With you? I feel good enough to say... yes. Yes I am. (smiles) */
==L#2EDJ @1388 /* Sorry, I just wanted to tell you that. But I suppose we should get back to work. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",40)~ EXIT

CHAIN L#2EDJ R.14.02
@1389 /* Mmm. Maybe. But it all feels lighter when you're around. */
==L#2EDJ @1390 /* Sorry, I just thought I'd let you know. Heh. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",40)~ EXIT

CHAIN L#2EDJ R.14.03
@1391 /* I'm sorry. Heh. I just couldn't resist. */
DO ~SetGlobal("L#2EddardRomTalk","GLOBAL",40)~ EXIT

//RADIANT HEART

CHAIN IF ~Global("L#2EddardRadiantHeart","GLOBAL",1)~ THEN L#2EDJ RH.00
@1392 /* This place is so big and it has this majestic feel. No wonder knights inspire so many tales. Isn't this place twice as big as the Silvershield estate? */
END
IF~~THEN REPLY @1393 /* It's surely big. */ EXTERN L#2EDJ RH.01
IF~~THEN REPLY @1394 /* I never liked such place. They feel way too... radiant. */ EXTERN L#2EDJ RH.02
IF~~THEN REPLY @1395 /* I think it's beautiful and yes, it feels somehow bigger.. */ EXTERN L#2EDJ RH.03
IF~~THEN REPLY @1396 /* We don't have time for talks. We should move on. */ EXTERN L#2EDJ RH.04

CHAIN L#2EDJ RH.01
@1397 /* Is that all you have to say? Well, you are being a <PRO_MANWOMAN> of few words today. Or... at least now. */
EXTERN  L#2EDJ RH.05

CHAIN L#2EDJ RH.02
@1398 /* Ah, you find a building of the Orderd of the RADIANT Heart too radiant? Heh. Sometimes you can be quite funny, <CHARNAME>. But that's okay. */
EXTERN L#2EDJ RH.05

CHAIN L#2EDJ RH.03
@1399 /* And look at thse high ceilings. They give that feeling of an open space. */
EXTERN L#2EDJ RH.05

CHAIN L#2EDJ RH.05
@1400 /* You know, there were times when I thought about becoming a paladin myself. I suppose my father would like that, but I always wanted to know more. I felt I should know the basics of magic and the grasp of the written and spoken lore... That's how I ended as who I am today. */
==L#2EDJ @1401 /* Who knows what I would have decided if I visited a place like this in my early years, though. */
END
IF~~THEN REPLY @1402 /* I think you made a good choice and I think your other skills and knowledge really helped us a couple of times. */ EXTERN L#2EDJ RH.06
IF~~THEN REPLY @1403 /* Oh, that could have been an interesting adventure. To train more swordsmanship, study the morals, learn how to smite evil and eventurally become a knight. I think you'd like it. */ EXTERN L#2EDJ RH.07
IF~~THEN REPLY @1404 /* I think only fools take this way, become knights who may feel strong, but always hide behind the codex when a serious decision is to be made! */ EXTERN L#2EDJ RH.08
IF~~THEN REPLY @1405 /* Mhm. Anyway, I think we need to move on, Eddard. Come. */ EXTERN L#2EDJ RH.04

CHAIN L#2EDJ RH.06
@1406 /* That's nice what you're saying. And it was also my parents approval to make me learn all these things, but... I think they'd also approve this path. */
EXTERN L#2EDJ RH.09

CHAIN L#2EDJ RH.07
@1407 /* It could have been interesting lessons, yes, and and interesting path... */
EXTERN L#2EDJ RH.09

CHAIN L#2EDJ RH.08
@1408 /* You're being really harsh right now, and lightly unfair, if I can be honest with you. */
EXTERN L#2EDJ RH.09

CHAIN L#2EDJ RH.09
@1409 /* Anyway, I suppose we came here for a reaon, not just for sightseeing, so excuse me this little digresion. If you want to move on, I'll be right behind you, <CHARNAME>. */
DO ~SetGlobal("L#2EddardRadiantHeart","GLOBAL",2)~ EXIT

CHAIN L#2EDJ RH.04
@1410 /* Right. Of course. I should have remembered we're doing something. I'm sorry. */
DO ~SetGlobal("L#2EddardRadiantHeart","GLOBAL",2)~ EXIT

//COPPER CORONET

CHAIN IF ~Global("L#2EddardCopperC","GLOBAL",1)~ THEN L#2EDJ CC.00
@1411 /* Wow. This is probably... the dirties tavern I have ever seen! */
END
IF~~THEN REPLY @1412 /* Welcome to the Copper Coronet. Heh. */ EXTERN L#2EDJ CC.01
IF~~THEN REPLY @1413 /* Dirty? Oh, I wouldn't call it like that. Just... heavily exopatated. */ EXTERN L#2EDJ CC.02
IF~~THEN REPLY @1414 /* Anyway, there's a purpose of us being here. Come. */ EXTERN L#2EDJ CC.03

CHAIN L#2EDJ CC.01
@1415 /* unique view, that I can say! */
EXTERN L#2EDJ CC.04

CHAIN L#2EDJ CC.02
@1416 /* Many of these people also seem "heavily exopatated", too. */
EXTERN L#2EDJ CC.04

CHAIN L#2EDJ CC.04
@1417 /* It doesn't exactly look like "Blade and Stars" or "Helm and Cloak" or, even they may be closer, "Blushing Mermaid". But even the last of these feels like an expensive and posh place, when compared to where we are now. */
==L#2EDJ @1418 /* Don't get me wrong, I don't mind staying here for a while. I'll feel like a scholar trying to find out how on all gods this place still runs. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1419 /* You REALLY don't mind staying here...? Gods, what the last year did to you, poor brother! I must have killed that hope for some standard... */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1420 /* I feel that if I make another step, by foot is going to stick the place and I'll need to cut it off! Bleh! */
==L#2EDJ @1421 /* Well, let's hope this time curiosity won't kill the cat! */
END
IF~~THEN REPLY @1422 /* Did you have some favorite tavern in Baldur's Gate? */ EXTERN L#2EDJ CC.05
IF~~THEN REPLY @1423 /* Whatever. I think we should move on. Come, Eddard. */ EXTERN L#2EDJ CC.03

CHAIN L#2EDJ CC.05
@1424 /* Hmm, not really. I mean, I don't think I can answer that question as I think there are many I have never went to. Mostly because father would feel that wouldn't be received well. Eh... */
END
IF~~THEN REPLY @1425 /* So you weren't allowed into a tavern or a pub?! */ EXTERN L#2EDJ CC.06
IF~~THEN REPLY @1426 /* I'm not sure how would that work. Were you chained to walls, or something? */ EXTERN L#2EDJ CC.06
IF~~THEN REPLY @1427 /* We need to go, we don't have time to continue this talk. Let's go. */ EXTERN L#2EDJ CC.03

CHAIN L#2EDJ CC.06
@1428 /* Hah. Well... it was... complex. */
==L#2EDJ @1429 /* When I was a kid, I wouldn't be allowed to go to such places, but most kids are kept away from pubs, right? They're not allowed to drink anyway, hmm? */
==L#2EDJ @1430 /* Anyway, I was asked to stay away from them even when I was old enough. After many many many discussions, we would set a compromise with my father. I could pick few two or three nearby tavers I could go to one in a long while to ease my curiosity and need to do something elsewhere than at the estate. */
==L#2EDJ @1431 /* Don't get me wrong, my father knew I'll be responsible and I'm not going to cause much trouble and I saw how he tried to accept I am a grown man. But we should remember that people talk and make stories up and my father also have some enemies. So... that also affected me. My life. But I made it. I got even older, even stronger so. As we can see today, I could get worse! I made it pretty well, considering the circumstances, heh. */
==L#2EDJ @1432 /* But... wait, you are from Candlekeep, if I remember correctly, so it's not like you partied yourself, hmm? */
END
IF~~THEN REPLY @1433 /* Well, we had an inn in Candlekeep! Called... Well... Candlekeep Inn. It's run by Winthrop. The only one inside the keep. */ EXTERN L#2EDJ CC.07
IF~~THEN REPLY @1434 /* I never felt that I need to "party". I felt good doing other things, reading or doing whatever I felt like doing. */ EXTERN L#2EDJ CC.08
IF~~THEN REPLY @1435 /* It doesn't matter. We should be going, Eddard, so... let's just go. */ EXTERN L#2EDJ CC.03

CHAIN L#2EDJ CC.07
@1436 /* Oh, that's a creative name! Hah. */
EXTERN L#2EDJ CC.09

CHAIN L#2EDJ CC.08
@1437 /* Hmm, that feels nice. I know the options were limited, but... */
EXTERN L#2EDJ CC.09

CHAIN L#2EDJ CC.09
@1438 /* Anyway, let's see what this... Coppoer Coronet hides? Mysteries? Coackroaches? Food made from things you'd never normally eat? I'm thinking it's that third option. */
DO ~SetGlobal("L#2EddardCopperC","GLOBAL",2)~ EXIT

CHAIN L#2EDJ CC.03
@1439 /* Mhm. Right. Right. */
DO ~SetGlobal("L#2EddardCopperC","GLOBAL",2)~ EXIT

//KILLED SLAVE MASTER / HAS THE ORB

CHAIN IF ~Global("L#2EddardThrallsOrb","GLOBAL",1)~ THEN L#2EDJ SM.00
@1440 /* He's dead and we have that orb. Maybe we'll be able to free these people. I'm sorry it took me a while to speak up, but... the idea we had to fight these slaves... */
END
IF~~THEN REPLY @1441 /* Such circumstances must be difficult for you. */ EXTERN L#2EDJ SM.01
IF~~THEN REPLY @1442 /* Buckle up, Eddard. We're doing something here. You can't take it personally. That's not the time. */ EXTERN L#2EDJ SM.02

CHAIN L#2EDJ SM.01
@1443 /* It is. I mean. It feel strange. But I know we don't have any option. I mean: now we have. That orb will help, I know it. And we certainly should use it. */
DO ~SetGlobal("L#2EddardThrallsOrb","GLOBAL",2)~ EXIT

CHAIN L#2EDJ SM.02
@1444 /* Right. You're right. I'll... pull myself together. */
DO ~SetGlobal("L#2EddardThrallsOrb","GLOBAL",2)~ EXIT

//DRUNK

CHAIN IF ~Global("L#2EddardDrunk","GLOBAL",1)~ THEN L#2EDJ DRNK.00
@1445 /* Agh... hah. Well...! I didn't know we would... spend so much time here... I don't remember the last time... I spent so much time at a taverm or pub... hmm... */
END
IF~~THEN REPLY @1446 /* Oh, wow. You're really wasted, aren't you? */ EXTERN L#2EDJ DRNK.01
IF~~THEN REPLY @1447 /* Erh, you should know how to drink. And are your limits. Just... let us move on. */ EXTERN L#2EDJ DRNK.02
IF~~THEN REPLY @1448 /* I thought you've be more responsible when drinking. Well, let us move on. */ EXTERN L#2EDJ DRNK.02

CHAIN L#2EDJ DRNK.01
@1449 /* Mmm... a tiny... bit? Oh, I thought it would be... nice! To feel like a normal guy. Getting... normally drunk. But... I might have... drunk a bit too much... Gods, I feel like I can take off my shirt and... do some brawling! */
END
IF~~THEN REPLY @1450 /* What?! No! */ EXTERN L#2EDJ DRNK.03
IF~Global("L#2EddardMatch","GLOBAL",1)~THEN REPLY @1451 /* Hah. Well, I don't mind you taking off that shirt. But let's keep brawling off the list. (grin) */ EXTERN L#2EDJ DRNK.04
IF~~THEN REPLY @1452 /* Well, do whatever you want. */ EXTERN L#2EDJ DRNK.05
IF~~THEN REPLY @1453 /* Eh, let us just move on. You may need some fresh air. */ EXTERN L#2EDJ DRNK.02

CHAIN L#2EDJ DRNK.03
@1454 /* Agh... you're such a fun-killer to<DAYNIGHT>! */
END
IF~~THEN REPLY @1455 /* No, I'm not and... who am I kidding. Arguing with a drunk person is getting us nowhere. We should just move on. */ EXTERN L#2EDJ DRNK.02
IF~Global("L#2EddardMatch","GLOBAL",1)~THEN REPLY @1456 /* I liked the other idea more... I don't mind you taking off that shirt. But let's keep brawling off the list. (grin) */ EXTERN L#2EDJ DRNK.04
IF~~THEN REPLY @1457 /* Well, do whatever you want. You're a big boy, I'm not going to tell you what to do. */ EXTERN L#2EDJ DRNK.05
IF~~THEN REPLY @1458 /* Hah. I'm wondering what kind of face you're gonna have once you sober up and realize what you've been saying. */ EXTERN L#2EDJ DRNK.07

CHAIN L#2EDJ DRNK.04
@1459 /* Oh... so... you like looking at me, hmm? Good... to know! Shirt's off... Fine... you can touch my chest! I know you want it...! */
END
IF~~THEN REPLY @1460 /* Haha! Well, I can already see how embarassed you're going to be when you get sober! */ EXTERN L#2EDJ DRNK.07
IF~~THEN REPLY @1461 /* Well, it's... quite hard. You must work out quite a bit! */ EXTERN L#2EDJ DRNK.06
IF~~THEN REPLY @1462 /* You know what? Let's just go outside. You clearly need some fresh air. */ EXTERN L#2EDJ DRNK.02

CHAIN L#2EDJ DRNK.06
@1463 /* I do pushup! And... other thing... And... mm. You have a nice hand. You can keep it on... my torse. If... you want. I... don't mind. Heh... */
END
IF~~THEN REPLY @1464 /* Heh. Well. I think you're starting to pass out. You may need some fresh air. */ EXTERN L#2EDJ DRNK.02
IF~~THEN REPLY @1465 /* Well, it's getting a bit uncomfortable. Let's just move on. */ EXTERN L#2EDJ DRNK.02

CHAIN L#2EDJ DRNK.05
@1466 /* I... would do all that... But... I have that weird feeling in my stomach. And things are somehow... Well... I... */
==L#2EDJ @1467 /* I may need some fresh air. */ 
DO ~SetGlobal("L#2EddardDrunk","GLOBAL",2)~ EXIT

CHAIN L#2EDJ DRNK.07
@1468 /* Mmm, a handsome one... of course...! Hah... */
==L#2EDJ @1469 /* Ugh... I may need some fresh air now... */ 
DO ~SetGlobal("L#2EddardDrunk","GLOBAL",2)~ EXIT

CHAIN L#2EDJ DRNK.02
@1470 /* Mhm... agh... right... */
DO ~SetGlobal("L#2EddardDrunk","GLOBAL",2)~ EXIT

//DRUNK (AFTER REST)

CHAIN IF ~Global("L#2EddardDrunk","GLOBAL",3)~ THEN L#2EDJ DRNK.20
@1471 /* Uhm, look. I just realized I may have got a bit too drunk and... I remember few things and I know I talked to you. */
==L#2EDJ @1472 /* I don't know what exactly I've been saying, but I think "sorry" is in place. So... sorry. Let's... pretend it's been someone else you've been talking to. */
==L#2EDJ @1473 /* Now... I'll just go before you say say something. I'll be standing somewhere over there... */
DO ~SetGlobal("L#2EddardDrunk","GLOBAL",4)~ EXIT

//UNDERDARK

CHAIN IF ~Global("L#2EddardUD1","GLOBAL",2)~ THEN L#2EDJ UD1.00
@1474 /* There were few times I read about the Underdark. Not only the refference books, written by scholars, but also some novels. SOMEHOW, they were mostly horror stories. Huh. I'm wondering why... */
END
IF~~THEN REPLY @1475 /* Oh, I don't know. It's such a lovely place. */ EXTERN L#2EDJ UD1.01
IF~~THEN REPLY @1476 /* Underdark is a dangerous place. We should ALWAYS remember that. One mistake and we may be dead. */ EXTERN L#2EDJ UD1.02
IF~~THEN REPLY @1477 /* We don't have time for this. Come, we should be going. */ EXTERN L#2EDJ UD1.03

CHAIN L#2EDJ UD1.01
@1478 /* Yes, indeed, it could only use a vase with some flowers in it. Prefferably blue or gold. */
EXTERN L#2EDJ UD1.04

CHAIN L#2EDJ UD1.02
@1479 /* I think that's a quote from "Underhope" by Tinda Garlandar! You read it too? */
EXTERN L#2EDJ UD1.04

CHAIN L#2EDJ UD1.04
@1480 /* I know we need to be careful, but I suppose that's also our chance to study creature that dwell this place. Learn how they act. So next time we're in the Underdark or... or next time we encounter them, we'll feel more prepared. */
END
IF~Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @1481 /* I'm lucky to be here with you. I feel somehow safer. When together, we can handle all kinds of monsters. */ EXTERN L#2EDJ UD1.0R
IF~~THEN REPLY @1482 /* That's quite practical. I thought you'd be more bothered by where we are. */ EXTERN L#2EDJ UD1.05
IF~~THEN REPLY @1483 /* Eh, whatever. Eddard, we don't have much time and I think we should better get going. Please. */ EXTERN L#2EDJ UD1.03

CHAIN L#2EDJ UD1.0R
@1484 /* I feel the same. I am glad I have such a leader. Skilled. Well... and good looking, heh. But thanks to your skill, I know we can handle this. And survive. */
DO ~SetGlobal("L#2EddardUD1","GLOBAL",3)~ EXIT

CHAIN L#2EDJ UD1.05
@1485 /* I am bothered, but thinking straight may help us win. And survive. That's why I'm trying to focus on that. */
==L#2EDJ @1486 /* Well, it's good we're not new in this. Fighting monsters, I mean. */
DO ~SetGlobal("L#2EddardUD1","GLOBAL",3)~ EXIT

CHAIN L#2EDJ UD1.03
@1487 /* Yes, yes. Right. Let's move. */
DO ~SetGlobal("L#2EddardUD1","GLOBAL",3)~ EXIT

//UNDERDARK (SLAVES)

CHAIN IF ~Global("L#2EddardUD2","GLOBAL",1)~ THEN L#2EDJ UD2.00
@1488 /* Gods, look at this place! Those creatures... they treet others like—agh, I'm not even sure what to compare it to. Livestock is treated better. */
END
IF~~THEN REPLY @1489 /* We got ourself into a true horror story, Eddard. */ EXTERN L#2EDJ UD2.01
IF~~THEN REPLY @1490 /* We must do something to help those people. We can't just leave them. */ EXTERN L#2EDJ UD2.02
IF~~THEN REPLY @1491 /* Please, stop talking. I need to focus. */ EXTERN L#2EDJ UD2.03

CHAIN L#2EDJ UD2.01
@1492 /* Believe me, I read MANY horror stories... and this is way worse. */
DO ~SetGlobal("L#2EddardUD2","GLOBAL",2)~ EXIT

CHAIN L#2EDJ UD2.02
@1493 /* Sure we can't. Let's do all we can to help them. */
DO ~SetGlobal("L#2EddardUD2","GLOBAL",2)~ EXIT

CHAIN L#2EDJ UD2.03
@1494 /* Of course. I'm sorry. I... I may need to admit I'm starting to get scared for our lives. */
DO ~SetGlobal("L#2EddardUD2","GLOBAL",2)~ EXIT

//LANTHORN (NOT ROMANCED)

CHAIN IF ~Global("L#2EddardLanthorn","GLOBAL",1)~ THEN L#2EDJ RNLN.00
@1495 /* We have that thing Elhan sent so to get... It was harder than I thought. But we made it. We killed that evil wench. */
END
IF~~THEN REPLY @1496 /* Barely... */ EXTERN L#2EDJ RNLN.01
IF~~THEN REPLY @1497 /* Of course we did. There was no other option! */ EXTERN L#2EDJ RNLN.01
IF~~THEN REPLY @1498 /* It's been quite fun. And that face when she realized she's loosing: priceless! */ EXTERN L#2EDJ RNLN.01
IF~~THEN REPLY @1499 /* Sorry, but we don't have time for talks. Let's get going. We need to get this to Elhan. */ EXTERN L#2EDJ RNLN.02

CHAIN L#2EDJ RNLN.01
@1500 /* That's a very important step in whinning this. In stopping Irenicus. But you know that. Otherwise, we wouldn't be here. I'm just saying that because... I'm really glad we succeeded. She was a very powerful vampire after all! */
==L#2EDJ @1501 /* And when I think a living being could end like that. Get so... lost. Fall like that... */
==L#2EDJ @1502 /* Nevertheless, it's a good day! We achived something extra-ordinary. So hold on, <CHARNAME>. We're not far from ending Irenicus once and for all. */
DO ~SetGlobal("L#2EddardLanthorn","GLOBAL",2)~ EXIT 

CHAIN L#2EDJ RNLN.02
@1503 /* Mhm. Sorry for this... interjection. */
DO ~SetGlobal("L#2EddardLanthorn","GLOBAL",2)~ EXIT

//BRACERS

CHAIN IF ~Global("L#2EddardBracers","GLOBAL",1)~ THEN L#2EDJ BRCSS.00
@1504 /* These... are my old bracers! I had them on my mission and—hah! who would have thought we'd find them! */
END
IF~~THEN REPLY @1505 /* They look really expensive! */ EXTERN L#2EDJ BRCSS.01
IF~~THEN REPLY @1506 /* They look as if they were of a really good quality! */ EXTERN L#2EDJ BRCSS.01
IF~~THEN REPLY @1507 /* Take them and let's move on. */ EXTERN L#2EDJ BRCSS.02

CHAIN L#2EDJ BRCSS.01
@1508 /* They are both well-made and expensive, actually. And they were enchanted so when wear by someone of our family, they will work even better. My mother comissioned them when I was to set off on my first job. */
==L#2EDJ @1509 /* She said these gems were taken out of my grand-grand-gran mother's magic staff. She, my mother, never used it anyway and she said it would be a pity if was standing in her wardrobe or used to take off things from the upper wardrobe shelf. I mean, she and our servants can use the shaft for that, they do not need the gems! */
==L#2EDJ @1510 /* Those gems were the magic ones, not the wooden part, so... that's how these bracers were born. */
==L#2EDJ @1511 /* It's so good to see you, old friends... */
END
IF~~THEN REPLY @1512 /* It's good we found them. */ EXTERN L#2EDJ BRCSS.03
IF~~THEN REPLY @1513 /* Mhm. Well, just take them and let us move on, Eddard. */ EXTERN L#2EDJ BRCSS.02

CHAIN L#2EDJ BRCSS.03
@1514 /* True. They belong with the Silvershield family, not some thugs. */
DO ~SetGlobal("L#2EddardBracers","GLOBAL",2)~ EXIT

CHAIN L#2EDJ BRCSS.02
@1515 /* Right. I'll clean them later. Let's go. */
DO ~SetGlobal("L#2EddardBracers","GLOBAL",2)~ EXIT

//BOOK

CHAIN IF ~Global("L#2EddardBook","GLOBAL",1)~ THEN L#2EDJ BOOK.GIFT.00
@1516 /* Wait...! That book! Did I just see "Homleen Fallhood" name on it? She's the author I told you about! The one that wrote the book I had a soft spot for! */
END
IF~~THEN REPLY @1517 /* I know. That's why I bought it. */ EXTERN L#2EDJ BOOK.GIFT.01
IF~~THEN REPLY @1518 /* Right. I've been worndering where I've heard or saw that name before! */ EXTERN L#2EDJ BOOK.GIFT.01
IF~~THEN REPLY @1519 /* Whatever. Stop checking every damn thing I do. */ EXTERN L#2EDJ BOOK.GIFT.02

CHAIN L#2EDJ BOOK.GIFT.01
@1520 /* And... I've never heard of this one... */
END
IF~~THEN REPLY @1521 /* It's a gift. I thought you may like it. */ EXTERN L#2EDJ BOOK.GIFT.03
IF~~THEN REPLY @1522 /* Okay, it's not a big surprise, but you should know I bought it for you. I know how hard this work of ours may be, so little things and gestures like that just help. */ EXTERN L#2EDJ BOOK.GIFT.03
IF~~THEN REPLY @1523 /* I thought I'd read it. You said you liked her other book, so I thought it would let me get a better idea of the writing style that speaks to you. */ EXTERN L#2EDJ BOOK.GIFT.04
IF~~THEN REPLY @1524 /* Whatever. It's also quite weird that you're looking at what I'm doing all the time. Please, stop. */ EXTERN L#2EDJ BOOK.GIFT.02

CHAIN L#2EDJ BOOK.GIFT.03
@1525 /* Really?! That's... for me? Thank you, <CHARNAME>! */
EXTERN L#2EDJ BOOK.GIFT.05

CHAIN L#2EDJ BOOK.GIFT.04
@1526 /* That's... really nice of you. To learn more about what I like... People rarely did that for me, so I really appreciate the effort you put in this. */
EXTERN L#2EDJ BOOK.GIFT.05

CHAIN L#2EDJ BOOK.GIFT.05
@1527 /* Heh. You really surprised me, that I must admit. */
END
IF~OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @1528 /* Well, I care about you, so... it's only natural to do something like that. Show that I do listen to you. */ EXTERN L#2EDJ BOOK.GIFT.06
IF~~THEN REPLY @1529 /* We're working together so we should be nice to eachother, I guess. I think of it as of... investment. */ EXTERN L#2EDJ BOOK.GIFT.06
IF~~THEN REPLY @1530 /* Mhm. Yes, yes. Anyway, we should move on now. */ EXTERN L#2EDJ BOOK.GIFT.07

CHAIN L#2EDJ BOOK.GIFT.06
@1531 /* Hehe. Well... you are a very interesting being, <CHARNAME>. And I think I like it. */
DO ~TakePartyItem("L#2EDBOO") DestroyItem("L#2EDBOO") SetGlobal("L#2EddardBook","GLOBAL",2)~ EXIT

CHAIN L#2EDJ BOOK.GIFT.07
@1532 /* Again, thank you. */
DO ~TakePartyItem("L#2EDBOO") DestroyItem("L#2EDBOO") SetGlobal("L#2EddardBook","GLOBAL",2)~ EXIT

CHAIN L#2EDJ BOOK.GIFT.02
@1533 /* I... I'm sorry. */
DO ~SetGlobal("L#2EddardBook","GLOBAL",2)~ EXIT

//GORGE

CHAIN IF WEIGHT #-1 ~Global("OHD_GORGE_NTRJEX","OH5100",1)~ THEN L#2EDJ GORGE.EDDARD.00
@1534 /* This place is... strange and fascinating. As a place from an epic tale. Hmm, perhaps it's a fine comparison. Feels accurate. */
DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)~ EXIT

////////////////////////////////////
////////// SLAYER-RELATED //////////
////////////////////////////////////

//TALK

CHAIN IF ~Global("L#2EddardScenerySlayer","GLOBAL",1)~ THEN L#2EDJ SLYR.00
@1535 /* <CHARNAME>, I... I hope you're feeling better? */
==L#2EDJ IF ~Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN @1536 /* I'm not sure if I should hug you, kiss you, or do something else, but everything feel... so little to what just happened. */
==L#2EDJ @1537 /* I wish I could do something, but I don't now what to do. Or what to say. */
END
IF~~THEN REPLY @1538 /* Everything's going to be fine, Eddard... I... just need to rest. And think. And calm down. */ EXTERN L#2EDJ SLYR.01
IF~Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @1539 /* Thank you, Eddard, I appreciate you're worried about me, dear one, but... I'm not sure there's anything you can do. */ EXTERN L#2EDJ SLYR.02
IF~~THEN REPLY @1540 /* I have no idea what or how it all happened. But it doesn't matter. I'll learn to fix it. Or control it. */ EXTERN L#2EDJ SLYR.03
IF~~THEN REPLY @1541 /* Just... leave me alone. Please. */ EXTERN L#2EDJ SLYR.04

CHAIN L#2EDJ SLYR.01
@1542 /* Of course, I... just wish it was all easier for you. */
EXTERN L#2EDJ SLYR.05

CHAIN L#2EDJ SLYR.02
@1543 /* I wish there were, though, as I don't want to stand and feel worthless. But all I can think of is... just staying next to you. Helping you. */
EXTERN L#2EDJ SLYR.05

CHAIN L#2EDJ SLYR.03
@1544 /* You demand much of yourself, <CHARNAME>. Controlling this... thing... I'm not even sure if that's possible. */
EXTERN L#2EDJ SLYR.05

CHAIN L#2EDJ SLYR.05
@1545 /* I've seen people turn into monsters, but it was never that... literal. I saw people suffer and die. But what that thing that happened to you, it doesn't feel as any of these things. It feels darker. More... primal. Dire, and savage. */
==L#2EDJ @1546 /* But I'm sure you're confused yourself. I won't bother you any longer now, but know that I'm right here. Keep that in mind. Just in case. */
DO ~SetGlobal("L#2EddardScenerySlayer","GLOBAL",2)~ EXIT

CHAIN L#2EDJ SLYR.04
@1547 /* Yes, I'm... I'm sorry. I thought you'd need a friend right now. Perhaps I've been wrong. */
DO ~SetGlobal("L#2EddardScenerySlayer","GLOBAL",2)~ EXIT

//INTERJECTIONS

INTERJECT_COPY_TRANS PLAYER1 3 L#eddardplayer03
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1548 /* <CHARNAME>...? <CHARNAME>, is everything fine? You look pale and... somehow weaker. */
== L#2EDJ @1549 /* Irenicus clearly did something to you. Something serious and... I wish we had time and resources to do something about, but... try to breath deeply. We'll think of something. */
END

INTERJECT_COPY_TRANS PLAYER1 5 L#eddardplayer05
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1550 /* I... I don't even know what to say. Gods, <CHARNAME>... */
END

INTERJECT Player1 7 L#2eddrd_slayer3
== L#2EDJ IF ~InParty("L#2EDDRD") Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN
@1551 /* You're scaring me, <CHARNAME>... I can see something's wrong, and... I'm getting worried. <CHARNAME>? */
END
++ @1552 /* Eddard, there's... something wrong— */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",551) ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
++ @1553 /* Please, Eddard, make it stop— */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",551) ActionOverride(Player1,ReallyForceSpell(Player1,SLAYER_CHANGE))~ EXIT
++ @1554 /* I can't stop it! I... I want to, but— */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",551) ActionOverride(Player1,ReallyForceSpell(Player1,SLAYER_CHANGE))~ EXIT
++ @1555 /* I feel it again. I may need to... let it take me— */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",551) ActionOverride(Player1,ReallyForceSpell(Player1,SLAYER_CHANGE))~ EXIT

EXTEND_BOTTOM Player1 10
IF ~OR(3) !InParty("L#2EDDRD") Dead("L#2EDDRD") StateCheck("L#2EDDRD",CD_STATE_NOTVALID) Global("EndangerLovedOne","GLOBAL",551)~ THEN EXTERN Player1 12
END

INTERJECT Player1 10 L#2eddrd_slayer4
== L#2EDJ IF ~InParty("L#2EDDRD") Global("EndangerLovedOne","GLOBAL",551)~ THEN @1556 /* <CHARNAME>! I... barely survived. That anger and that hatred and madness... */
== L#2EDJ @1557 /* All combined. All... in you. */
END
++ @1558 /* I am sorry, Eddard. I am so sorry. I never meant to hurt you. */ EXTERN L#2EDJ L#2eddrd_slayer4_1
++ @1559 /* That was... overwhelming. I couldn't do a thing! */ EXTERN L#2EDJ L#2eddrd_slayer4_1
++ @1560 /* That was... strange. Powerful. And morbid at the same time. */ EXTERN L#2EDJ L#2eddrd_slayer4_1
++ @1561 /* I... almost controlled it! I know it! */ EXTERN L#2EDJ L#2eddrd_slayer4_1

CHAIN L#2EDJ L#2eddrd_slayer4_1
@1562 /* It looks like all that power and hatred just... boil in you, make you change and turn into that... creature. */
==L#2EDJ @1563 /* I am scared for you <CHARNAME>. That's why we MUST find a remedy. Find something that will calm down your blood. */
==L#2EDJ @1564 /* ...no matter what it takes... */
DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXIT

//////////////////////////////////////
///////// ABDUCTION-RELATED //////////
//////////////////////////////////////

BEGIN L#2EDVAM

//Bodhi Abduction

// bodhinapping--when Bodhi says she's snatching Eddard (BOHDIAMB)

ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2) !InParty("L#2EDDRD") !Global("L#2EddardRomanceActive","GLOBAL",2)~ DO 0

INTERJECT BODHIAMB 5 L#2EddardBodhiAbduct0
== BODHIAMB IF ~Global("L#2EddardRomanceActive","GLOBAL",2) InParty("L#2EDDRD")~ THEN
@1565 /* You want something from me... but stealing isn't very noble, <CHARNAME>. Watch out, or someone may catch you by your hand and teach you a lesson. */
END
IF ~OR(2) !InPartyAllowDead("L#2EDDRD") Dead("L#2EDDRD")~ EXTERN BODHIAMB 6
IF ~InPartyAllowDead("L#2EDDRD") !Dead("L#2EDDRD")~ EXTERN BODHIAMB L#2EddardBodhiAbduct_1

CHAIN BODHIAMB L#2EddardBodhiAbduct_1
@1566 /* But... it looks like there's that one noble "part" of your life. Eddard. That's his name. From what I heard, he's Entar Silvershield's son, hmm? */
==L#2SDSKJ IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1567 /* Wait... she's... she's not going to do anything to him, right...? */
==L#2EDJ @1568 /* Stay away from me, Bodhi! I won't let you come near me! STAY AWAY. */
END
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("L#2EDVA1")~
UNSOLVED_JOURNAL @1569 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Eddard. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of Eddard Silvershield is at stake, as well! */ EXIT

// Bodhi section 2

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("L#2EddardVampire","GLOBAL",2)~ DO 0

INTERJECT C6BODHI 21 L#2EddardBodhi_1
== C6BODHI IF ~Global("L#2EddardVampire","GLOBAL",2)~ THEN
@1570 /* But... no, it looks like you already forgot how well I prepared for our meeting. I did warn you and you had your chance to turn back. More than one, actually! But no... you had to meddle, didn't you? You had to be like a flea on predator's back. Well, I suppose that's how I should treat you. Like a little bug. */
END
++ @1571 /* You leech. You are parasite, but you will return both Imoen's soul and Eddard! */ EXTERN C6BODHI L#2EddardBodhi_2
++ @1572 /* Yes, you did want me, and now I should want YOU. Give me back everything you took and perhaps I'll show you mercy. */ EXTERN C6BODHI L#2EddardBodhi_2
++ @1573 /* Eddard believed in me. He still does, I DO believe it. I am not letting him down, not now, not ever. */ EXTERN C6BODHI L#2EddardBodhi_2
++ @1574 /* You really think you are strong enough to stop me? Haha! You are even more foolish than I thought! */ EXTERN C6BODHI L#2EddardBodhi_3

APPEND C6BODHI

IF ~~ L#2EddardBodhi_2
SAY @1575 /* Do you really think you can intimidate me? Or scare me? Little thing, little mouse... you beloved Eddard is mine. I already turned him into one of us. People tend to say "till death do us part". I thought I would help and make that happen. Cut this short. Make it simpler for you. That's one problem less off your head. */
IF ~~ DO ~AddJournalEntry(%The Final Battle with Bodhi.

Bodhi has turned Eddard into a vampire!  Or... or very nearly. The process may not have been completed in the short time Bodhi has had him. Hopefully something can be done or I will have lost her. Perhaps the elven war sage might know some way of restoration... or Elhan...%,QUEST)~ EXTERN L#2EDVAM L#2EddardBodhi_4
END

IF ~~ L#2EddardBodhi_3
SAY @1576 /* Laugh while you still can, <CHARNAME>. Laugh while you still have some air in these lungs of yours. */
IF ~~ + L#2EddardBodhi_2
END
END

CHAIN L#2EDVAM L#2EddardBodhi_4
@1577 /* I am ready to seve you, Lady Bodhi. I am only yours. */
==L#2SDSKJ IF ~InParty("L#2SDSkie") See("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1578 /* No... no! Eddard, wake up! He's just... magically charmed, right...? Please... */
== C6BODHI @1579 /* Haha! Oh, my sweet Eddard, you'll be able to play. And perhaps, when <CHARNAME>'s deal, I'll see what that <PRO_RACE> saw in you. Perhaps I should see how good you are... That will be a proper end of this farce. */
EXTERN C6BODHI 28


// Normal new options...
EXTEND_BOTTOM C6ELHAN2 70
+ ~PartyHasItem("L#2EDBOD")~ + @1580 /* Elhan! I'm carrying Eddard's half-changed body with me! Tell me how to fix this! Now! */ GOTO 76
END

EXTEND_BOTTOM DOGHMA 0 #5
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("L#2EDBOD")~ + @1581 /* Someone I know is suffering from vampirism. An old book suggested that followers of Oghma might know how to make things right... */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("L#2EDBOD")~ + @1581 /* Someone I know is suffering from vampirism. An old book suggested that followers of Oghma might know how to make things right... */ GOTO 10
END

EXTEND_BOTTOM IMNBOOK1 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("L#2EDBOD")~ + @1582 /* I'm looking for information about a tome that details the curing of vampirism. */ GOTO 4
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("L#2EDBOD")~ 1 2 3


// Appending Oghmanite's dialogue

APPEND OGHMONK1
IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1) PartyHasItem("L#2EDBOD")~ L#2Eddard_oghma
SAY @1583 /* Have you come seeking wisdom from the Binder of What is Known? The Wise God stands ready. How can we help you? */
++ @1584 /* No, thank you, I do not need help at the moment... */ + 5
++ @1585 /* I need some help. Someone I know is suffering from vampirism. An old book suggested that followers of Oghma might know how to make things right. */ + 6
END
END

// New Demin option

EXTEND_BOTTOM SUDEMIN 2
+ ~PartyHasItem("L#2EDBOD")~ + @1586 /* I lost a dear one in a battle with his sister, Bodhi. I seek a means of curing him. */ GOTO 3
END

EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("c6bodhi") Global("L#2EddardVampire","GLOBAL",2)~ + @1587 /* A dear one was taken by a vampire. What can I expect when I find him? */ GOTO 6
+ ~PartyHasItem("L#2EDBOD")~ + @1588 /* A dear one of mine has fallen to a vampire. Is there any way to save him? */ GOTO 5
END


//////////////////////////////////////////// 
////////////////Tree of Life//////////////// 
//////////////////////////////////////////// 

INTERJECT PLAYER1 33 L#2EddardTreeOfLife 
== PLAYER1 IF ~IsValidForPartyDialog("L#2EDDRD")~ THEN 
@1589 /* Eddard Silvershield, the brother of Skie Silvershield and a son of Dure Entar, a man who was believed to be dead, decided to aid you. The two of you travelled for a while now. Now, he stand here, waiting with you, to end the chain of unfortunate events you had to stand for too long. */
END 
IF~Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @1590 /* Eddard, you should know something. I... love you. And I am afraid that if you come with me, you may get hurt. */ EXTERN L#2EDJ L#2EddardTreeOfLife1
IF~Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @1591 /* I love you, Eddard, and I need you with me. I need someone I may trust. Someone that will help me Irenicus pay for everything he did. */ EXTERN L#2EDJ L#2EddardTreeOfLife1
IF~~THEN REPLY @1592 /* Eddard, you should know you won't be safe if you come with me. Are you ready for this? */ EXTERN L#2EDJ L#2EddardTreeOfLife2
IF~~THEN REPLY @1593 /* So, are you ready to kick some butts, Eddard? Do you have you best shoes on? */ EXTERN L#2EDJ L#2EddardTreeOfLife2

APPEND L#2EDJ
IF ~~ THEN BEGIN L#2EddardTreeOfLife1 
SAY @1594 /* <CHARNAME>, I love you too. I know what we're doing. I know why we're here. I am a big boy and I can take care of myself. While I know you are strong too, I feel I should be there with you. So yes, I'm going with you. We're going to defeat Irenicus. He walked this world for far too long anyway. */
COPY_TRANS PLAYER1 33 
END 

IF ~~ THEN BEGIN L#2EddardTreeOfLife2
SAY @1595 /* Hah, well... I know it's going to be dangerous, but also quite fun, I hope. But jokes aside: I've been a part of this for a while already. I'm not leaving now. I'm coming with you. */
COPY_TRANS PLAYER1 33 
END 
END

/////////////////////////////////////
/////////////////////////////////////
//////////// TIMERED TOB ////////////
/////////////////////////////////////
/////////////////////////////////////

BEGIN L#2ED25J
BEGIN L#2EDDOG
BEGIN L#2EDJCK

//SKIE DEAD - LOCK FRIENDSHIP AND ROMANCE

CHAIN IF ~Global("L#2EddardBlockEverything","GLOBAL",1)~ THEN L#2ED25J SKIE.LOCK.DEAD
@719 /* You... let my sister die? And then you just left her? I cannot ignore this <CHARNAME>. People die, sometimes we can do nothing about it, but... I... just can't let is slide. */
==L#2ED25J @720 /* Your mission is important so I'll not leave you, but you're not among my good books anymore. */
DO ~SetGlobal("L#2EddardBlockEverything","GLOBAL",2)~ EXIT

//FRIENDSHIP 1 (10 minutes after joining)

CHAIN IF ~Global("L#2EDThroneFTalk1","GLOBAL",2)~ THEN L#2ED25J F.01.00
@1596 /* When I first set on my mission, with the caravan, I would never expect to end here. And that's where it all began. With a simple work, that was a failure, that made me into a slave, so you and Skie could save me. So now I can fight evil sorcerers, demons, walk through portals... */
==L#2ED25J @1597 /* That's more than what the novels tells. Nor horrors, nor dramas and nor the adventure books. */
END
IF~~THEN REPLY @1598 /* I suppose it's great to live in both worlds: the one of books, and the one of flesh and bones. */ EXTERN L#2ED25J F.01.01
IF~~THEN REPLY @1599 /* Well, if I could choose, I would choose to sit and read and live with a fine book in my hand, Eddard. */ EXTERN L#2ED25J F.01.02
IF~~THEN REPLY @1600 /* I think the best thing a person can do, is to live in the realm of flesh and bones, not some... fantasies. */ EXTERN L#2ED25J F.01.02
IF~~THEN REPLY @1601 /* Whatever. We don't have time for such talks. Let's just move on. */ EXTERN L#2ED25J F.01.03

CHAIN L#2ED25J F.01.01
@1602 /* I agree. I think that's the best way to live your life: in a multiple worlds. */
EXTERN L#2ED25J F.01.04

CHAIN L#2ED25J F.01.02
@1603 /* I think that... I'd rather live in all the worlds I can. That of flesh and bones, but also that one offered by literature, stories and art. */
EXTERN L#2ED25J F.01.04

CHAIN L#2ED25J F.01.04
@1604 /* There is a reason why I think that's the best option. We, <CHARNAME>, are already like a written text. People speak of us. And... perhaps we can inspire some of those, that are unhappy with their lives. We are like those stories. */
==L#2ED25J @1605 /* But the actual change, is the decision. Action. That real day when you go and buy yourself a pair of fair boots and a knife, or a sword, or a wand. That is the flesh. And that is the bone. */
==L#2ED25J @1606 /* Both these are important. That's why I think it's best to explore both these world. World of culture, and the material one. */
END
IF~~THEN REPLY @1607 /* I guess it does make sense. */ EXTERN L#2ED25J F.01.05
IF~~THEN REPLY @1608 /* I have no other choice but to agree with you, Eddard. */ EXTERN L#2ED25J F.01.05
IF~~THEN REPLY @1609 /* I can't agree with you. Living in two worlds can't end well. */ EXTERN L#2ED25J F.01.06
IF~~THEN REPLY @1610 /* I don't have time for this, Eddard. Let's just move on. */ EXTERN L#2ED25J F.01.03

CHAIN L#2ED25J F.01.05
@1611 /* Mhm. (nods) Well, that's just what I think. */
EXTERN L#2ED25J F.01.07

CHAIN L#2ED25J F.01.06
@1612 /* Heh, I suppose have to agree to disagree on this one, then. But it's fine. */
EXTERN L#2ED25J F.01.07

CHAIN L#2ED25J F.01.07
@1613 /* Sometimes I wonder what the future tales will say about us. That we're handsome? Weird? Unique? Some... agents of luck, perhaps? Or maybe twelve feet tall? */
==L#2ED25J @1614 /* Stories can be wild, but... would they be wilder than our real life? Heh. */
DO ~SetGlobal("L#2EDThroneFTalk1","GLOBAL",3)~ EXIT

CHAIN L#2ED25J F.01.03
@1615 /* Of course. I am sorry for slowing us down. */
DO ~SetGlobal("L#2EDThroneFTalk1","GLOBAL",3)~ EXIT

//FRIENDSHIP 2 (Saradush and Master Barkshield)

CHAIN IF ~Global("L#2EddardHasADog","GLOBAL",0) InParty("L#2EDDRD") !Dead("L#2EDDRD")~ THEN L#2EDDOG DOG.01.00
@1616 /* Woof! Grrr... */
==L#2ED25J @1617 /* Hey—hey! That's mine! Give me that! It's a memento! */
==L#2EDDOG @1618 /* Rrr... Woof! (panting) */
==L#2ED25J @1619 /* But... */
==L#2ED25J @1620 /* Eh, and it's done. It looks like that broken bracelet I took from home is broken. Are you happy with yourself? */
==L#2EDDOG @1621 /* Mh... */
==L#2SD25J IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1622 /* I think you made him kinda sad. Wait... is it a he? */
==L#2ED25J IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1623 /* Wait. Hmm, it looks like it. */
==L#2ED25J @1624 /* Well... the bracelet's... been old anyway. And I suppose I don't need it that much since I got free. And... */
==L#2ED25J @1625 /* You look quite lonely. Where is your dog-mummy? */
==L#2EDDOG @421 /* ... */
==L#2ED25J @1626 /* You're alone then...? That's awful. You're way too young and... I suppose that no one takes much care of you, considering they are scared for their own lifes. */
==L#2ED25J @1627 /* Wait, I'll see if your mom is somewhere to be found... */
==L#2ED25J @1628 /* She's not here... */
==L#2EDDOG @421 /* ... */
==L#2ED25J @1629 /* So you are quite alone. I wonder if you have a name. */
==L#2ED25J @1630 /* ...poor boy... */
==SARPRO01 IF ~Exists("SARPRO01") !Dead("SARPRO01")~ THEN @1631 /* I don't think he has a name, mister... I don't think so... most people ignore it and it's mother... I think she's dead. She stopped comming... */
==SARPRO01 IF ~Exists("SARPRO01") !Dead("SARPRO01")~ THEN @1632 /* I give him scraps of what I'm eating... but... it's not safe here. He's not safe... */
==L#2ED25J IF ~Exists("SARPRO01") !Dead("SARPRO01")~ THEN @1633 /* So it's decided, then... */
==L#2ED25J @1634 /* You're comming with me. */
END
IF~~THEN REPLY @1635 /* Are you sure it's a good idea, Eddard? */ EXTERN L#2ED25J DOG.01.01
IF~~THEN REPLY @1636 /* What do you think you're doing? */ EXTERN L#2ED25J DOG.01.01

CHAIN L#2ED25J DOG.01.01
@1637 /* I'm taking him with me, sorry, but that's my decision. I'll take care of him, keep it in my bag, or on my hands, until the time he is strong enough, and then he'll just walk on his own. */
==L#2ED25J @1638 /* And I already have a name for him anyway. */
END
IF~~THEN REPLY @1639 /* Oh? */ EXTERN L#2ED25J DOG.01.03
IF~~THEN REPLY @1640 /* I highly disapprove. */ EXTERN L#2ED25J DOG.01.02

CHAIN L#2ED25J DOG.01.02
@1641 /* Sorry, but I can't just let him die on these streets. I've been there, I had to survive on scraps and I was too weak to help myself, when I was captured. And now I'll help this boy be a man. But to do so, he needs to survive first. */
EXTERN L#2ED25J DOG.01.03

CHAIN L#2ED25J DOG.01.03
@1642 /* I'll call you Master Barkshield. */
END
IF~~THEN REPLY @1643 /* Hah! Good one! */ EXTERN L#2ED25J DOG.01.04
IF~~THEN REPLY @1644 /* Fine, do whatever you want! */ EXTERN L#2ED25J DOG.01.05
IF~Global("L#2EddardRomanceActive","GLOBAL",3)~THEN REPLY @1645 /* Fine. I care about you so I won't let you take care of him alone. */ EXTERN L#2ED25J DOG.01.0R

CHAIN L#2ED25J DOG.01.04
@1646 /* I know, right? */
EXTERN L#2ED25J DOG.01.06

CHAIN L#2ED25J DOG.01.05
@1647 /* That's what I'm planning to do. */
EXTERN L#2ED25J DOG.01.06

CHAIN L#2ED25J DOG.01.0R
@1648 /* Thank you, my love. */
EXTERN L#2ED25J DOG.01.06

CHAIN L#2ED25J DOG.01.06
@1649 /* Come, Master Barkshield. It's time to go on an adventure. */
DO ~TakeItemReplace("L#2EDDOG","L#2EDSCR",Myself) SetGlobal("L#2EddardHasADog","GLOBAL",1) ActionOverride("L#2EDDOG",DestroySelf()) Deactivate("L#2EDDOG")~ EXIT

CHAIN IF ~Global("L#2EddardHasADog","GLOBAL",0) OR(2) !InParty("L#2EDDRD") Dead("L#2EDDRD")~ THEN L#2EDDOG DOG.01.00
@1650 /* Woof! */
EXIT

//DOG-ITEM

CHAIN IF ~PartyHasItem("L#2EDDOG")~ THEN L#2EDDOG DOG.00
@1650 /* Woof! */
END
IF~~THEN REPLY @1651 /* Who's a good boy? Hmm? */ EXTERN L#2EDDOG DOG.01
IF~~THEN REPLY @1652 /* Hey! I think I have a sausage leftover somewhere here. Here, exactly for one nice bite! */ EXTERN L#2EDDOG DOG.02
IF~~THEN REPLY @1653 /* Hmm, I'm wondering what kind of dog you'll be when you grow up. */ EXTERN L#2EDDOG DOG.03
IF~~THEN REPLY @1654 /* You smell, Master Barkshield. Quite much! */ EXTERN L#2EDDOG DOG.04
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",2)~THEN REPLY @1655 /* You pissed at Eddard's shirt, hmm? Good job, boy. */ EXTERN L#2EDDOG DOG.05
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",5)~THEN REPLY @1656 /* We've goon talking with Eddard about you. Again. It looks like he really likes you! */ EXTERN L#2EDDOG DOG.06
IF~~THEN REPLY @1657 /* Right. Woof. Now, let's move on. */ EXIT

CHAIN L#2EDDOG DOG.01
@1658 /* Woof, woof! */
END
IF~~THEN REPLY @1652 /* Hey! I think I have a sausage leftover somewhere here. Here, exactly for one nice bite! */ EXTERN L#2EDDOG DOG.02
IF~~THEN REPLY @1653 /* Hmm, I'm wondering what kind of dog you'll be when you grow up. */ EXTERN L#2EDDOG DOG.03
IF~~THEN REPLY @1654 /* You smell, Master Barkshield. Quite much! */ EXTERN L#2EDDOG DOG.04
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",2)~THEN REPLY @1655 /* You pissed at Eddard's shirt, hmm? Good job, boy. */ EXTERN L#2EDDOG DOG.05
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",5)~THEN REPLY @1656 /* We've goon talking with Eddard about you. Again. It looks like he really likes you! */ EXTERN L#2EDDOG DOG.06
IF~~THEN REPLY @1657 /* Right. Woof. Now, let's move on. */ EXIT

CHAIN L#2EDDOG DOG.02
@1659 /* Mmm... woof! Mmm.... */
END
IF~~THEN REPLY @1651 /* Who's a good boy? Hmm? */ EXTERN L#2EDDOG DOG.01
IF~~THEN REPLY @1653 /* Hmm, I'm wondering what kind of dog you'll be when you grow up. */ EXTERN L#2EDDOG DOG.03
IF~~THEN REPLY @1654 /* You smell, Master Barkshield. Quite much! */ EXTERN L#2EDDOG DOG.04
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",2)~THEN REPLY @1655 /* You pissed at Eddard's shirt, hmm? Good job, boy. */ EXTERN L#2EDDOG DOG.05
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",5)~THEN REPLY @1656 /* We've goon talking with Eddard about you. Again. It looks like he really likes you! */ EXTERN L#2EDDOG DOG.06
IF~~THEN REPLY @1657 /* Right. Woof. Now, let's move on. */ EXIT

CHAIN L#2EDDOG DOG.03
@1660 /* Woof? *yawn* */
END
IF~~THEN REPLY @1651 /* Who's a good boy? Hmm? */ EXTERN L#2EDDOG DOG.01
IF~~THEN REPLY @1652 /* Hey! I think I have a sausage leftover somewhere here. Here, exactly for one nice bite! */ EXTERN L#2EDDOG DOG.02
IF~~THEN REPLY @1654 /* You smell, Master Barkshield. Quite much! */ EXTERN L#2EDDOG DOG.04
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",2)~THEN REPLY @1655 /* You pissed at Eddard's shirt, hmm? Good job, boy. */ EXTERN L#2EDDOG DOG.05
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",5)~THEN REPLY @1656 /* We've goon talking with Eddard about you. Again. It looks like he really likes you! */ EXTERN L#2EDDOG DOG.06
IF~~THEN REPLY @1657 /* Right. Woof. Now, let's move on. */ EXIT

CHAIN L#2EDDOG DOG.04
@1661 /* Grrr... */
END
IF~~THEN REPLY @1651 /* Who's a good boy? Hmm? */ EXTERN L#2EDDOG DOG.01
IF~~THEN REPLY @1652 /* Hey! I think I have a sausage leftover somewhere here. Here, exactly for one nice bite! */ EXTERN L#2EDDOG DOG.02
IF~~THEN REPLY @1653 /* Hmm, I'm wondering what kind of dog you'll be when you grow up. */ EXTERN L#2EDDOG DOG.03
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",2)~THEN REPLY @1655 /* You pissed at Eddard's shirt, hmm? Good job, boy. */ EXTERN L#2EDDOG DOG.05
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",5)~THEN REPLY @1656 /* We've goon talking with Eddard about you. Again. It looks like he really likes you! */ EXTERN L#2EDDOG DOG.06
IF~~THEN REPLY @1657 /* Right. Woof. Now, let's move on. */ EXIT

CHAIN L#2EDDOG DOG.05
@1662 /* Woof! Woof! *howls* *panting* */
END
IF~~THEN REPLY @1651 /* Who's a good boy? Hmm? */ EXTERN L#2EDDOG DOG.01
IF~~THEN REPLY @1652 /* Hey! I think I have a sausage leftover somewhere here. Here, exactly for one nice bite! */ EXTERN L#2EDDOG DOG.02
IF~~THEN REPLY @1653 /* Hmm, I'm wondering what kind of dog you'll be when you grow up. */ EXTERN L#2EDDOG DOG.03
IF~~THEN REPLY @1654 /* You smell, Master Barkshield. Quite much! */ EXTERN L#2EDDOG DOG.04
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",5)~THEN REPLY @1656 /* We've goon talking with Eddard about you. Again. It looks like he really likes you! */ EXTERN L#2EDDOG DOG.06
IF~~THEN REPLY @1657 /* Right. Woof. Now, let's move on. */ EXIT

CHAIN L#2EDDOG DOG.06
@1663 /* Woof? Woof! */
END
IF~~THEN REPLY @1651 /* Who's a good boy? Hmm? */ EXTERN L#2EDDOG DOG.01
IF~~THEN REPLY @1652 /* Hey! I think I have a sausage leftover somewhere here. Here, exactly for one nice bite! */ EXTERN L#2EDDOG DOG.02
IF~~THEN REPLY @1653 /* Hmm, I'm wondering what kind of dog you'll be when you grow up. */ EXTERN L#2EDDOG DOG.03
IF~~THEN REPLY @1654 /* You smell, Master Barkshield. Quite much! */ EXTERN L#2EDDOG DOG.04
IF~GlobalGT("L#2EddardDogTalk1","GLOBAL",2)~THEN REPLY @1655 /* You pissed at Eddard's shirt, hmm? Good job, boy. */ EXTERN L#2EDDOG DOG.05
IF~~THEN REPLY @1657 /* Right. Woof. Now, let's move on. */ EXIT

//FRIENDSHIP 3 (Yaga Entrance)

CHAIN IF ~Global("L#2EDThroneFTalk3","GLOBAL",1)~ THEN L#2ED25J F.03.00
@1664 /* An entrance inside the mountain. Well, I have a feeling we're sweat ourselves to death in there. */
END
IF~Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @1665 /* Perhaps I'll help you clean later. Or maybe we'll just bathe together... */ EXTERN L#2ED25J F.03.0R
IF~~THEN REPLY @1666 /* Eh, I too have a bad feeling about this. And bad feeling I mean that I think there may some powerful enemies in there. */ EXTERN L#2ED25J F.03.01
IF~~THEN REPLY @1667 /* Oh, come on, Eddard! Where's your spirit. It's not like you some sweat is going to kill us! */ EXTERN L#2ED25J F.03.02
IF~~THEN REPLY @1396 /* We don't have time for talks. We should move on. */ EXTERN L#2ED25J F.03.03

CHAIN L#2ED25J F.03.0R
@1668 /* Mmm, perhaps that wouldn't be a bad idea. And if we have a sponge, we could clean ourselves and we could take some ale with us, have a drink while relaxing. But I guess I'm daydreaming again! */
EXTERN L#2ED25J F.03.04

CHAIN L#2ED25J F.03.01
@1669 /* Mmm. Most probably. It's not like Yaga-Shura would leave this place unprotected. I wouldn't. Let's just hope it's not some sweat elemental. Hah. That one would be a pain in the back, I guess. */
EXTERN L#2ED25J F.03.04

CHAIN L#2ED25J F.03.02
@1670 /* Of course not, unless we find a... sweat elemental in there. Hah. That one would be a pain in the back, I guess. */
EXTERN L#2ED25J F.03.04

CHAIN L#2ED25J F.03.04
@1671 /* Anyway, it's not like I don't want to get in there. I do. I want things to be right. But I have my right to whine every now and then, between the pushups and killing monster, undead and other "adorable" creatures like that. */
==L#2ED25J IF ~Global("L#2EddardHasADog","GLOBAL",1)~ THEN @1672 /* By the way, if we encounter some more skeletons, I'm taking one bone for Master Barkshield. He could use a toy, right? *woof* */
==L#2ED25J IF ~Global("L#2EddardHasADog","GLOBAL",1)~ THEN @1673 /* But that's a general note, I wouldn't expect Yaga-Shura to keep THAT kinds of monsters in there. */
==L#2ED25J @1674 /* But no matter what or who we'll find inside, I hope we'll find a way to calm everyone down. */
END
IF~~THEN REPLY @1675 /* There are some people that can't be calmed down. Some may have went too far with the fight, and anger, and it may be too late for them. */ EXTERN L#2ED25J F.03.05
IF~~THEN REPLY @1676 /* I too believe we can still make things right and make them lower down their weapons. Not everything has to be solved with blades and arrows. */ EXTERN L#2ED25J F.03.06
IF~~THEN REPLY @1677 /* I don't know what may happen and truth to be told, I don't want to think about all these possible scenarios. */ EXTERN L#2ED25J F.03.07
IF~~THEN REPLY @1678 /* We don't have time for this. Let's just move on. */ EXTERN L#2ED25J F.03.03

CHAIN L#2ED25J F.03.05
@1679 /* You may be right. But that doesn't mean we shouldn't try. */
EXTERN L#2ED25J F.03.08

CHAIN L#2ED25J F.03.06
@1680 /* True. However, the final decision will be for those holding them to make. */
EXTERN L#2ED25J F.03.08

CHAIN L#2ED25J F.03.07
@1681 /* That's... probably healthy. */
EXTERN L#2ED25J F.03.08

CHAIN L#2ED25J F.03.08
@1682 /* Anyway, we shouldn't stay here more than it's needed so let's see if we've got everything we need and let's move on. */
DO ~SetGlobal("L#2EDThroneFTalk3","GLOBAL",2)~ EXIT

CHAIN L#2ED25J F.03.03
@1683 /* Mhm. Right. I'm right behind you. */
DO ~SetGlobal("L#2EDThroneFTalk3","GLOBAL",2)~ EXIT

//FRIENDSHIP 4 (Saradush Destroyed)

CHAIN IF ~Global("L#2EDThroneFTalk4","GLOBAL",2)~ THEN L#2ED25J F.04.00
@1684 /* Saradush is... destroyed. We couldn't make it in time... */
END
IF~~THEN REPLY @421 /* ... */ EXTERN L#2ED25J F.04.01
IF~~THEN REPLY @1685 /* We were too late, yes. */ EXTERN L#2ED25J F.04.01
IF~~THEN REPLY @1686 /* We knew it could end that way, Eddard. */ EXTERN L#2ED25J F.04.01
IF~~THEN REPLY @1687 /* Who cares? Let's be honest, we didn't even know them. */ EXTERN L#2ED25J F.04.01

CHAIN L#2ED25J F.04.01
@1688 /* (Eddard doesn't seem to listen. He looks as if he drowned head-deep in his thoughts.) */
==L#2ED25J IF ~Global("L#2EddardHasADog","GLOBAL",1)~ THEN @1689 /* (What you however notice, is that he's holding the Master Barkshield tight, yet the puppy seems calm. Barkshield looks at Eddard and it seems to understand that Eddard is sad.) */
==L#2ED25J IF ~Global("L#2EddardHasADog","GLOBAL",1)~ THEN @1690 /* At least I save you, pup. One soul, but... it matters. */
==L#2ED25J @1691 /* I think these people believed us. Trusted us. That's why it feels so damn horrible and dark. Cold. I... */
END
IF~~THEN REPLY @1692 /* I'm here, Eddard. */ EXTERN L#2ED25J F.04.02
IF~~THEN REPLY @1693 /* Do you need anything? Maybe you'd like to have some sleep? */ EXTERN L#2ED25J F.04.02
IF~Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @1694 /* (Take his hand and kiss it.) */ EXTERN L#2ED25J F.04.02
IF~~THEN REPLY @1695 /* Stop acting like it was your family who died. */ EXTERN L#2ED25J F.04.02

CHAIN L#2ED25J F.04.02
@1696 /* I'd kill Yaga-Shura and Gromnir ten more time, make them feel the pain they hurt. All so they could feel the pain they caused to these people and... */
==L#2ED25J @1697 /* I suppose we don't always have to bee good. Because they would damn deserve all that pain! */
END
IF~~THEN REPLY @1698 /* Calm dawn, Eddard. */ EXTERN L#2ED25J F.04.03
IF~~THEN REPLY @1699 /* Calm down, Eddard. You're scaring me. */ EXTERN L#2ED25J F.04.03
IF~~THEN REPLY @1700 /* I'd do exactly the same, if that gives you any comfort at all in this situation. */ EXTERN L#2ED25J F.04.04
IF~~THEN REPLY @1701 /* Eddard, there are still others to save, so let's just move on. You know time is crucial. */ EXTERN L#2ED25J F.04.05

CHAIN L#2ED25J F.04.03
@1702 /* I... I'm sorry. Fine. I'll try to calm down. But it's not easy. Not this time. */
EXTERN L#2ED25J F.04.06

CHAIN L#2ED25J F.04.04
@1703 /* Maybe... maybe a bit. It's always good to know that I'm not the only one feeling this. */
EXTERN L#2ED25J F.04.06

CHAIN L#2ED25J F.04.06
@1704 /* I wish we could have saved them. And probably I won't be able to entirely get of the thought that we should have been quicker and swifter and maybe we would have helped to stop the tragedy. But I also remember how I blamed myself for not protecting the caravan. Sometimes things are beyond our powers... */
==L#2ED25J @1705 /* But it doesn't mean we shouldn't mourn them. These people. */
DO ~SetGlobal("L#2EDThroneFTalk4","GLOBAL",3)~ EXIT

CHAIN L#2ED25J F.04.05
@1706 /* Fine. Because we are ALWAYS in a hurry. */
DO ~SetGlobal("L#2EDThroneFTalk4","GLOBAL",3)~ EXIT

//FRIENDSHIP 5 (Amkethran)

CHAIN IF ~Global("L#2EDThroneFTalk5","GLOBAL",2)~ THEN L#2ED25J F.05.00
@1707 /* While this is definitelly not Athkatla or Baldur's Gate, but it's good to know we're not sent only into dungeons, swamps or graveyards. */
END
IF~~THEN REPLY @1708 /* Mhm. Well, let's hope this town won't end up like Saradush. */ EXTERN L#2ED25J F.05.01
IF~~THEN REPLY @1709 /* That's the beauty of adventuring: you see all those places. Places you'd never expect to see. */ EXTERN L#2ED25J F.05.02
IF~~THEN REPLY @1710 /* True. A pity we weren't thrown into a normal city, like Silverymoon, so we could go on a walk, admire architecture, maybe participate in some kind of event. */ EXTERN L#2ED25J F.05.03
IF~~THEN REPLY @1711 /* We don't have time for whining. We should move on. Come. */ EXTERN L#2ED25J F.05.04

CHAIN L#2ED25J F.05.01
@1712 /* Don't even suggest such a thing... */
==L#2ED25J @1713 /* ...maybe it will be best if we just continue walking. */
DO ~SetGlobal("L#2EDThroneFTalk5","GLOBAL",3)~ EXIT

CHAIN L#2ED25J F.05.02
@1714 /* Hah, true. Sorry, I'd usually like it, it's just that... mood. It's been tense for a while, but I'm okay. */
==L#2ED25J IF ~Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN @1715 /* I have you, after all. */
==L#2ED25J @1716 /* Anyway, I suppose we should move on. */ 
DO ~SetGlobal("L#2EDThroneFTalk5","GLOBAL",3)~ EXIT

CHAIN L#2ED25J F.05.03
@1717 /* Oh, that could be insteresting, yes. */
==L#2ED25J IF ~Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN @1718 /* Perhaps I would even take you on a proper date. (wink) Or just... anywhere you'd like. */
==L#2ED25J @1719 /* Anyway, we're here now. And I suppose we should move on. There's some work that's waiting. */ 
DO ~SetGlobal("L#2EDThroneFTalk5","GLOBAL",3)~ EXIT

CHAIN  L#2ED25J F.05.04
@1720 /* Yes, of coirse. Let's get back to work. */
DO ~SetGlobal("L#2EDThroneFTalk5","GLOBAL",3)~ EXIT

//DOG 1 (5 days after finding him)

CHAIN IF ~Global("L#2EddardDogTalk1","GLOBAL",2)~ THEN L#2ED25J D.01.00
@1721 /* Master Barshield! Gods... */
END
IF~~THEN REPLY @1722 /* What's wrong? Something happened? */ EXTERN L#2ED25J D.01.01
IF~~THEN REPLY @1723 /* Why on Nine Hells are you screaming like that?! */ EXTERN L#2ED25J D.01.01
IF~~THEN REPLY @1724 /* Oh-ho. I have a feeling someone's got trouble, hmm? */ EXTERN L#2ED25J D.01.01

CHAIN L#2ED25J D.01.01
@1725 /* He peed on my favorite kerchief. I use it to protect my head from the sun or throat, when the wind get bad. Now, it's going to work only as... urine compress! Agh. */
==L#2SD25J IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1726 /* Bleh. Seriously. Stop planting such images in my brain, Eddard. And take away that bandana. It smells. */
==L#2ED25J @1727 /* I suppose that's the price one must pay for taking care of a still-growin pup. Yes, Barkshield, I'm talking about you and... spare me that look, I know these tricks of yours. */
END
IF~~THEN REPLY @1728 /* Heh. Well. It looks like you'll become a master washerman very soon. */ EXTERN L#2ED25J D.01.02
IF~~THEN REPLY @1729 /* Whatever. Stop slowing us down, we need to move. */ EXTERN L#2ED25J D.01.03

CHAIN L#2ED25J D.01.02
@1730 /* Haha. Very funny. But yes, probably I will. */
==L#2ED25J @1731 /* Unless I want everything to smell with urine and fur. */
END
IF~Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @1732 /* You know, a man caring for a dog, bonding with him, and eventually developping this mutual trust: it can be quite sexy. */ EXTERN L#2ED25J D.01.04
IF~~THEN REPLY @1733 /* Well, it was your choice. And now it's your responsibility. */ EXTERN L#2ED25J D.01.05
IF~~THEN REPLY @1734 /* It's going to get better. He'll grow and start behaving well. */ EXTERN L#2ED25J D.01.05
IF~~THEN REPLY @1735 /* Maybe he just wanted to mark his terriroty? */ EXTERN L#2ED25J D.01.06
IF~~THEN REPLY @1736 /* We don't have time for this. We should move on. */ EXTERN L#2ED25J D.01.03

CHAIN L#2ED25J D.01.04
@1737 /* Then I have a feeling I'll get much sexier very soon, heh. But I also have a feeling he's going to test my patience... eh, I suppose you're worth it, though, you damn backstabber. */
EXTERN L#2ED25J D.01.07

CHAIN L#2ED25J D.01.05
@1738 /* I know, I know. But I could use time time accelleration spell, or something. But... I suppose you're worth it, though, you damn backstabber. */
EXTERN L#2ED25J D.01.07

CHAIN L#2ED25J D.01.06
@1739 /* Well, that kertchief is CERTAINLY my territory. See, little backstabber? It has my scent. Or... it used to have my scent all over it. As for you, <CHARNAME>: please, do not make excuses for him. He's already trying to charm me with that look of his. */
EXTERN L#2ED25J D.01.07

CHAIN L#2ED25J D.01.07
@1740 /* Eh, yes, yes, I still like you, Master Barkshield. But do me a favor and just pee on someone else's belongigns. Even <CHARNAME>'s. */
END
IF~~THEN REPLY @1741 /* Hey! */ EXTERN L#2ED25J D.01.08
IF~~THEN REPLY @1742 /* If he even tries, he's out. I'm not joking. */ EXTERN L#2ED25J D.01.09
IF~~THEN REPLY @1743 /* I bet he preffers peeing on your things. They must remind him of you! */ EXTERN L#2ED25J D.01.10

CHAIN L#2ED25J D.01.08
@1744 /* I'm joking. I do have a sense of humor, keep up, please. Heh... */
==L#2ED25J @1745 /* Anyway, it's time to move on. Right? */
DO ~SetGlobal("L#2EddardDogTalk1","GLOBAL",3)~ EXIT

CHAIN L#2ED25J D.01.09
@1746 /* Wooh! No need to be that hostile, <CHARNAME>. It was just a joke. */
DO ~SetGlobal("L#2EddardDogTalk1","GLOBAL",3)~ EXIT

CHAIN L#2ED25J D.01.10
@1747 /* And that's obviously enough to excuse that... incident, hmm? Eh, nevermind. Let's just move on. */
DO ~SetGlobal("L#2EddardDogTalk1","GLOBAL",3)~ EXIT

CHAIN L#2ED25J D.01.03
@1748 /* Mhm. Fine, just let me clean after my dog and we can move on. */
DO ~SetGlobal("L#2EddardDogTalk1","GLOBAL",3)~ EXIT

//DOG 2 (7 days after D1 finding him)

CHAIN IF ~Global("L#2EddardDogTalk1","GLOBAL",5)~ THEN L#2ED25J D.02.00
@1749 /* Hmm, I think he already got slightly bigger. That's... fascinating. */
END
IF~~THEN REPLY @1750 /* Dogs grow quite fast, I think. */ EXTERN L#2ED25J D.02.01
IF~~THEN REPLY @1751 /* I think it's just your imagination. */ EXTERN L#2ED25J D.02.01
IF~~THEN REPLY @1752 /* I think you're making this up. Are you fishing for some attention? */ EXTERN L#2ED25J D.02.01
IF~~THEN REPLY @1753 /* We don't have time for this. Let's just move. Please. */ EXTERN L#2ED25J D.02.02

CHAIN L#2ED25J D.02.01
@1754 /* Come, this paw was... that big. And now it's like that. See? Fascinating. */
END
IF~~THEN REPLY @1755 /* Heh. You really like him, don't you? */ EXTERN L#2ED25J D.02.03
IF~~THEN REPLY @1756 /* I don't have time for this. Let's move on. Now. */ EXTERN L#2ED25J D.02.02

CHAIN L#2ED25J D.02.03
@1757 /* I do. Yes. I think of him as of a good friend already. */
==L#2ED25J @1758 /* As I mentioned when we found him: he reminded me of myself when I... felt really bad. When I was in this dark place. Not just literally, but with my thoughts and hard and I know how difficult it was. When I got capture I was treated like a dog myself. Not like those pups in good houses, no. More like a... stray thing most people despise or ignore. */
==L#2ED25J @1759 /* But now it's better. For both him and me. And I think that's good. I know I did a good thing. */ 
END
IF~~THEN REPLY @1760 /* I suppose I agree. */ EXTERN L#2ED25J D.02.04
IF~~THEN REPLY @1761 /* No wonder you already got attached to him. I think it was more than an impulsive idea. And I think the two of you match eachother. */ EXTERN L#2ED25J D.02.04
IF~~THEN REPLY @1762 /* I still believe it may be hard for you, to take care of him while working. */ EXTERN L#2ED25J D.02.05
IF~~THEN REPLY @1763 /* We need to move on. Come. The sooner, the better. */ EXTERN L#2ED25J D.02.02  

CHAIN L#2ED25J D.02.04
@1764 /* Good. That's... good, I guess. Heh. */
DO ~SetGlobal("L#2EddardDogTalk1","GLOBAL",6)~ EXIT

CHAIN L#2ED25J D.02.05
@1765 /* We'll make it work. I really think that's possible. It can't be harder than fighting demons. */
DO ~SetGlobal("L#2EddardDogTalk1","GLOBAL",6)~ EXIT

CHAIN L#2ED25J D.02.02
@1766 /* Right. Sorry. Let's go. */
DO ~SetGlobal("L#2EddardDogTalk1","GLOBAL",6)~ EXIT

//Romance sleep (after False Gorion)

CHAIN IF ~Global("L#2EddardNastyGorion","GLOBAL",5)~ THEN L#2ED25J R.01.00
@1767 /* <CHARNAME>, I think I could use some company... if you don't mind, of course. */
END
IF~~THEN REPLY @1768 /* Sure. I suppose I need it too. */ EXTERN L#2ED25J R.01.01
IF~~THEN REPLY @1769 /* Sure. I'll happily accompany you, Eddard. */ EXTERN L#2ED25J R.01.01
IF~~THEN REPLY @1770 /* I... can't. Look, it's beed some hard time and I think I should be alone now. I'm... sorry. That's going to be better. */ EXTERN L#2ED25J R.01.02

CHAIN L#2ED25J R.01.01
@1771 /* I suppose it must have been hard for you too. Gorion. Jackly. All that... shadows and fighting for our lives, just after they said these things. */
==L#2ED25J @1772 /* I tried to do some pushups, work out a bit, do anything just to think about something else, to get my body tired, but I'm still thinking about this. And I realize it could have been the same for you. Perhaps it still is. */
==L#2ED25J @1773 /* So... how are you feeling? */ 
END
IF~~THEN REPLY @1774 /* I'm fine. I suppose. */ EXTERN L#2ED25J R.01.03
IF~~THEN REPLY @1775 /* Better than I thought I would feel, actually. */ EXTERN L#2ED25J R.01.03
IF~~THEN REPLY @1776 /* Not too well. I think I'm still shaking when I think about this. */ EXTERN L#2ED25J R.01.04
IF~~THEN REPLY @1777 /* Shattered. I'm feeling shattered, Eddard... */ EXTERN L#2ED25J R.01.04
IF~~THEN REPLY @1778 /* I'm more concerned with you, actually. */ EXTERN L#2ED25J R.01.05
IF~~THEN REPLY @1779 /* Look, this... isn't working out. I think I should be alone now. I'm sorry. */ EXTERN L#2ED25J R.01.02

CHAIN L#2ED25J R.01.03
@1780 /* Oh. Right. That's good. I'm happy to hear that. */
END
IF~~THEN REPLY @1781 /* No, actually... I't not feeling good. I'm feeling horrible. */ EXTERN L#2ED25J R.01.04
IF~~THEN REPLY @1782 /* ...but you look somehow pale. I'm a bit concerned, Eddard. */ EXTERN L#2ED25J R.01.05
IF~~THEN REPLY @1783 /* Look, Eddard. This isn't working out. I think I should be alone now. I'm sorry. */ EXTERN L#2ED25J R.01.02

CHAIN L#2ED25J R.01.04
@1784 /* I understand. I was afraid you may feel that way, so... I'm here. */
EXTERN L#2ED25J R.01.06

CHAIN L#2ED25J R.01.05
@1785 /* As I said, this experience was far from good. But What cheers me up is... that you're here. I'm already feeling slightly better. */
EXTERN L#2ED25J R.01.06

CHAIN L#2ED25J R.01.06
@1786 /* It's been a while since we sat like that. But I still remember our first time. Heh. I guess that sound, how my friend would call it, "cheesy". Sembian smelly cheese level of "cheesy". */
==L#2ED25J @1787 /* Sorry. (smiles and takes your hand) */
END
IF~~THEN REPLY @1788 /* I think we should get under that blanket and just rest. Together. */ EXTERN L#2ED25J R.01.07
IF~~THEN REPLY @1789 /* I think I could use some pleasure and fun. And you're the best company I could imagine. What say you? */ EXTERN L#2ED25J R.01.08
IF~~THEN REPLY @1790 /* This isn't working out. I think I should be alone now. I'm sorry. (take your hand back) */ EXTERN L#2ED25J R.01.02

CHAIN L#2ED25J R.01.07
@1791 /* That's not a bad idea... */
==L#2ED25J @1792 /* (You stand up and pepare yourself to have some rest, after this long day. A moment later you both lie under your blankets, feelingh eachother's warmth, scent, breath. For a moment he actually purrs like a cat, but you don't think he even noticed that. He just embraced you stronger, as if he wanted to make sure, you won't run away.) */
DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",6) RestParty()~ EXIT

CHAIN L#2ED25J R.01.08
@1793 /* I think that's a very good idea. */
==L#2ED25J @1794 /* (It doesn't take you long to underss yourself. And Eddard doesn't wait much longer too. You both taste eachoter, kiss: not just lips, but also neck and the taste of this kisses is like before, giving this... warmth feeling of being in a safe space, yet far from boring.) */
==L#2ED25J @1795 /* (He start kissing your chest, you stomach, going lower, without a slightest spark of hesitation. He looks at you, bites playfully your hip, to tease you just a little bit.) */
==L#2ED25J @1796 /* (You spend pleasing moments together, until both of you fall asleep, skin by skin.) */
DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",6) RestParty()~ EXIT

CHAIN L#2ED25J R.01.02
@1797 /* I understand and... I'm sorry if I did something. But... I understand your decision. I'll leave you be. */
DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",6) SetGlobal("L#2EddardRomanceActive","GLOBAL",3) RestParty()~ EXIT

//Romance after-sleep (when wake up)

CHAIN IF ~Global("L#2EddardNastyGorion","GLOBAL",6) Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN L#2ED25J R.02.00
@1798 /* Mmm. Hello. */
END
IF~~THEN REPLY @1799 /* Hellow to you too, Eddard. */ EXTERN L#2ED25J R.02.01
IF~~THEN REPLY @1800 /* (Just kiss his bearded cheek.) */ EXTERN L#2ED25J R.02.01
IF~~THEN REPLY @1801 /* This... was a mistake, Eddard. We should... split. I'm sorry. I'm not feeling it anymore. */ EXTERN L#2ED25J R.02.02

CHAIN L#2ED25J R.02.01
@1802 /* I needed that. And... I needed you. I'm so glad we're still together. That we made it happen. */
END
IF~~THEN REPLY @1803 /* I'm glad too, Eddard. */ EXTERN L#2ED25J R.02.03
IF~~THEN REPLY @1804 /* It's feeling so good to wake up next by you. */ EXTERN L#2ED25J R.02.03
IF~Global("L#2EddardHasADog","GLOBAL",1)~THEN REPLY @1805 /* It's feeling so good to wake up next by you. Even if you had a slightly doggy breath every now and then. */ EXTERN L#2ED25J R.02.04
IF~~THEN REPLY @1806 /* This... was a mistake, Eddard. We should... split. I'm not feeling it anymore. */ EXTERN L#2ED25J R.02.02

CHAIN L#2ED25J R.02.03
@1807 /* The feeling's mutual then. */
EXTERN L#2ED25J R.02.05

CHAIN L#2ED25J R.02.04
@1808 /* Hey! And... hush, Master Barkshield may hear you. (winks) */
EXTERN L#2ED25J R.02.05

CHAIN L#2ED25J R.02.05
@1809 /* Heh. These moments are worth waiting for. Worth the fighting. And I guess they're a proof it all makes sense. All that effort. */
==L#2ED25J @1810 /* Anyway, I'll get up. While I do, you can enjoy the view of my buttcheeks, but don't take too long, <CHARNAME>, as we may need to move on, soon. */
==L#2ED25J @1811 /* And again... thank you. For everything. And for who you are. */
DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",7)~ EXIT

CHAIN L#2ED25J R.02.02
@1812 /* I... didn't know you feel that way. But... I understand. If that's your decision, I'll respect it. */
DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",7) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//FINAL (After all trials)

CHAIN IF ~Global("L#2EddardFinalTalkToB","GLOBAL",2)~ THEN L#2ED25J F.0F.00
@1813 /* We're almost there, <CHARNAME>. If... if everything goes well, one day, and it all may be over. Maybe even sooner. Gods, that's a strange feeling. */
END
IF~~THEN REPLY @1814 /* Yes. It's somehow... unbelievable. */ EXTERN L#2ED25J F.0F.01
IF~~THEN REPLY @1815 /* Yes. And I fought for it for so long! */ EXTERN L#2ED25J F.0F.01
IF~~THEN REPLY @1816 /* We don't have time for this. We should move on. As you said, it's almost over. */ EXTERN L#2ED25J F.0F.02

CHAIN L#2ED25J F.0F.01
@1817 /* I must say, that joining you was the best thing that ever happened to you. */
==L#2ED25J IF ~Global("L#2EddardHasADog","GLOBAL",1)~ THEN @1818 /* No need to be jealous, Master Barkshield! You are part of this, too. Part of me being here. Part of this adventure. */
==L#2SD25J IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1819 /* Hello? I'm here too! */
==L#2ED25J IF ~InParty("L#2SDSkie") !Dead("L#2SDSkie")~ THEN @1820 /* I know you are and... I met <CHARNAME> thanks to you, sis. */
==L#2ED25J @1821 /* I become a better man. Stronger. Nicer. More experienced. It's more than any tutor could ever give me, so... I guess father overpriced them a bit. On the other hand, they did all they could. */
==L#2ED25J @1822 /* But with you. Heh. It's so much more. An entirely different world. Richer world. */
END
IF~Global("L#2EddardRomanceActive","GLOBAL",2)~THEN EXTERN L#2ED25J F.0F.R1
IF~!Global("L#2EddardRomanceActive","GLOBAL",2)~THEN EXTERN L#2ED25J F.0F.NR1

CHAIN L#2ED25J F.0F.R1
@1823 /* Everything's richer with you. Every taste is more intense. That's why I love you and I hope that... what we have will go beyond this. Beyond the fight that's to come. */
==L#2ED25J @1824 /* I trust you. You can wake me up as no one else. And we can talk, kiss, have sex and cook. */
==L#2ED25J @1825 /* How much does it mean tou you? Would... would you mind telling me? */ 
END
IF~~THEN REPLY @1826 /* I means a world to me. */ EXTERN L#2ED25J F.0F.R2
IF~~THEN REPLY @1827 /* You are way too good lover to just end it here! (wink) */ EXTERN L#2ED25J F.0F.R2
IF~~THEN REPLY @1828 /* We are not continuing when this is over. I am sorry, but we can't. */ EXTERN L#2ED25J F.0F.R3

CHAIN L#2ED25J F.0F.R2
@1829 /* Hah. Well... thank you? I'm not sure what to say, but know that my heart is pounding damn hard right now. */
==L#2ED25J @1830 /* But it's good. It's the good kind of pounding. The one that proves it's all serious. And real. */
EXTERN L#2ED25J F.0F.F1

CHAIN  L#2ED25J F.0F.NR1
@1831 /* You are a good friend. One that I will not leave. One that I will support until it's a clear win. */
END
IF~~THEN REPLY @1832 /* Thank you, Eddard. */ EXTERN L#2ED25J F.0F.NR2
IF~~THEN REPLY @1833 /* Mhm. Anyway, we should just move on. The sooner we end this, the better. */ EXTERN L#2ED25J F.0F.02

CHAIN L#2ED25J F.0F.NR2
@1834 /* Always at your service! */
EXTERN L#2ED25J F.0F.F1

CHAIN L#2ED25J F.0F.F1
@1835 /* Come now. Let's just do what must be done. I'm with you. */
DO ~SetGlobal("L#2EddardFinalTalkToB","GLOBAL",3)~ EXIT

CHAIN L#2ED25J F.0F.R3
@1836 /* It's... good you told me. At least I know I'm not fighting for something that's not real. */
==L#2ED25J @1837 /* But I'll stay anyway. You may still need a fine fighter and a spellcaster. */
DO ~SetGlobal("L#2EddardFinalTalkToB","GLOBAL",3) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

CHAIN L#2ED25J F.0F.02
@1838 /* Yes. Of course. Let's go. I'm right behind you. Until the end. */
DO ~SetGlobal("L#2EddardFinalTalkToB","GLOBAL",3)~ EXIT

/////////////////////////////////////
/////////////////////////////////////
////////// GORION'S WRAITH //////////
/////////////////////////////////////
/////////////////////////////////////

//part 1: doubt

EXTEND_BOTTOM HGWRA01 18
  IF ~Global("L#2EddardRomanceActive","GLOBAL",2) InParty("L#2EDDRD")~ DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",1)~ EXTERN HGWRA01 L#2ED.NGR.00
END

CHAIN HGWRA01 L#2ED.NGR.00
  @1839 /* You hurt those around you, you make the fight monsters, even they barely escaped their own demons. Look at him. Look at Eddard. */
  == L#2ED25J @1840 /* But... I'm here because of my own volition. I truly am, so stop telling these lies, they're not working. */
  == HGWRA01 @1841 /* You say you are here because that's what you want, but you alre so vulnerable. Just like you were that day. */
  == L#2ED25J @1842 /* What day? What are you speaking of?! */
  == HGWRA01 @1843 /* You know exactly which day. */
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
  IF ~Global("L#2EddardRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("L#2EDNGR")~ EXIT
END

//part 2: the blow

CHAIN IF ~Global("L#2EddardNastyGorion","GLOBAL",1)~ THEN L#2EDJCK L#2ED.JACKLY.1
  @1844 /* You look so much better than the day that they throw you into that prison. I had to stay with you for a while. You still remember that, Eddard? Do you still remember... me? */
  == L#2ED25J @1845 /* J-Jackly...? */
  == L#2EDJCK @1846 /* You still do. That's good. I thought I'm nothing to you? */
  == L#2EDJCK @1847 /* I took care of you. I did all I could even though I was suffering too. I protected you, when you were so vulnerable. Scared. Naked. Crouched in the corner. */
  == L#2EDJCK @1848 /* So I took pity over you. Because that's what you wanted, no? I gave you hope. But now... now <PRO_HESHE>'s doing it, hmm? He's the one to protect you and say that "everything's going to be alright"... even if it's not.  */
  == L#2ED25J @1849 /* Jackly, you helped me, you too wanted that and... we were friends! We were so many things— */
  == L#2EDJCK @1850 /* Friends? Or pehaps brothers? Companions? Or maybe you loved me, just a little bit? */
  == L#2EDJCK @1851 /* When I was being taken away you just looked! You did nothing. You didn't even try! That's how you paid me back for all that help! */
  == L#2EDJCK @1852 /* Yes. We were many things. I was many things. Your little weeping cloth. That's what I was... and then... when taken... I stopped mattering. */
  == L#2ED25J @1853 /* Jackly, you always mattered. You still do. I am grateful for all you did, for everything. If I could, I would show you how much that meant to me. */
  == L#2EDJCK @1854 /* You're already doing it. You're showing me how little I always meant to you. And you're helping a Bhaalspawn. A Child of Bhaal. Can you even hear how that sounds? */
  == L#2EDJCK @1855 /* You got something I never got. A second chance to live. To feel freedom. And you're risking it EVERY DAMN HOUR! */
  == L#2EDJCK @1856 /* But... maybe you're still that naked crouched boy in the corner. Perhaps you're too afraid of the freedom you got? Of being alone? Maybe you need <PRO_HIMHER> to be there. So you felt there is hope. To believe there is purpose. */
  == L#2EDJCK @1857 /* That is what you are: little crouched thing. Poor boy. I pity you. I truly do. */
  == L#2ED25J @421 /* ... */
END
  ++ @1858 /* Stop listening to this, Eddard! It's all lies. You are strong. Stronger than ever. */ DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ @1859 /* Eddard, what we do is important. You are important. And I love you. You're not like in the image they're truing to paint! */ DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ @1860 /* You really believe that thing, Eddard? Seriously? That is such an obvious trap. They're just trying to shatter you with some... tricks! */ DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ @1861 /* End it now, monster. It's enough. */ DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",2)~ EXTERN HGWRA01 25

//part 3: when the party's over

CHAIN IF ~Global("L#2EddardNastyGorion","GLOBAL",2) !See([ENEMY])~ THEN L#2ED25J NGR.POST.00
@1862 /* I... I am sorry, <CHARNAME>... for that second of doubt. Gods, I think it's over... I certainly hope it is. */
END
IF~~THEN REPLY @1863 /* I am sorry you had to go through this, Eddard. */ EXTERN L#2ED25J NGR.POST.01
IF~~THEN REPLY @1864 /* This were all lies, you know that right? */ EXTERN L#2ED25J NGR.POST.01
IF~~THEN REPLY @1865 /* We don't have time for talks. Let's move on. */ EXTERN L#2ED25J NGR.POST.02

CHAIN L#2ED25J NGR.POST.01
@1866 /* I know. But there were these... grains of truth in there. I was scared. And I clinged to Jackly, because I was afraid I won't make it. And when they were taking him away, I... did nothing. But I really hoped he's getting a chance to live a better life! Anything was better than being in that cage! But... maybe I'm just making excuses for myself...? */
==L#2ED25J @1867 /* What if that's what it is? */
END
IF~~THEN REPLY @1868 /* What I hear is a hope that your friend is safe and sound. */ EXTERN L#2ED25J NGR.POST.03
IF~~THEN REPLY @1869 /* We don't have time for this. Pull yourself together. We need to move on, Eddard. */ EXTERN L#2ED25J NGR.POST.02

CHAIN L#2ED25J NGR.POST.03
@1870 /* Yes. Perhaps that is hope... */
==L#2ED25J @1871 /* The truth is I know I may never see Jackly again, this world is huge and chances we'll end up in same place are low. But if that's the price both he and I need to pay to feel safe, then it's worth it. Otherwise... what would it be? Dwelling the past? Would that be better? */
==L#2ED25J @1872 /* But I do want to remember him. And I choose to believe he's fine. That the woman that took him freed him, or gave him an honest job and the chance to leave if he doesn't want to be there anymore. Or... maybe they become friend? Or he run away and is being the man of his own life too? There are so many options. And we can't rule them out. */
==L#2ED25J @1873 /* <CHARNAME>...? Can they be true? */
END
IF~~THEN REPLY @1874 /* Yes. They can't. */ EXTERN L#2ED25J NGR.POST.04
IF~~THEN REPLY @1875 /* I don't think so, Eddard. */ EXTERN L#2ED25J NGR.POST.02

CHAIN L#2ED25J NGR.POST.04
@1876 /* I... thank you. */
==L#2ED25J @1877 /* And I apolgize for all of that. Of being so soft right now. I suppose I need to just think about something else. Read something. Do some exercises. Or... trying to fix my bag, it has this little hole over here... */
END
IF~~THEN REPLY @1878 /* Right. But I'm here if you need me. */ EXTERN L#2ED25J NGR.POST.05
IF~~THEN REPLY @1879 /* Whatever. Just stop wasting my time and let us move on. */ EXTERN L#2ED25J NGR.POST.02

CHAIN L#2ED25J NGR.POST.05
@1880 /* Of course. I trust you. And I know I can talk you whenever I need it. Thank you. */
DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",3)~ EXIT

CHAIN L#2ED25J NGR.POST.02
@1881 /* So... that's what you think? I see. You know, perhaps... I should be alone now. Leave me. Please. */
DO ~SetGlobal("L#2EddardNastyGorion","GLOBAL",3) SetGlobal("L#2EddardRomanceActive","GLOBAL",3)~ EXIT

//////////////////////////////////////////////////
//////////// VOLO IN THE THRONE OF B./////////////
//////////////////////////////////////////////////

//VOLO

EXTEND_BOTTOM SARVOLO 9 #4
+ ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) !Global("L#2EddardRomanceActive","GLOBAL",2)~ + @1882 /* Tell me about Eddard. */ + L#EddardBio
+ ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) Global("L#2EddardRomanceActive","GLOBAL",2)~ + @1882 /* Tell me about Eddard. */ + L#EddardBioR
END

CHAIN SARVOLO L#EddardBio
@1883 /* Eddard? Of course, Eddard Silvershield. */
== SARVOLO @1884 /* Ekhem, so: Eddard Silvershield, father of Entar Silvershield, the Grand Duke of Baldur's Gate. Many believed he passed, was killed while the Sword Coast was fighting with bandits, but then, he returned. In glory, as he joined <CHARNAME> and decided to show that there is still much to be changed in this world! */
== L#2ED25J @1885 /* Well, that's kind, I guess. But I suppose that also means I need to keep doing all I can to make this world better. Heh. No pressure, Eddard... */
EXTERN SARVOLO 9

CHAIN SARVOLO L#EddardBioR
@1886 /* Eddard? Ah, YOUR Eddard! Of course, of course... */
== SARVOLO @1887 /* Ekhem, so: Eddard Silvershield, father of Entar Silvershield, the Grand Duke of Baldur's Gate, and a close companion of <CHARNAME>. Perhaps even the one that stole <PRO_HISHER> heart. Many believed he passed, was killed while the Sword Coast was fighting with bandits, but then, he returned. In glory, as he joined <CHARNAME> so they could together change this world for better! */
== L#2ED25J @1888 /* Well, that's kind. And it looks like people are already talking about us, <CHARNAME>. I suppose that also means I need to keep helping you with this world's problems. Heh. No pressure, Eddard... But... it should be easy with you, <CHARNAME>. (winks) */
EXTERN SARVOLO 9

//////////////////////////////////////////////////
////////// EPILOGUE IN THE THRONE OF B.///////////
//////////////////////////////////////////////////

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("L#2EDDRD") !Dead("L#2EDDRD") Global("L#2EddardRomanceActive","GLOBAL",2) Global("L#2EddardEpilogueSet","GLOBAL",0)~ EXTERN L#2ED25J L#2EddardSolar000
IF ~InParty("L#2EDDRD") !Dead("L#2EDDRD") !Global("L#2EddardRomanceActive","GLOBAL",2) Global("L#2EddardEpilogueSet","GLOBAL",0)~ EXTERN L#2ED25J L#2EddardSolar0NF
END

CHAIN L#2ED25J L#2EddardSolar000
@1889 /* I suppose I felt in my bones that something like that may come up. You're not an ordinary adventurer, after all. You're Hero of Baldur's Gate. Child of Bhaal. But you're also a <PRO_MANWOMAN> I love and... */
==L#2ED25J @1890 /* Truth to be told, I'd like you to stay. I'd like to live with you, see places. I'd like to return to Baldur's Gate with you, but just for a while, then... then we can go wherever we want. Sembia. Kara-Tur. Anauroch. Silverymoon. There are so many places. */
==L#2ED25J @1891 /* But... that would mean you need to stay. I can't tell you what to do, I can only say what my heart feels. And it tells me that I want to be with you, no matter the circumstances. So we can laugh. Help eachother, when we need it... */
==L#2ED25J @1892 /* ...but I apologize. I'm probably making it harder, but I just can't let this end without telling you how I feel */
END
IF~~THEN REPLY @1893 /* Eddard, you've always been my world. Since the day we met. I want to stay with you. I do not care for the throne. */ DO ~SetGlobal("L#2EddardEpilogueSet","GLOBAL",2)~ + L#2EddardSolar001
IF~~THEN REPLY @1894 /* You're not making it easy, that's true. That power should have been mine from the very beginning... but I'll stay with you. */ DO ~SetGlobal("L#2EddardEpilogueSet","GLOBAL",2)~ + L#2EddardSolar001
IF~~THEN REPLY @1895 /* I'm sorry, Eddard, but I need to follow my own path and it leads me to what should have always been mine. I need to choose that power. */ DO ~SetGlobal("L#2WalahnanEpilogueSet","GLOBAL",4)~ + L#2EddardSolar002

CHAIN L#2ED25J L#2EddardSolar0NF
@1896 /* This must be a hard choice. I'd say you should chose mortality, to be free, see the world and walk it as one of us. But... I also know this power must be so tempting. */
DO ~SetGlobal("L#2EddardEpilogueSet","GLOBAL",1)~
==L#2ED25J @1897 /* I think you should do what you feel is right. What I would do shouldn't determine your decisions. They are yours, not mine. */
END
COPY_TRANS FINSOL01 27

CHAIN L#2ED25J L#2EddardSolar001
@1898 /* <CHARNAME>... I... thank you. I am so glad we can stay together. See the world, feel it. That's all I want. */
END
COPY_TRANS FINSOL01 27

CHAIN L#2ED25J L#2EddardSolar002
@1899 /* I... I see. Perhaps I was foolish to hope you'd chose otherwise. */
END
COPY_TRANS FINSOL01 27


//////////////////////////////////////////
//////////////////////////////////////////
//////////// INTERJECTIONs ///////////////
//////////////////////////////////////////
//////////////////////////////////////////

//SoA

I_C_T YOSHJ 113 L#2EDJ_YOSHj113
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID)~ THEN @1900 /* But... why? Damn, Yoshimo, we worked together! We did our best! */
END

I_C_T PLAYER1 25 L#2EDJ_player25
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1901 /* Well, it looks like Irenicus literally had us dragged to Hell. I wish that was a figure of speech, but... */
END

I_C_T HELLJON 7 L#2EDJ_ThirdBattleWithIrenicus1a
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN @1902 /* This will be over. This day... shall be the fall of Jon Irenicus. */
END

I_C_T HELLJON 8 L#2EDJ_ThirdBattleWithIrenicus1b
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN @1902 /* This will be over. This day... shall be the fall of Jon Irenicus. */
END

I_C_T HELLJON 9 L#2EDJ_ThirdBattleWithIrenicus1c
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN @1902 /* This will be over. This day... shall be the fall of Jon Irenicus. */
END

I_C_T HELLJON 10 L#2EDJ_ThirdBattleWithIrenicus1d
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN @1902 /* This will be over. This day... shall be the fall of Jon Irenicus. */
END

I_C_T UDSILVER 18 L#2EDJ_UDSILVER.18
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1903 /* They really did that? Vile things... */
END

I_C_T TRSKIN06 32 L#2EDJ_TRSKIN06.32
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1904 /* Wait... what? */
END

I_C_T VICONI 2 L#2EDJ_VICONI.2
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1905 /* If we join her, after what happened here, well, there will be a chance we'll be in a centre of attention, but... would anything really change? She can as well come with us. */
END

I_C_T VICG1 4 L#2EDJ_VICG1.4
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1906 /* I know she's a drow, but... they seem the crude and vile ones. It all feels wrong. Twisted. */
END

I_C_T BODHI 6 L#2EDJ_BODHI.6
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1907 /* This alternative feels somehow... dark and cold. But the choice is yours... */
END

I_C_T ARAN 49 L#2EDJ_ARAN.49
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1908 /* Ah... right... */
END

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("L#2EDDRD") InParty("L#2EDDRD") !See([ENEMY]) !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) RandomNum(2,1) Global("L#2EddardDCelvan","AR0300",0)~ THEN CELVAN L#2Eddard_celvan
@1909 /* There was a noble man, enslave and scared,
Who fell despite the silver shield, unheard.
He would dream to escape,
He would keep his faith,
Yet it was a while before his sister finally heard. */
DO ~SetGlobal("L#FaldornDCelvan","AR0300",1)~
== L#2EDJ @1910 /* Wait... what? Was that about me? Ask... Skie? */
EXTERN CELVAN 1

I_C_T MESSEN 4 L#2EDJ_MESSEN.4
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1911 /* Hmm, I think I hear about this Logan Coprith once. I think my uncle mentioned him once. */
END

I_C_T SEWERM1 8 L#2EDJ_SEWERM1.8
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1912 /* Please... Don't. */
END

I_C_T HENDAK 35 L#2EDJ_HENDAK.35
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1913 /* I know much enought to decide I want to help him, <CHARNAME>. I think you know why. */
END

I_C_T LEHTIN 15 L#2EDJ_LEHTIN.15
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1914 /* Barbaric?! Look who's talking! */
END

I_C_T LEHTIN 27 L#2EDJ_LEHTIN.27
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1915 /* You should be happy you're not dead... */
==LEHTIN @1916 /* Leave! */
END

I_C_T PIRCOR02 0 L#2EDJ_PIRCOR02.0
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1917 /* Gods... please, give that poor girl something. */
END

I_C_T PIRCOR02 10 L#2EDJ_PIRCOR02.10
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1918 /* Monsters... True monsters. */
END

I_C_T PIRCOR02 13 L#2EDJ_PIRCOR02.13
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1919 /* I bed you, <CHARNAME>, we should help this girl. She doesn't deserve any of this. */
END

I_C_T PIRCOR02 27 L#2EDJ_PIRCOR02.27
== L#2EDJ IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1920 /* Stay safe. */
==PIRCOR02 @1921 /* I will all I can to do so. */
END

//TOB

I_C_T SARPRO01 0 L#2ED25J_SARPRO01.0
== L#2ED25J IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1922 /* Poor woman. Standing in all that chaos, hoping to survive, doing... what she does. I wish she didn't have to go through all of this... */
END

I_C_T SARWAI01 0 L#2ED25J_SARWAI01.0
== L#2ED25J IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1923 /* There must be a way to help her. As for that man... he and those alike disgust me... */
END

EXTEND_BOTTOM SARPROVF 0 #4
IF ~PartyGoldGT(49) !Global("ToldVampires","GLOBAL",1) InParty("L#EDDRD") !StateCheck("L#EDDRD",CD_STATE_NOTVALID) Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN REPLY @1924 /* Sounds good to me! */ DO ~TakePartyGold(50)~ EXTERN L#2ED25J L#2EddardVam.Sar.00
END

CHAIN L#2ED25J L#2EddardVam.Sar.00
@1925 /* Hmm, I'm not sure why are you doing this and if it's for real. This is all very weird, and... I have a bad feeling about this. All of this. */
EXTERN SARPROVF 1

EXTEND_BOTTOM SARPROVM 0 #4
IF ~PartyGoldGT(49) !Global("ToldVampires","GLOBAL",1) InParty("L#EDDRD") !StateCheck("L#EDDRD",CD_STATE_NOTVALID) Global("L#2EddardRomanceActive","GLOBAL",2)~ THEN REPLY @1924 /* Sounds good to me! */ DO ~TakePartyGold(50)~ EXTERN L#2ED25J L#2EddardVam.Sar2.00
END

CHAIN L#2ED25J L#2EddardVam.Sar2.00
@1926 /* Eh... I'm not sure why are you doing this and if it's for real. This is all very weird, and... I have a bad feeling about this. All of this. */
EXTERN SARPROVM 1

I_C_T YAGCON 0 L#2ED25J_YAGCON.0
== L#2ED25J IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1927 /* Gods... what's this? Why is this woman chained? We must help her. */
END

I_C_T YAGCON 5 L#2ED25J_YAGCON.5
== L#2ED25J IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1928 /* <CHARNAME>, please! */
END

I_C_T YAGCON 4 L#2ED25J_YAGCON.4
== L#2ED25J IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1929 /* We should help her, no matter if she's speaking the truth or not! */
END

I_C_T YAGCON 6 L#2ED25J_YAGCON.6
== L#2ED25J IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1930 /* We're not leaving her like that. Please, just... listen to me. We should free her now. */
END

I_C_T AMCARRAS 3 L#2ED25J_AMCARRAS.3
== L#2ED25J IF ~InParty("L#2EDDRD") !StateCheck("L#2EDDRD",CD_STATE_NOTVALID) InMyArea("L#2EDDRD")~ THEN
@1931 /* That name... it has this familiar ring to it. */
END
