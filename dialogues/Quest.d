//STEP #1 - IMOEN (OPTIONAL) 

CHAIN IF WEIGHT #-5 ~Global("L#2SkieDaggerImoen","GLOBAL",1)~ THEN IMOENJ L#DAG00 
@0 /* Wait... Is that the... Soultaker? <CHARNAME>, that's the blade our captor must have used to take away Skie's soul! */ 
END 
IF~~THEN REPLY @1 /* But it's broken. Something must have happened to it. */ EXTERN IMOENJ L#DAG01 
IF~~THEN REPLY @2 /* He damaged it, though... Perhaps Irenicus destroyed it to prevent us from saving Skie. */ EXTERN IMOENJ L#DAG01 
IF~~THEN REPLY @3 /* So what? We're not going back to Baldur's Gate and I never really cared about that reckless girl. */ EXTERN IMOENJ L#DAG02  
IF~~THEN REPLY @4 /* That girl deserved that. She would always get us into trouble. */ EXTERN IMOENJ L#DAG02 

CHAIN IMOENJ L#DAG01 
@5 /* The blade is crooked, but maybe there is still a chance? */ 
EXTERN IMOENJ L#DAG03 

CHAIN IMOENJ L#DAG02 
@6 /* That's not something I would expect my childhood friend to say... */ 
==IMOENJ @7 /* I still remember how you saved me a couple of times. Remember when I got cut just after I broke the window in the library? You took me to Gorion and they would take care of the shattered glass in my arm. */ 
==IMOENJ @8 /* We should at least try to save her... The blade is crooked, but maybe there is still a chance? */ 
EXTERN IMOENJ L#DAG03 

CHAIN IMOENJ L#DAG03 
@9 /* Let's just take it and look for help when we're out of this place, okay? We owe her that. */ 
END 
IF~~THEN REPLY @10 /* Fine. We should find someone who will help us to free her soul. But first things first: let's leave this damn plane. */ EXTERN IMOENJ L#DAG04 
IF~~THEN REPLY @11 /* I'm not going to waste any more time on her. They banished us. Now they're on their own. (throw away the dagger) */ EXTERN IMOENJ L#DAG05 

CHAIN IMOENJ L#DAG04 
@12 /* Right. Come, <CHARNAME>. I want to leave this place behind as soon as possible... */ 
DO ~SetGlobal("L#2SkieDaggerImoen","GLOBAL",2)~ EXIT 

CHAIN IMOENJ L#DAG05 
@13 /* No! I... I thought you were different, <CHARNAME>... */ 
==IMOENJ @14 /* I think I have nothing else to tell you now... Please, let's just leave this place... */ 
DO ~SetGlobal("L#2SkieDaggerImoen","GLOBAL",50) TakePartyItem("L#2SDA1") DestroyItem("L#2SDA1")~ EXIT 

//STEP #2 - RIBALD 

EXTEND_TOP ~RIBALD~ 0 
IF~Global("L#2SkieDagger","GLOBAL",1)~THEN REPLY @15 /* I'm looking for someone who could help me with a dagger -- the Soultaker. It trapped a soul of someone I knew. */ EXTERN RIBALD L#2SDAG-RIBALD-00 
END 

CHAIN RIBALD L#2SDAG-RIBALD-00 
@16 /* The Soultaker? I heard about it. */ 
==RIBALD @17 /* I would normally ask one of my customers but not this time. If it was about lifting a curse or about old archaeological sites, then maybe she could help... */ 
==RIBALD @18 /* I may ask some people, but you should keep searching for someone else, meanwhile. This dagger you want to play with, it's dangerous and working with it demands specific knowledge. */ 
==RIBALD @19 /* Good luck and visit Adventurer's Mart whenever you need high quality merchandise. */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",2)~ EXIT 

//STEP #3 - BRELM 

CHAIN IF WEIGHT #-5 ~Global("L#2SkieDagger","GLOBAL",3)~ THEN BRELM L#DAG-BRELM-00 
@20 /* Hey! We should do some talkin'! I heard what ye said to my ol' chap - Ribald. I think I know someone ye should talk to. Ye know, 'bout that dagger ye have. */ 
END 
IF~~THEN REPLY @21 /* Really? Tell me then. It's really important. */ EXTERN BRELM L#DAG-BRELM-02 
IF~~THEN REPLY @22 /* I'm all ears. So? Who are you talking about? */ EXTERN BRELM L#DAG-BRELM-02 
IF~~THEN REPLY @23 /* Is that information going to cost me much? */ EXTERN BRELM L#DAG-BRELM-01 

CHAIN BRELM L#DAG-BRELM-01 
@24 /* Nah, I'm doin' it because I want to. */ 
EXTERN BRELM L#DAG-BRELM-02 

CHAIN BRELM L#DAG-BRELM-02 
@25 /* I have a friend in the Slums. Quite smart friend, ye know. She studied some books 'bout stuff like that. 'Bout blades. Souls. Ol' magic. That kind of hoodoo. */ 
==BRELM @26 /* Her name's Nem. She has a friend there. */ 
END 
IF~~THEN REPLY @27 /* Anything else I should know? */ EXTERN BRELM L#DAG-BRELM-03 
IF~~THEN REPLY @28 /* Why are you helping me? */ EXTERN BRELM L#DAG-BRELM-04 
IF~~THEN REPLY @29 /* Thank you for telling me. You may have just saved an innocent girl. */ EXTERN BRELM L#DAG-BRELM-05 

CHAIN BRELM L#DAG-BRELM-03 
@30 /* Nah. Just go and find her. I know people like ye are always in a hurry, hah. */ 
EXTERN BRELM L#DAG-BRELM-06 

CHAIN BRELM L#DAG-BRELM-04 
@31 /* Hah! Because I can, ye know. Athkatla isn't a bad place, but can still be better. Helpin' is better than waitin' for good stuff to happen on their own. */ 
EXTERN BRELM L#DAG-BRELM-06 

CHAIN BRELM L#DAG-BRELM-05 
@32 /* That's good, right? Heh, of course it's good. */ 
EXTERN BRELM L#DAG-BRELM-06 

CHAIN BRELM L#DAG-BRELM-06 
@33 /* Okay, okay. It's time for Brelm to go back inside, now. Have fun with that dagger and everything. */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",4) EscapeArea()~ EXIT 

//STEP #4 - NEM 

BEGIN L#2SDNEM 

CHAIN IF ~NumTimesTalkedTo(0) Global("L#2SkieDagger","GLOBAL",6)~ THEN L#2SDNEM NEM-01-00 
@34 /* I'm sorry, but do I know you? No, I don't think I know you... */ 
END 
IF~~THEN REPLY @35 /* I talked to Brelm. He told me you can help me with my problem. */ EXTERN L#2SDNEM NEM-01-01 
IF~~THEN REPLY @36 /* I think I was looking for someone else. Goodbye. */ EXTERN L#2SDNEM NEM-01-02 

CHAIN IF ~NumTimesTalkedToGT(0) Global("L#2SkieDagger","GLOBAL",6)~ THEN L#2SDNEM NEM-01-0R2 
@37 /* Ah, I've met you before, right? */ 
END 
IF~~THEN REPLY @35 /* I talked to Brelm. He told me you can help me with my problem. */ EXTERN L#2SDNEM NEM-01-01 
IF~~THEN REPLY @38 /* I'm looking for someone else. Goodbye. */ EXTERN L#2SDNEM NEM-01-02 

CHAIN IF ~NumTimesTalkedToGT(0) Global("L#2SkieDagger","GLOBAL",7)~ THEN L#2SDNEM NEM-01-0R 
@39 /* Ah, it's you. What do you need? */ 
END 
IF~~THEN REPLY @40 /* I think I changed my mind and I would like you to examine the Soultaker. Here is the dagger and let's meet here in three days. */ EXTERN L#2SDNEM NEM-01-06 
IF~~THEN REPLY @38 /* I'm looking for someone else. Goodbye. */ EXTERN L#2SDNEM NEM-01-02 

CHAIN L#2SDNEM NEM-01-01 
@41 /* Heh, you talked to that old rascal Brelm? He can be such a nitwit... */ 
==L#2SDNEM @42 /* But he's also usually right, so if he told you that I can help, I probably can. What's your problem then? Some kind of magic rash? */ 
END 
IF~~THEN REPLY @43 /* No. You see, I have this Soultaker dagger. It was took my old companion's soul. It's been a while, but I hope that maybe that can still be reversed. */ EXTERN L#2SDNEM NEM-01-03 
IF~~THEN REPLY @44 /* Hmm, I think I'll just get back to you later. */ EXTERN L#2SDNEM NEM-01-02 

CHAIN L#2SDNEM NEM-01-03 
@45 /* You have the Soultaker? How is that even-- */ 
==L#2SDNEM @46 /* --why is it broken? How is that even possible? */ 
END 
IF~~THEN REPLY @47 /* A powerful mage used it and... perhaps he did something to it? I think we can't rule that out. */ EXTERN L#2SDNEM NEM-01-04 
IF~~THEN REPLY @48 /* Yes, as we can see. I think that this could have happened due to powerful magic it was used along with its powers. */ EXTERN L#2SDNEM NEM-01-04 
IF~~THEN REPLY @49 /* Maybe. I don't know. And that's not my main problem with that blade. I want my friend back. */ EXTERN L#2SDNEM NEM-01-04 

CHAIN L#2SDNEM NEM-01-04 
@50 /* You must have got into something really serious. Items like that don't get damaged when chopping vegetables. */ 
==L#2SDNEM @51 /* Anyway, I may need a moment to study the dagger. Or what's left of it. Hmm, there are some surges around the gemstone. */ 
==L#2SDNEM @52 /* I'll need three days. Let's meet here, in this exact place. */ 
END 
IF~~THEN REPLY @53 /* How can I be sure that you won't run away with it? */ EXTERN L#2SDNEM NEM-01-05 
IF~~THEN REPLY @54 /* Fine. Let's meet here in three days. */ EXTERN L#2SDNEM NEM-01-06 

CHAIN L#2SDNEM NEM-01-05 
@55 /* I'm seventy-four years old and you were sent here by a man with a good heart, probably meeting at one of the most famous shops in Athkatla. Also, do you have any other lead? */ 
END 
IF~~THEN REPLY @56 /* Fine. Take the blade and let's meet here in three days. */ EXTERN L#2SDNEM NEM-01-06 
IF~~THEN REPLY @57 /* I need to think about this. Goodbye. */ EXTERN L#2SDNEM NEM-01-07 

CHAIN L#2SDNEM NEM-01-06 
@58 /* Good! I hope to return to you with good news. */ 
DO ~TakePartyItem("l#2sda1") DestroyItem("l#2sda1") SetGlobal("L#2SkieDagger","GLOBAL",8)~ EXIT 

CHAIN L#2SDNEM NEM-01-07 
@59 /* Do as you please. */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",7)~ EXIT 

CHAIN L#2SDNEM NEM-01-02 
@60 /* I see. */ 
EXIT 

//STEP #5 - NEM 2 

CHAIN IF ~Global("L#2SkieDagger","GLOBAL",11)~ THEN L#2SDNEM NEM-02-00 
@61 /* Oh, it's you. Right on time. I have some news about the Soultaker. */ 
END 
IF~~THEN REPLY @62 /* Tell me everything you know. */ EXTERN L#2SDNEM NEM-02-01 
IF~~THEN REPLY @63 /* Is something wrong? You sound a bit odd. */ EXTERN L#2SDNEM NEM-02-01 

CHAIN L#2SDNEM NEM-02-01 
@64 /* Well... you may not like some of the information. */ 
==L#2SDNEM @65 /* The damage done to the weapon is causing these... wild surges. It troubles me as something like that is never a good sign and indeed the consequences of breaking the blade are serious. */ 
==L#2SDNEM @217 /* Imagine the Soultaker dagger as similar to a jail cell. Instead of breaking the bars, someone played with the lock and destroyed it so it can't be open ever again. You see, your friend can't be let out. Not without a price. */
==L#2SDNEM @66 /* Someone may replace her there, though. Like... push her from the "cell". So you will need to find someone who will follow you in the next phase. Just to be clear, even though I know you want to save your friend, I won't participate if you bring me some tangled people here. That person must know that once your fiend is "pushed" from the prison... there will be no one else to do the same for him or her. */ 
== AerieJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @213 /* So the price for saving <CHARNAME>'s friend is... another soul... */ 
== L#2SDNEM IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @214 /* I'm afraid so. I hope your leader understands what it means. */ 
== AnomenJ IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @215 /* This is just wrong. */ 
== L#2SDNEM IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @216 /* I'm sorry, but that's the price. */
END 
IF~~THEN REPLY @67 /* So I must find someone who will agree to sacrifice his or her soul? That's insane. */ EXTERN L#2SDNEM NEM-02-02 
IF~~THEN REPLY @68 /* I understand you perfectly. */ EXTERN L#2SDNEM NEM-02-03 

CHAIN L#2SDNEM NEM-02-02 
@69 /* Then prepare for much insanity as your situation isn't normal. This blade isn't normal nor is anything that involves that kind of artifact. I'm sorry, but that's how it is. */ 
EXTERN L#2SDNEM NEM-02-04 

CHAIN L#2SDNEM NEM-02-03 
@70 /* That's good. I'm glad. */ 
EXTERN L#2SDNEM NEM-02-04 

CHAIN L#2SDNEM NEM-02-04 
@71 /* Look, there are many people here and you may feel surprised, but they may help you. Even though I know this is a difficult decision to make, I know there are reasons for which I would accept it myself. I'll leave deciding if that soul inside the Soultaker is worth that sacrifice to you. I don't want to be a judge on the cause. */ 
==L#2SDNEM @72 /* Know that this isn't the only hard decision you will have to make. I must warn you, if that soul was taken away for a while already... */ 
END 
IF~~THEN REPLY @73 /* I'm afraid it was. */ EXTERN L#2SDNEM NEM-02-05 
IF~~THEN REPLY @74 /* Then what? */ EXTERN L#2SDNEM NEM-02-06 

CHAIN L#2SDNEM NEM-02-05 
@75 /* So it's even more serious... I was afraid that you may say something like that. */ 
EXTERN L#2SDNEM NEM-02-07 

CHAIN L#2SDNEM NEM-02-06 
@76 /* The price for that soul may be even greater. */ 
EXTERN L#2SDNEM NEM-02-07 

CHAIN L#2SDNEM NEM-02-07 
@77 /* In that case we may need to create an anomaly that will join the two... that's going to be more than difficult. A tribute of unusual life essence must be provided. That should twist the bonds between soul, the body, and the dagger. But the problem is... we need that essence. */ 
END
IF~~THEN REPLY @218 /* I am a Bhaalspawn. You may use my essence. */ EXTERN L#2SDNEM NEM-02-08
IF~~THEN REPLY @219 /* Worry not about this. I can deal with it when the time is right. */ EXTERN L#2SDNEM NEM-02-09 

CHAIN L#2SDNEM NEM-02-08
@220 /* ...so I was right, when I thought you are the Child who saved Baldur's Gate... Yes, that may do the trick. Your heritage. The essence. It may actually work. */
EXTERN L#2SDNEM NEM-02-10 

CHAIN L#2SDNEM NEM-02-09 
@78 /* What? Well... Fine. I won't ask you where you're going to get that essence from, but I assume you have a plan. */ 
EXTERN L#2SDNEM NEM-02-10 

CHAIN L#2SDNEM NEM-02-10 
@79 /* Anyway, we may need to hope that the body itself was kept and was observed by clerics. */ 
END 
IF~~THEN REPLY @80 /* I bet she was. She has a father that won't give up easily, even if he's told that he shouldn't expect any miracles to happen. */ EXTERN  L#2SDNEM NEM-02-11 
IF~~THEN REPLY @81 /* Leave worrying to me and just let's move on before the situation becomes even worse. */ EXTERN  L#2SDNEM NEM-02-12 
IF~~THEN REPLY @200 /* The price is too high. How should I decide who should I just can't do this. */ EXTERN L#2SDNEM NEM-02-10a1 

CHAIN L#2SDNEM NEM-02-11 
@82 /* Fine. If that's how it is. */ 
EXTERN L#2SDNEM NEM-02-13 

CHAIN L#2SDNEM NEM-02-12 
@83 /* You're right. */ 
EXTERN L#2SDNEM NEM-02-13 

CHAIN L#2SDNEM NEM-02-10a1
@201 /* I understand. Death always matters. Go and think about this. All I can tell you is... it won't hurt that someone who may agree to help you. But I know, that's not the point, correct? Talk to people, see how they feel about this and if you still think you can't do this... maybe that's how it was meant to be? */
DO ~SetGlobal("L#2SkieDagger","GLOBAL",12)~ EXIT 

CHAIN L#2SDNEM NEM-02-13 
@84 /* Go focus on the next step, then find someone who for whatever reason will help you and take her place. And... you can tell them that it won't hurt. I'll do everything to make it painless. Once it's all done... it will be nothing else but like an neverending sleep. */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",12)~ EXIT 

//STEP #6 - PYLL (option 1) 

BEGIN L#2SDPYL 

CHAIN IF ~Global("L#2SkieDagger","GLOBAL",14)~ THEN L#2SDPYL PYLL-01-00 
@85 /* I'm sorry, but I would like to stay alone. */ 
END 
IF~~THEN REPLY @86 /* Something happened? You look more than depressed. */ EXTERN L#2SDPYL PYLL-01-01 
IF~~THEN REPLY @87 /* I'll leave you then. */ EXIT 

CHAIN L#2SDPYL PYLL-01-01 
@88 /* I... */ 
END 
IF~False()~THEN REPLY @89 /* It's fine. You can tell me. */ EXTERN L#2SDPYL PYLL-01-02 
IF~~THEN REPLY @89 /* It's fine. You can tell me. */ EXTERN L#2SDPYL PYLL-01-03 
IF~~THEN REPLY @90 /* I changed my mind. I'll just leave you. */ EXIT 

CHAIN L#2SDPYL PYLL-01-02 
@91 /* I'm sorry, but no. I'm not sure I trust you. You're just some stranger. Please leave me be. */ 
EXIT 

CHAIN L#2SDPYL PYLL-01-03 
@92 /* I... fine. I'll tell you. You seem to be like someone I can trust. */ 
==L#2SDPYL @93 /* You see, I wasn't a fine person. I... did bad things. And now I'm sick. I have only few days left. I'm alone. Scared. Without any chance of redemption. I would like to do something good, but I just can't. Something extra-ordinary. Something splendid. */ 
==L#2SDPYL @94 /* But I suppose I won't get my chance. I'll have to die knowing I was no one else, but some... */ 
END 
IF~~THEN REPLY @95 /* I'm really sorry, but I think you just need to accept what you have done. You know you did wrong things. Isn't that enough? */ EXTERN L#2SDPYL PYLL-01-04 
IF~~THEN REPLY @236 /* I think you should spend these last days on things that you always enjoyed doing. Making peace with this world. With your friends. Don't waste that time. */ EXTERN L#2SDPYL PYLL-01-0N-01
IF~~THEN REPLY @221 /* Maybe there is still a way to heal you? */ EXTERN L#2SDPYL PYLL-01-0N-02
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDPyll","GLOBAL",0)~THEN REPLY @96 /* I may know a way of helping you. I need to save my friend. Her soul was taken and it can't be freed without another soul taking its place. I was told it would feel like a neverending sleep. Maybe that is your chance. */ EXTERN L#2SDPYL PYLL-01-05 
IF~~THEN REPLY @97 /* I see. Well, I'll just leave you to your thoughts. */ EXIT 

CHAIN L#2SDPYL PYLL-01-04 
@98 /* No. It's not. */ 
END
IF~~THEN REPLY @236 /* I think you should spend these last days on things that you always enjoyed doing. Making peace with this world. With your friends. Don't waste that time. */ EXTERN L#2SDPYL PYLL-01-0N-01
IF~~THEN REPLY @221 /* Maybe there is still a way to heal you? */ EXTERN L#2SDPYL PYLL-01-0N-02
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDPyll","GLOBAL",0)~THEN REPLY @96 /* I may know a way of helping you. I need to save my friend. Her soul was taken and it can't be freed without another soul taking its place. I was told it would feel like a neverending sleep. Maybe that is your chance. */ EXTERN L#2SDPYL PYLL-01-05 
IF~~THEN REPLY @97 /* I see. Well, I'll just leave you to your thoughts. */ EXIT 

CHAIN L#2SDPYL PYLL-01-0N-01
@222 /* Look, I know you want good, but I had my dose of fun. These are my last few days and I should be the one to decide how to spend them. I want to do something significant. Do something... for someone. And not because I will get something in exchange. If... I have to go, I want to go down my way. Doing what fits what I myself feel is right. */
END 
IF~~THEN REPLY @95 /* I'm really sorry, but I think you just need to accept what you have done. You know you did wrong things. Isn't that enough? */ EXTERN L#2SDPYL PYLL-01-04 
IF~~THEN REPLY @221 /* Maybe there is still a way to heal you? */ EXTERN L#2SDPYL PYLL-01-0N-02
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDPyll","GLOBAL",0)~THEN REPLY @96 /* I may know a way of helping you. I need to save my friend. Her soul was taken and it can't be freed without another soul taking its place. I was told it would feel like a neverending sleep. Maybe that is your chance. */ EXTERN L#2SDPYL PYLL-01-05 
IF~~THEN REPLY @97 /* I see. Well, I'll just leave you to your thoughts. */ EXIT 

CHAIN L#2SDPYL PYLL-01-0N-02
@223 /* No. I talked to many priests and even druids. Regenerating my broken organs would take more time than I have. I heard it more than once. And... you know, I am done asking. Being afraid is one thing, but... it's just happening. */
END 
IF~~THEN REPLY @95 /* I'm really sorry, but I think you just need to accept what you have done. You know you did wrong things. Isn't that enough? */ EXTERN L#2SDPYL PYLL-01-04 
IF~~THEN REPLY @236 /* I think you should spend these last days on things that you always enjoyed doing. Making peace with this world. With your friends. Don't waste that time. */ EXTERN L#2SDPYL PYLL-01-0N-01
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDPyll","GLOBAL",0)~THEN REPLY @96 /* I may know a way of helping you. I need to save my friend. Her soul was taken and it can't be freed without another soul taking its place. I was told it would feel like a neverending sleep. Maybe that is your chance. */ EXTERN L#2SDPYL PYLL-01-05 
IF~~THEN REPLY @97 /* I see. Well, I'll just leave you to your thoughts. */ EXIT 

CHAIN L#2SDPYL PYLL-01-05 
@99 /* I... I see... I did not expect that offer. And I didn't know I would be so scared when being gain my chance... */ 
==L#2SDPYL @224 /* Tell me, though... Is she a good person? The one you want to save...? */
END
IF~~THEN REPLY @225 /* Yes. I believe she is. */ EXTERN L#2SDPYL PYLL-01-0N-03
IF~~THEN REPLY @226 /* I will be honest with you. She's sort of a... wildcard. */ EXTERN L#2SDPYL PYLL-01-0N-04

CHAIN L#2SDPYL PYLL-01-0N-03
@227 /* I see. Let me think. I... don't know you very much, but you were the only one here that asked me about what's going on. It may be hard... */
EXTERN L#2SDPYL PYLL-01-0N-05

CHAIN L#2SDPYL PYLL-01-0N-04
@228 /* A wildcard? Heh... that means she and I may have much in common... It's hard... */
EXTERN L#2SDPYL PYLL-01-0N-05

CHAIN L#2SDPYL PYLL-01-0N-05
@100 /* ...but I will die anyway. Fine. I'm terrified but I can do it. I will do it. */ 
END 
IF~~THEN REPLY @101 /* Thank you. It means much to me. There is an old woman called Nem. Not far away from here. Let's meet next to her. */ EXTERN L#2SDPYL PYLL-01-06 
IF~~THEN REPLY @102 /* I think I changed my mind. Asking someone to do such a thing is... just wrong. Goodbye. */ EXIT 

CHAIN L#2SDPYL PYLL-01-06 
@103 /* I'll find her. */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",15) SetGlobal("L#2SDPyll","GLOBAL",1) ActionOverride("L#2SDROI",DestroySelf()) ActionOverride("L#2SDBON",DestroySelf()) EscapeArea()~ EXIT 

CHAIN IF ~True()~ THEN L#2SDPYL PYLL-01-0X 
@104 /* Let's hope everything's going to be alright. */ 
EXIT 

//STEP #6 - Roi "Biggie" (option 2) 

BEGIN L#2SDROI 

CHAIN IF ~Global("L#2SkieDagger","GLOBAL",14)~ THEN L#2SDROI ROI-01-00 
@105 /* Hi, you have gold? I'll do anything for gold. Please. */ 
END 
IF~~THEN REPLY @106 /* Woah! That's quite... direct! */ EXTERN L#2SDROI ROI-01-01 
IF~~THEN REPLY @107 /* Begone. */ EXIT 

CHAIN L#2SDROI ROI-01-01 
@108 /* There... there is a reason. Okay, I think you're not one of the guards. They are looking for me and I know they will find me. I'm in a dead end. I just messed with the wrong people. Noble-kind of people. It was to be a simple break-in job... but it's fine. The problem is... I have a son. */ 
==L#2SDROI @109 /* We're alone. His mom is dead. He has no siblings. I want to leave him gold. I don't want him to end up like me. I want him to have a better life. */ 
==L#2SDROI @110 /* Give me 5,000 gold pieces so he could find home and education and... and you may even kill me. I'll do whatever I can to make my son happy. If they get me, I'll rot in prison anyway. */ 
END 
IF~~THEN REPLY @229 /* Aren't you afraid how your son is going to feel with you gone? */ EXTERN L#2SDROI ROI-01-0N-01 
IF~PartyGoldGT(4999)~THEN REPLY @230 /* Take this money and leave town. I just hope you truly meant people no harm and you want a better future for your boy... */ EXTERN L#2SDROI ROI-01-0N-02
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDRoi","GLOBAL",0) PartyGoldGT(4999)~THEN REPLY @111 /* There is an option. I can give you money, but you must save my friend. A bad person took her soul. It can be restored but only if another soul will replace her essence. I promise it won't hurt. It will be like an endless slumber. */ EXTERN L#2SDROI ROI-01-02 
IF~~THEN REPLY @112 /* I'm sorry, but you deserve justice. I can't help you; that would be wrong. You're on your own. */ EXIT 
IF~~THEN REPLY @113 /* I need to think about this. */ EXIT 

CHAIN L#2SDROI ROI-01-0N-01 
@231 /* It's going to be hard for him, but... I don't think I'm a good father. Perhaps his uncle will be a better one, I'll send him there, to his house... He's a fine man. Honest. He is someone I should have been. */
END
IF~PartyGoldGT(4999)~THEN REPLY @230 /* Take this money and leave town. I just hope you truly meant people no harm and you want a better future for your boy... */ EXTERN L#2SDROI ROI-01-0N-02
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDRoi","GLOBAL",0) PartyGoldGT(4999)~THEN REPLY @111 /* There is an option. I can give you money, but you must save my friend. A bad person took her soul. It can be restored but only if another soul will replace her essence. I promise it won't hurt. It will be like an endless slumber. */ EXTERN L#2SDROI ROI-01-02 
IF~~THEN REPLY @112 /* I'm sorry, but you deserve justice. I can't help you; that would be wrong. You're on your own. */ EXIT 
IF~~THEN REPLY @113 /* I need to think about this. */ EXIT 

CHAIN L#2SDROI ROI-01-0N-02
@232 /* Really? Just... like that? Gods, I do not know what to say... I just hope they won't find me... Even though I will probably never feel free of what I have done... */
DO ~SetGlobal("L#2SDRoi","GLOBAL",-1) TakePartyGold(5000) EscapeArea()~ EXIT 

CHAIN L#2SDROI ROI-01-02 
@114 /* Really? You'll give me that money and... */ 
==L#2SDROI @115 /* I agree. But you must give me the money now. I'll leave it to him along with a letter and then... then you can do whatever you want. Heh, and it's even funny in a way... I will run away from the guards. In a very unusual way... */ 
END 
IF~~THEN REPLY @116 /* Here is the money. Leave your child a letter and let's meet not far away from here. There is this elder woman, Nem. I think you'll recognize her. Meet me there. */ EXTERN L#2SDROI ROI-01-03 
IF~~THEN REPLY @117 /* I changed my mind. Sorry but I need to go now. Goodbye. */ EXIT 

CHAIN L#2SDROI ROI-01-03 
@118 /* Fine, partner. Let's meet there. I'll find this Nem. */ 
DO ~TakePartyGold(5000) SetGlobal("L#2SkieDagger","GLOBAL",15) SetGlobal("L#2SDRoi","GLOBAL",1) ActionOverride("L#2SDPYL",DestroySelf()) ActionOverride("L#2SDBON",DestroySelf()) EscapeArea()~ EXIT 

CHAIN IF ~True()~ THEN L#2SDROI ROI-01-0X 
@119 /* I won't lie, I'm a bit nervous... */ 
EXIT 

//STEP #6 - Bontt (option 3) 

BEGIN L#2SDBON 

CHAIN IF ~Global("L#2SkieDagger","GLOBAL",14)~ THEN L#2SDBON BON-01-00 
@120 /* Ugh... more people. Can't you see I'm busy with bleeding out? Damn scum... */ 
END 
IF~~THEN REPLY @121 /* Who did this to you? */ EXTERN L#2SDBON BON-01-01 
IF~~THEN REPLY @122 /* Uhm... I'll leave you to your... bleeding out, then. */ EXIT 

CHAIN L#2SDBON BON-01-01 
@123 /* Another gang. They were looking for me and they got me. Does that surprise you? Hah! It's normal here, in the Slums. People die, you know. Because they're stabbed or they starve to death. */ 
END 
IF~~THEN REPLY @124 /* Do you need any help? */ EXTERN L#2SDBON BON-01-02 
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDBontt","GLOBAL",0)~THEN REPLY @125 /* Hmm, you may need to do something for me. Or I may call guards to take care of you. */ EXTERN L#2SDBON BON-01-03 
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDBontt","GLOBAL",0)~THEN REPLY @129 /* You're not afraid of anything, are you? You may be just the man I need. You're dying, as I can see, but... this may end differently. You can leave on your own terms. */ EXTERN L#2SDBON BON-01-0N1
IF~~THEN REPLY @126 /* I see... I think I'll just leave you, then. You don't seem to be in the mood for talks. */ EXIT 

CHAIN L#2SDBON BON-01-02 
@127 /* Help? Hah! No, thanks. I don't need your sympathy. If that wound makes me stiff... then so be it. well, at least I took them with me. I killed like... six of them. They killed my partner, you know. But I got my revenge. And I got my chance to spit on their corpses. A damn good feeling, I'm telling you. */ 
END 
IF~~THEN REPLY @128 /* I understand. Well, if that's what you want, I'll just respect your decision. I hope you're happy with what you did. Goodbye. */ EXIT 
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDBontt","GLOBAL",0)~THEN REPLY @125 /* Hmm, you may need to do something for me. Or I may call guards to take care of you. */ EXTERN L#2SDBON BON-01-03 
IF~Global("L#2SkieDagger","GLOBAL",14) Global("L#2SDBontt","GLOBAL",0)~THEN REPLY @129 /* You're not afraid of anything, are you? You may be just the man I need. You're dying, as I can see, but... this may end differently. You can leave on your own terms. */ EXTERN L#2SDBON BON-01-0N1

CHAIN L#2SDBON BON-01-03 
@130 /* What?! You're threatening a dying man?! What kind of monster are you? */ 
END 
IF~~THEN REPLY @131 /* Someone who's trying to rescue a friend. Look, you'll die anyway. If not in the next hour or day, then because friends of those who you killed will find you. And my friend needs to be saved. You just need to replace her in a... unique place. It won't hurt. It will be like a really long dream. */ EXTERN L#2SDBON BON-01-04 
IF~~THEN REPLY @132 /* You're right. It's wrong. Even though you're not a paladin yourself. I'll just leave you. */ EXIT 

CHAIN L#2SDBON BON-01-0N1
@233 /* Eh...? You've got my attention. */ 
END 
IF~~THEN REPLY @234 /* I'm trying to rescue a friend. Look, you'll die anyway. If not in the next hour or day, then because friends of those who you killed will find you. And my friend needs to be saved. You just need to replace her in a... unique place. It won't hurt. It will be like a really long dream. */ EXTERN L#2SDBON BON-01-0N2
IF~~THEN REPLY @132 /* You're right. It's wrong. Even though you're not a paladin yourself. I'll just leave you. */ EXIT 

CHAIN L#2SDBON BON-01-04 
@133 /* You damn thing... */ 
EXTERN L#2SDBON BON-01-0N3

CHAIN L#2SDBON BON-01-0N2
@235 /* Heh... I killed for my partner. It looks like you want to do the same. On the other hand, that dream doesn't sound too bad, especially if I can dream about some girls... And maybe my partner, he could be there too... I can share my dreamy girls. */ 
EXTERN L#2SDBON BON-01-0N3

CHAIN L#2SDBON BON-01-0N3
@134 /* So... I won't die and I won't suffer, right? */ 
END 
IF~~THEN REPLY @135 /* You will be like... in a stasis. Like a said: an endless dream. You've got your revenge and they will look for you anyway. That's your chance. Haven't you said that you're tired of all of this? */ EXTERN L#2SDBON BON-01-05 
IF~~THEN REPLY @136 /* You know, I think I changed my mind. Making you do this is just... weird. I need to go. */ EXIT 

CHAIN L#2SDBON BON-01-05 
@137 /* Fine... I am tired and they will indeed look for me. So...? What you want me to do? */ 
END 
IF~~THEN REPLY @138 /* There is this woman -- Nem. Find her and I'll join you in a second. Can you walk? */ EXTERN L#2SDBON BON-01-06 
IF~~THEN REPLY @139 /* I changed my mind. I'll look for someone else. */ EXIT  

CHAIN L#2SDBON BON-01-06 
@140 /* And who do you think you're talking to? Some weak thing? I'll find this Nem. No worries. */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",15) SetGlobal("L#2SDBontt","GLOBAL",1) ActionOverride("L#2SDPYL",DestroySelf()) ActionOverride("L#2SDROI",DestroySelf()) EscapeArea()~ EXIT 

CHAIN IF ~True()~ THEN L#2SDBON BON-01-0X 
@141 /* So? What are we waiting for? */ 
EXIT 

//STEP #7 - NEM 3 

CHAIN IF ~GlobalGT("L#2SkieDagger","GLOBAL",11) GlobalLT("L#2SkieDagger","GLOBAL",18)~ THEN L#2SDNEM NEM-03-00 
@142 /* So you're back. */ 
END 
IF~Global("L#2SkieDagger","GLOBAL",17)~THEN REPLY @143 /* Yes. And I found someone who may take my friend's place. */ EXTERN L#2SDNEM NEM-03-01 
IF~~THEN REPLY @144 /* Yes, but I'm not ready for the next step of the plan. I'll be back soon. */ EXIT 
IF~!Global("L#2SkieDagger","GLOBAL",17) Global("L#2SDSendIt","GLOBAL",0)~THEN REPLY @202 /* I came back to tell you that I can't do this. The price is just too big. */ EXTERN L#2SDNEM NEM-03-00a1

CHAIN L#2SDNEM NEM-03-00a1
@203 /* I understand. It's indeed a difficult decision to make. I may offer to send the Soultaker to Baldur's Gate, but know that... they may be unable to do anything about the soul that's kept inside. Do you want to make them responsible for solving that problem? */
END
IF~~THEN REPLY @204 /* I think her father should decide what to do. And if they believe they can accept the price, they should find everything that's needed on their own. That's my final decision. Send the blade to Entar Silvershield. */ EXTERN L#2SDNEM NEM-03-00a2
IF~~THEN REPLY @205 /* Gods, why it's so difficult? I need to think about this. */ EXTERN L#2SDNEM NEM-03-00a3

CHAIN L#2SDNEM NEM-03-00a2
@206 /* Fine. I understand why you feel that way about all of this. I shall send it to Entar then. Goodbye. */
DO ~AddexperienceParty(5000) SetGlobal("L#2SkieDagger","GLOBAL",50) SetGlobal("L#2SDSendIt","GLOBAL",1) EscapeArea()~ EXIT

CHAIN L#2SDNEM NEM-03-00a3
@207 /* You know where to find me when you make up you mind. */
EXIT

CHAIN L#2SDNEM NEM-03-01 
@145 /* I can see you found someone. So, do you agree to help this <PRO_MANWOMAN>? I won't help if you don't agree. That's my part of the deal. */ 
==L#2SDBON IF ~See("L#2SDBON")~ THEN @146 /* Humph. Just do whatever must be done. I'm a dead man anyway. */ 
==L#2SDROI IF ~See("L#2SDROI")~ THEN @147 /* Yes. I agree. */ 
==L#2SDPYL IF ~See("L#2SDPYL")~ THEN @148 /* Yes. I want to help <PRO_HISHER> friend. */ 
==L#2SDNEM @149 /* I understand. Fine. I prepared everything for the ritual. Once it's done, you will be teleported inside the Soultaker. The place will feed on your nightmares. There may be creatures that will attack you. Once it's over, find you friend's soul. Then you may use essence from your part of the plan to create an anomaly. Your friend will be bound back with her soul and... the one you found will stay there. In a sleep. It won't hurt. Just as I promised. */ 
==L#2SDNEM @150 /* Creating the anomaly may cost, though. I'm sorry, but nothing can be done about this. */ 
==L#2SDNEM @151 /* So... just talk to me once you're ready. */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",18)~ EXIT 

//STEP #8 - NEM 4 

CHAIN IF ~Global("L#2SkieDagger","GLOBAL",19)~ THEN L#2SDNEM NEM-04-00 
@152 /* Are you ready? Should I start the ritual? We don't have all time of the spheres. */ 
END 
IF~~THEN REPLY @153 /* I'm ready. */ DO ~SetGlobal("L#2SkieDagger","GLOBAL",20)~ EXIT 
IF~~THEN REPLY @154 /* No, I'm not ready yet. */ EXIT 

//STEP #9 - SOUL 

BEGIN L#2SDSOU 

CHAIN IF ~Global("L#2SkieDagger","GLOBAL",28)~ THEN L#2SDSOU SOUL-01-00 
@155 /* (You can see Skie's soul. You can use your own essence to create an anomaly and free it. At a cost) */ 
END 
IF~~THEN REPLY @156 /* (Sacrifice some of your own health, create an anomaly, and channel the soul of the one who agreed to help you so another soul could replace this one) */ DO ~ApplySpell(Player1,HELL_LOSE_HP) ApplySpell(Player1,HELL_LOSE_HP)SetGlobal("L#2SkieDagger","GLOBAL",29) StartCutScene("L#2SDCU2")~ EXIT 
IF~Global("L#2SDBreakRule","GLOBAL",0)~THEN REPLY @157 /* (Break the rule, take a risk, and try to free the soul without a sacrifice) */ DO ~SetGlobal("L#2SkieDagger","GLOBAL",30) SetGlobal("L#2SDBreakRule","GLOBAL",1) StartCutScene("L#2SDCU2")~ EXIT 
IF~~THEN REPLY @158 /* (Step back) */ EXIT 

//STEP #10 - NEM 5 

CHAIN IF ~OR(2) Global("L#2SkieDagger","GLOBAL",29) Global("L#2SkieDagger","GLOBAL",30)~ THEN L#2SDNEM NEM-05-00 
@159 /* That was quite a surge! */ 
END 
IF~Global("L#2SkieDagger","GLOBAL",30)~THEN EXTERN L#2SDNEM NEM-05-01 
IF~Global("L#2SkieDagger","GLOBAL",29)~THEN EXTERN L#2SDNEM NEM-05-02 

CHAIN L#2SDNEM NEM-05-01 
@160 /* I... felt that you did something wrong. You tried to break the bonds without your own sacrifice, am I correct? */ 
==L#2SDNEM @161 /* I am sorry, but what you did was stupid. I told you exactly what you should do and... you just ignored me. The dagger is useless now... and the person that agreed to help you is doomed, because you couldn't give something else in exchange. */ 
== MinscJ IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @208 /* So we lost? Don't listen, Boo. Minsc knows you liked our sneaky friend Skie. */ 
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @209 /* Gorion wouldn't approve what you just tried to do, <CHARNAME>. */ 
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @210 /* You knew the rule, <CHARNAME>, but even though you tried to break it. */
== EdwinJ IF ~InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @211 /* So, the Hero of Baldur's Gate failed <PRO_HISHER> foolish friend? (Hah, good riddance.) */
== NaliaJ IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @212 /* It was all for nothing, then? That's just so... unfair... */
==L#2SDNEM @162 /* I should have never agreed to help you. */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",50) ReputationInc(-1) EscapeArea()~ EXIT 

CHAIN L#2SDNEM NEM-05-02 
@163 /* It's done. I felt a soul leaving this blade. The surges around the blade are gone too. You have succeeded. Your friend's soul is on its way to the flesh it belongs to. */ 
==L#2SDNEM @164 /* My work is done. But never forget about the one that helped you. That soul will always stay inside that blade. */ 
==L#2SDNEM @165 /* Know that the Soultaker is now gone forever. Thank you for letting me study the blade. I know everything I needed to know. Or even more... Anyway, here it is. I give it back. Even if you find a way to repair it, it will no longer be the same. Anomaly changed it. */ 
==L#2SDNEM @166 /* You got what you wanted. I suppose that you should now wait for someone to reach you and inform you how your friend is feeling. */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",31) GiveItemCreate("l#2sda1",Player1,1,1,0) EscapeArea()~ EXIT 

//STEP #11 - MESSNI 

BEGIN L#2SDMES 

CHAIN IF ~Global("L#2SkieDagger","GLOBAL",33)~ THEN L#2SDMES Messni01x00 
@167 /* <CHARNAME>! Excuse me! I'm Missini. I was sent by Liia Jannath from Baldur's Gate! Skie... Skie returned to life. She told us what happened. She even told miss Jannath that she saw you there, in the, how she called it, "hellish place". */ 
==L#2SDMES @168 /* I was ordered to give you this. A gift. Something to, ahem, "symbolize the change in our relationship". And if I'm correct that's just a fancy way of saying "thank you; we should have given you a chance". But, hey, I'm just a messager, so I may be wrong. */ 
END 
IF~~THEN REPLY @169 /* So is Skie fine? Is she feeling alright? */ EXTERN L#2SDMES Messni01x01 
IF~~THEN REPLY @170 /* Huh, the Dukes of Baldur's Gate really quickly changed their minds. So are we supposed to be friends again? That may be hard. */ EXTERN L#2SDMES Messni01x02 
IF~~THEN REPLY @171 /* Just to be clear: I did this for Skie, not for the Dukes. They betrayed me. I won't forget about this. */ EXTERN L#2SDMES Messni01x03 

CHAIN L#2SDMES Messni01x01 
@172 /* She was weak when I was leaving Baldur's Gate some time ago, but she's alive. She'll feel better soon. It's more than a miracle that her soul could return to her body. */ 
EXTERN L#2SDMES Messni01x04 

CHAIN L#2SDMES Messni01x02 
@173 /* I'm just a messenger. I'm just telling you what they ordered me to tell. */ 
EXTERN L#2SDMES Messni01x04 

CHAIN L#2SDMES Messni01x03 
@174 /* I... I see. Well, I suppose you have your right to feel however you wish about everything that happened. */ 
EXTERN L#2SDMES Messni01x04 

CHAIN L#2SDMES Messni01x04 
@175 /* As for what I personally think... well, I must say it's becoming hard to catch up with who's dead and who's alive these day. First Entar. Then Skie. Some other people were also brought up after you stopped the Crusade. Sometimes I wonder if that makes sacrifice and tragedy less... well, tragic. */ 
END 
IF~~THEN REPLY @176 /* Perhaps. But you know what's tragic? That people rarely realize that beside great big people like Dukes, Skie, or even me, there are lesser known people who can do amazing things. Skie was brought back only because there was someone else who agreed to take her place in the eternal slumber. */ EXTERN L#2SDMES Messni01x05 
IF~~THEN REPLY @177 /* You're right. Sometimes it's hard to catch up with this world: who's alive and who's dead. But that only shows how much we rely on gods and their magic. Gods are powerful and they may protect, but even when they bring someone back, we should remember about certain deaths and sacrifices. I will. */ EXTERN L#2SDMES Messni01x06 
IF~~THEN REPLY @178 /* I disagree, but also I'm not here to talk with you about death and it's place in our world. Go back to your Dukes and tell them that you've found me. */ EXTERN L#2SDMES Messni01x07 

CHAIN L#2SDMES Messni01x05 
@179 /* I didn't know that. I'm... sorry. */ 
END 
IF~Global("L#2SDPyll","GLOBAL",1)~THEN REPLY @180 /* Tell the Dukes that it wasn't just me but also a woman called Pyll who saved Skie. */ EXTERN L#2SDMES Messni01x07 
IF~Global("L#2SDRoi","GLOBAL",1)~THEN REPLY @181 /* Tell the Dukes that it wasn't just me but also a man called Roi "Biggie" who saved Skie. */ EXTERN L#2SDMES Messni01x07 
IF~Global("L#2SDBontt","GLOBAL",1)~THEN REPLY @182 /* Tell the Dukes that it wasn't just me but also a man called Bontt who saved Skie. */ EXTERN L#2SDMES Messni01x07 
IF~~THEN REPLY @183 /* I know you didn't. Eh... never mind. Just tell your Dukes that you found me. */ EXTERN L#2SDMES Messni01x07 

CHAIN L#2SDMES Messni01x06 
@184 /* I never though about this that way. Perhaps I should keep these words in mind. */ 
EXTERN L#2SDMES Messni01x08 

CHAIN L#2SDMES Messni01x07 
@185 /* That's... that's what I'm going to tell them. */ 
EXTERN L#2SDMES Messni01x08 

CHAIN L#2SDMES Messni01x08 
@186 /* Anyway, thank you for what you did. Even after everything that happened, you brought Skie back. And she will never forget about that. */ 
==L#2SDMES @187 /* Goodbye, Hero of Baldur's Gate. I wish you well! */ 
DO ~SetGlobal("L#2SkieDagger","GLOBAL",34) GiveItemCreate("L#2SDREW",Player1,1,1,0) DestroySelf()~ EXIT 

//STEP #12 - CROMWELL (optional) 

EXTEND_BOTTOM WSMITH01 13 
IF ~PartyHasItem("l#2sda1") OR(4) Global("L#2SkieDagger","GLOBAL",32) Global("L#2SkieDagger","GLOBAL",33) Global("L#2SkieDagger","GLOBAL",34) Global("L#2SkieDagger","GLOBAL",35)~ THEN GOTO L#SDDagger00 
END 

APPEND WSMITH01 
IF ~~ THEN BEGIN L#SDDagger00 
SAY @188 /* Hmm, ye've found quite an item! It's the Soultaker dagger. And it got... damaged. And changed. Quite changed. */ 
= @189 /* Well, I can try to make this sharp thing useful again. From what I can sense now, it won't work as the original blade, but... I can do my best to use that magic that's left in the gem. Huh, weird as I can also sense some other energy from it... ye did something to it? Hmm, it may be even better. I can try to make it even better with that new spark. It will cost ye 15.000 gold pieces. Interested? */ 
IF ~Global("l#2sdcromwell","GLOBAL",0) 
    PartyHasItem("l#2sda1") 
    PartyGoldGT(14999) 
    ~ THEN REPLY @190 /* Let's do it. */ DO ~SetGlobal("l#2sdcromwell","GLOBAL",1)  
                                SetGlobal("l#2sdForgeItem","GLOBAL",1) 
                                TakePartyGold(15000) 
                                DestroyGold(15000)~ GOTO 56 
                                 
IF ~~ THEN REPLY @191 /* Maybe not now. Is there something else you can forge? */ GOTO L#SDDaggerNo 
END 

IF ~~ THEN BEGIN L#SDDaggerNo  
SAY @192 /* As ye wish. Let's see what else have ye got. */ 
COPY_TRANS WSMITH01 13 
END 
END 

APPEND WSMITH01 

IF WEIGHT #-5 ~Global("l#2sdcromwell","GLOBAL",1)~ THEN BEGIN L#SDDaggerEND 
SAY @193 /* Well, there ye go, me friend. Use it well. And if ye comes across anything else of interest, visit your friend Cromwell. */ 
IF~~THEN DO ~SetGlobal("l#2sdcromwell","GLOBAL",0)~ EXIT 
END 
END
