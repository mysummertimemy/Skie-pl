
///////////////////////////////// 
///////////////////////////////// 
//////MAIN TALK + KICK OUT/////// 
///////////////////////////////// 
///////////////////////////////// 



BEGIN L#2SDSKI 

//INNITIAL TALK 

CHAIN IF ~Global("L#2SkieReturns","GLOBAL",3)~ THEN L#2SDSKI JOIN000 
@0 /* Are you awake? Hey! You thought you wouldn't see me any time soon, right? I would have been so much sooner if Amn had better roads. Way too many puddles and far too little mice-less inns! Anyway, I'm here! You missed me? */ 
END 
IF~~THEN REPLY @1 /* Skie?! What? How...? How is that even possible? I thought you were resting at your dad's mansion? */ EXTERN L#2SDSKI JOIN001 
IF~~THEN REPLY @2 /* Oh my... It's you. You know, when I saved you it wasn't because I wanted to be stalked or something. Have you been looking at me when I was sleeping? */ EXTERN L#2SDSKI JOIN002 

CHAIN L#2SDSKI JOIN001 
@3 /* Well, I rested a bit, but... I got so bored at home. So I thought: "Hey, you helped to stop Crusade, Skie, so why won't you check out on Amn now and perhaps find <CHARNAME> and say thank you." */ 
EXTERN L#2SDSKI JOIN003 

CHAIN L#2SDSKI JOIN002 
@4 /* What?! No! Of course not! I just came. Maybe not just NOW. I had to refresh myself a bit, but... now I'm here. Talking to you. Just like we did in the past. */ 
EXTERN L#2SDSKI JOIN003 

CHAIN L#2SDSKI JOIN003 
@5 /* So? What do we do now? */ 
END 
IF~~THEN REPLY @6 /* Let's start with not making me feel so damn lost. So, let's slow down a bit, and tell me, kitty, what in the Nine Hells are you doing so far away from home? */ EXTERN L#2SDSKI JOIN004 
IF~~THEN REPLY @7 /* Wait, wait, wait, wait. What are you talking about? I think I need to hear the whole story. Someone told you to find me? And do people from Baldur's Gate know that you left? */ EXTERN L#2SDSKI JOIN005 
IF~~THEN REPLY @8 /* First of all, start by being less annoying and less intrusive, Skie. Did I say I want to have anything to do with you? */ EXTERN L#2SDSKI JOIN006 

CHAIN L#2SDSKI JOIN004 
@9 /* Hehe. You have a saucy tongue, don't you? I like it. As for your question: I just wanted to find you. */ 
EXTERN L#2SDSKI JOIN007 

CHAIN L#2SDSKI JOIN005 
@10 /* No one told me to do it. And... well, they probably noticed that I'm gone. But, hey, isn't that my life? I know, I kinda died, but I don't want to stay in bed for the rest of my life because of that, you know. */ 
EXTERN L#2SDSKI JOIN007 

CHAIN L#2SDSKI JOIN006 
@11 /* I suppose I did ask for this, didn't I? I know, I was a bit of a pain back there, in Baldur's Gate and then in the camp on our way to Dragonspear, but... I'm sorry, okay? Let's just start over. */ 
EXTERN L#2SDSKI JOIN007 

CHAIN L#2SDSKI JOIN007 
@12 /* I suppose we won't get far before you hear the whole story, right? So, I woke up. Everything was just so dark, so I started to scream. Then, some handsome soldiers found me in my family crypt and they took me home to Daddy. Do you know how creepy it is to wake up in a crypt? Next to your long gone aunt? She was scary when alive, and when dead... she's so much scarier. */ 
==L#2SDSKI @13 /* Anyway, they called for clerics. I was a bit tired and I still felt weird, so... well, I just don't remember much from that time. It took me three days before I could gather my thoughts, eat something normal, or take a walk. */ 
==L#2SDSKI @14 /* But I remembered you. You saved me, right? I remember this blade and... uhm... were we inside it? Was that nightmarish place inside the dagger? */ 
END 
IF~~THEN REPLY @15 /* Yes. I got there with help of a mage. Nem. */ EXTERN L#2SDSKI JOIN008 
IF~~THEN REPLY @16 /* I think so. It was like... a demi-plane inside the dagger's gemstone. */ EXTERN L#2SDSKI JOIN009 

CHAIN L#2SDSKI JOIN008 
@17 /* You really know how to deal with all kinds of strange problems. */ 
EXTERN L#2SDSKI JOIN010 

CHAIN L#2SDSKI JOIN009 
@18 /* Demi-what? Never mind. The thing is, you saved me. */ 
EXTERN L#2SDSKI JOIN010 

CHAIN L#2SDSKI JOIN010 
@19 /* I wanted to thank you. I know about you... about that other one... the one that took my place... */ 
==L#2SDSKI @20 /* You know how it feels when you wake up and you know you had this freaky dream and you try to remember what it was about... it's hard, right? It was exactly the same, but then I remembered. */ 
END 
IF~~THEN REPLY @21 /* We travelled together, Skie. I wouldn't leave you inside the Soultaker. */ EXTERN L#2SDSKI JOIN011 
IF~~THEN REPLY @22 /* I did that to clear my own name, Skie. That was my main goal. */ EXTERN L#2SDSKI JOIN012 

CHAIN L#2SDSKI JOIN011 
@23 /* I knew it. You just like me. And... thank you. You saved me. */ 
EXTERN L#2SDSKI JOIN013 

CHAIN L#2SDSKI JOIN012 
@24 /* You... you did that only because of your reputation? I mean... it's important, too... I just thought you were a bit better than guys like Eldoth... */ 
==L#2SDSKI @25 /* But it doesn't change the fact that you saved me, does it? And that's why I should thank you. So... thanks. Really. */ 
EXTERN L#2SDSKI JOIN013 

CHAIN L#2SDSKI JOIN013 
@26 /* So, that's all. I think. I wanted to tell you all of that and just see if you're alright. You sometimes get yourself involved in some nasty stuff! But before I leave... */ 
==L#2SDSKI @27 /* You probably know that I would be REALLY happy to join you. But I know you have things to do. But if you decide that you need me, maybe let's just meet Waukeen's Promenade, okay? There are so many shops there. I'll take a look at what they've got and you'll get some time to make up your mind. */ 
==L#2SDSKI @28 /* Bye! Talk to you soon! */ 
DO ~SetGlobal("L#2SkieReturns","GLOBAL",4) EscapeAreaMove("AR0700",3325,1240,1)~ EXIT 

//TRUE JOINING DIALOGUE 

CHAIN IF ~Global("L#2SkieReturns","GLOBAL",4) Global("L#2SkieJoined","GLOBAL",0)~ THEN L#2SDSKI JOIN-T-000 
@29 /* Oh, it's you! I hoped you'd find me here. The Promenade is AMAZING. So much better than the marketplace of Baldur's Gate! Anyway, are you here to tell me to join? That would be great. */ 
END 
IF~~THEN REPLY @30 /* No. Sorry. I was just checking if you're fine. Now I've got something to do, so... */ EXTERN L#2SDSKI JOIN-T-001 
IF~~THEN REPLY @31 /* Well, actually yes. I think I could use your help, Skie. If you still want to join, that is. */ EXTERN L#2SDSKI JOIN-T-002 

CHAIN L#2SDSKI JOIN-T-001 
@32 /* You've got important things to do, I'm sure. Go on, I'll be fine. Probably. */ 
EXIT 

CHAIN L#2SDSKI JOIN-T-002 
@33 /* Oh, of course I want to join! I'm so excited! So? What now? Shopping or walking? */ 
END 
IF~Global("L#SDFocusImoen","GLOBAL",0)~THEN REPLY @34 /* You should know something. Imoen got taken by Cowled Wizards. Out top priority is saving her. We have no idea in what state she is. I don't want anything bad to happen to her. */ DO ~SetGlobal("L#SDFocusImoen","GLOBAL",1)~ EXTERN L#2SDSKI JOIN-T-003 
IF~Global("L#SDFocusIrenicus","GLOBAL",0)~THEN REPLY @35 /* Before we move on, you should know that I'm trying to find Irenicus now. After what he did to you, he did some nasty things to me. We can't just let him get away without any consequences. */ DO ~SetGlobal("L#SDFocusIrenicus","GLOBAL",1)~ EXTERN L#2SDSKI JOIN-T-003 
IF~Global("L#SDNoFocus","GLOBAL",0)~THEN REPLY @36 /* Let's start with walking. */ DO ~SetGlobal("L#SDNoFocus","GLOBAL",1)~ EXTERN L#2SDSKI JOIN-T-004 

CHAIN L#2SDSKI JOIN-T-003 
@37 /* Ugh, that mage is always doing something bad, isn't he? We must stop him. Let's just hope he doesn't have, I don't know... a spare Soultaker, for example. */ 
DO ~SetGlobal("L#2SkieJoined","GLOBAL",1) JoinParty()~ EXIT 

CHAIN L#2SDSKI JOIN-T-004 
@38 /* I knew it. It's good I took comfortable shoes this time! */ 
DO ~SetGlobal("L#2SkieJoined","GLOBAL",1) JoinParty()~ EXIT 

BEGIN L#2SDSKP 

CHAIN IF ~Global("L#2SkieJoined","GLOBAL",1) !AreaCheck("AR1512")~ THEN L#2SDSKP Leave00 
@39 /* You—you want me to leave? But why? */ 
END 
IF~~THEN REPLY @40 /* Sorry, but I don't need your help now. Go back to the Waukeen's Promenade. I'll look for you there once you're needed. */ DO ~SetGlobal("L#2SkieJoined","GLOBAL",0) EscapeAreaMove("AR0700",3325,1240,1)~ EXIT 
IF~~THEN REPLY @41 /* Sorry, but I don't need your help now. But stay here. I'll look for you here once I need your help again. */ DO ~SetGlobal("L#2SkieJoined","GLOBAL",0)~ EXIT 
IF~~THEN REPLY @42 /* On second thought, I think you should stay. */ DO ~JoinParty()~ EXIT 
 
CHAIN IF ~Global("L#2SkieJoined","GLOBAL",1) AreaCheck("AR1512")~ THEN L#2SDSKP Leave00D 
@43 /* You can't leave me alone in this—this crypt! Not that it's MUCH of a crypt. My family's is bigger than this one. And better kept. */ 
END 
IF~~THEN REPLY @44 /* Sorry, but I need to take care of Imoen. You should understand it. Go back to the Waukeen's Promenade. I'll look for you there once you're needed. */ DO ~SetGlobal("L#2SkieJoined","GLOBAL",0) EscapeAreaMove("AR0700",3325,1240,1)~ EXIT 
IF~~THEN REPLY @45 /* On second thought, I think you should stay. Go back to the formation. */ DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("L#2SkieJoined","GLOBAL",0)~ THEN L#2SDSKP Back00 
@46 /* It's you! Tell me that you want me back! We can do great stuff together! */ 
END 
IF~~THEN REPLY @47 /* Sorry, but no. */ EXIT 
IF~~THEN REPLY @48 /* Yes. We should work together again. Come, Skie. */ DO ~JoinParty() SetGlobal("L#2SkieJoined","GLOBAL",1)~ EXIT 


//JOINING DIALOGUE + KICK OUT - TOB 


BEGIN L#2SD25 

CHAIN IF ~Global("L#2SkieJoined","GLOBAL",0)~ THEN L#2SD25 SkieJoinToB-00 
@50 /* Hey! What—I was in the shop and... */ 
==L#2SD25 @51 /* ...is this Hell again? <CHARNAME>, I was to get a discount on a brand new cloak. */ 
END 
IF~~THEN REPLY @52 /* I'm sorry, Skie, but I need your help again. Things are yet again getting serious. */ EXTERN L#2SD25 SkieJoinToB-01 
IF~~THEN REPLY @53 /* Whoops, I think I ordered the Fate Spirit to call the wrong person. Sorry. */ EXTERN L#2SD25 SkieJoinToB-02 

CHAIN L#2SD25 SkieJoinToB-01 
@54 /* Oh, you just can't live without me, can you? Of course you can't. */ 
==L#2SD25 @55 /* Fine, I'll join you. But you owe me a nice cloak, you know! */ 
DO ~SetGlobal("L#2SkieJoined","GLOBAL",1) JoinParty()~ EXIT 

CHAIN L#2SD25 SkieJoinToB-02 
@56 /* Oh, you must be joking... */ 
DO ~MoveToPoint([1929.1428])~ EXIT 

BEGIN L#2SD25P 

CHAIN IF ~Global("L#2SkieJoined","GLOBAL",1)~ THEN L#2SD25P LeaveToB00 
@57 /* Hey, you—you want me to leave? But why? */ 
END 
IF~~THEN REPLY @58 /* Sorry, but I don't need your help now. But stay here. I'll look for you once I need your help again. */ DO ~SetGlobal("L#2SkieJoined","GLOBAL",0)~ EXIT 
IF~~THEN REPLY @42 /* On second thought, I think you should stay. */ DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("L#2SkieJoined","GLOBAL",0)~ THEN L#2SD25P BackToB00 
@46 /* It's you! Tell me that you want me back! We can do great stuff together! */ 
END 
IF~~THEN REPLY @47 /* Sorry, but no. */ EXIT 
IF~~THEN REPLY @48 /* Yes. We should work together again. Come, Skie. */ DO ~JoinParty() SetGlobal("L#2SkieJoined","GLOBAL",1)~ EXIT 



//////////////////////////////// 
//////////////////////////////// 
/////Banters - SOA + TOB//////// 
//////////////////////////////// 
//////////////////////////////// 



BEGIN L#2SDSKB 
BEGIN L#2SD25B 


////Aerie 

CHAIN IF ~InParty("AERIE") 
See("AERIE") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("AERIE",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieAerie","GLOBAL",0)~ THEN L#2SDSKB Aerie2Skie1 
@59 /* Hey, you know I've met Quayle before? */ 
DO ~SetGlobal("L#2SDSkieAerie","GLOBAL",1)~ 
==BAerie IF ~!Dead("QUAYLE")~ THEN @60 /* Really? You should visit him at the circus sometimes, then! He's always happy to see his friends around. */ 
==BAerie IF ~Dead("QUAYLE")~ THEN @61 /* Really? If he... only was still alive. I'm sure he would be more than pleased to meet one of his old friends... */ 
==L#2SDSKB IF ~!Dead("QUAYLE")~ THEN @62 /* Is he still that wrinkled? He was always SO wrinkled. Actually, there was a time I thought he was made of nothing but wrinkles. */ 
==L#2SDSKB IF ~Dead("QUAYLE")~ THEN @62 /* Is he still that wrinkled? He was always SO wrinkled. Actually, there was a time I thought he was made of nothing but wrinkles. */ 
==BAerie IF ~!Dead("QUAYLE")~ THEN @63 /* He's still wrinkled. I actually think he likes those wrinkles... */ 
==BAerie IF ~Dead("QUAYLE")~ THEN @64 /* I know what you mean. I actually think he liked those wrinkles... */ 
==L#2SDSKB IF ~!Dead("QUAYLE")~ THEN @65 /* Maybe he just wants to look like a brain himself. Well, knowing him, it's not THAT impossible, right? */ 
==L#2SDSKB IF ~Dead("QUAYLE")~ THEN @66 /* Maybe he just wanted to look like a brain himself. Well, knowing him, it's THAT impossible, right? */ 
==BAerie @67 /* Well... */ 
==L#2SDSKB @68 /* I knew it! Ah, wrinkled Quayle... */ 
==L#2SDSKB @69 /* The only thing I don't miss about him is the homework he would always give me to "make my brain grow big and strong". */ 
EXIT
 
CHAIN IF ~InParty("AERIE") 
See("AERIE") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("AERIE",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieAerie","GLOBAL",1)~ THEN L#2SDSKB Aerie2Skie2 
@70 /* Aerie... Isn't it hard to take care of that hair? I mean, there's so much going out there. */ 
DO ~SetGlobal("L#2SDSkieAerie","GLOBAL",2)~ 
==BAerie @71 /* It may take a moment, yes, but with those laces and beadings... I just feel myself. */ 
==L#2SDSKB @72 /* Oh, don't take me wrong! It's not that I don't like them. Well, maybe that's not something I would wear myself, but they're fine with me! Oh, I once met a woman from Chult who would make these astonishing barrettes! You would love them! */ 
==BAerie @73 /* I actually have no barrettes— */ 
==L#2SDSKB @74 /* And that's why you should have one! Perhaps once we're done here, we can look for one that would match your... style. */ 
==BAerie @75 /* I'm... I'm not sure what to say. */ 
==L#2SDSKB @76 /* Then just agree, silly. Oh, you don't even have to say anything. But we'll need some time to find something. But we do take breaks from all that work, right? */ 
==L#2SDSKB @77 /* Oh, I bet <CHARNAME> will understand if we just disappear for an hour or two. */ 
EXIT 

CHAIN IF ~InParty("AERIE") 
See("AERIE") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("AERIE",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieAerie","GLOBAL",2)~ THEN L#2SDSKB Aerie2Skie3 
@78 /* Aerie, I was thinking, and... I thought I would tell you that it's not that I like you only because we can talk about hair and things like that. I think you're a really strong woman! You just need someone to believe in you! */ 
DO ~SetGlobal("L#2SDSkieAerie","GLOBAL",3)~ 
==BAerie @79 /* I... thank you, Skie. It's really nice of you. I'm really doing my best. */ 
==L#2SDSKB @80 /* I know. You do not give up easily. I know it's easier to be strong when someone tells you that he or she believes in you and... well, never mind. I just wanted you to know! */ 
==L#2SDSKB @81 /* Anyway, let's get back to work now. I want everything done as soon as possible and finally have some nice rest in a nice place. Away from mud and puddles and all other dirty things. Oh, and I'd LOVE to take a hot bath. Mmm. */ 
EXIT

// Aerie ToB 

CHAIN IF ~Global("L#2SDSkieAerieTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("AERIE") 
See("AERIE") 
!StateCheck("AERIE",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Aerie2SkieTOB_01 
  @82 /* It's been a while since you saw Quayle, right? You must kinda miss him. */ 
  DO ~SetGlobal("L#2SDSkieAerieTOB","GLOBAL",1)~ 
  == BAerie25 @83 /* I suppose... but I also guess you are no different. Baldur's Gate is far away from here and you haven't slept in your own bed for weeks. */ 
  == L#2SD25B @84 /* Oh, my bed would feel so good and I wouldn't need to worry about bugs or dirty taverns... */ 
  == L#2SD25B @85 /* But on the other hand if I were to go back to all those dull duties... well, I'm quite happy to be FAR away from Baldur's Gate. */ 
  == Baerie25 @86 /* And your father? Don't you miss him? */ 
  == L#2SD25B @87 /* Well. I do. I guess. But if I go back, I would need to listen to his tirade. Probably it would go something like: "You are irresponsible, Skie! You should have sent me letters so I knew you were fine and that I still have a daughter. You know how bad I felt when I thought I lost you!" */ 
  == BAerie25 @88 /* But... isn't that understandable? He must be really afraid that he might have lost you again. */ 
  == L#2SD25B @89 /* I suppose... But I don't want to live the life of a noble. At least not in the way people expect me to! */ 
  == BAerie25 @90 /* But a letter wouldn't hurt... would it? */ 
  == L#2SD25B @91 /* I guess it wouldn't. FINE. I'll send him a letter. I suppose he should know I'm fine. */ 
EXIT 

////Anomen 

CHAIN IF ~InParty("ANOMEN") 
See("ANOMEN") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("ANOMEN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieAnomen","GLOBAL",0)~ THEN L#2SDSKB Anomen2Skie1 
@92 /* Ugh, you're really boring, you know? Do you EVER do thing for fun? */ 
DO ~SetGlobal("L#2SDSkieAnomen","GLOBAL",1)~ 
==BAnomen @93 /* Duty isn't about fun, Skie. You should know that. I heard about your father. A truly noble and responsible man. */ 
==L#2SDSKB @94 /* Well, Daddy IS great, but... it's good to find some time to have fun, meet some friends. Have some hand care. By the way, you have some really nasty hands, Anomen. Buy yourself a cream or something. */ 
==BAnomen @95 /* Excuse me? */ 
==L#2SDSKB @96 /* Oh, just look at them! How are you going to find a girl, or a boy, with hands like that! */ 
==BAnomen @97 /* My hands and my love life are only my business, Skie Silvershield. I would like to keep it that way, if you don't mind. */ 
==L#2SDSKB @98 /* Well, we can have it your way. I just wanted to be honest with you. */ 
EXIT 

CHAIN IF ~InParty("ANOMEN") 
See("ANOMEN") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("ANOMEN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieAnomen","GLOBAL",1)~ THEN L#2SDSKB Anomen2Skie2 
@99 /* Hey, Anomen! Hey! Hey, Anomen! */ 
DO ~SetGlobal("L#2SDSkieAnomen","GLOBAL",2)~ 
==BAnomen @100 /* What do you need again... */ 
==L#2SDSKB @101 /* Nothing. */ 
==BAnomen @102 /* So why in Helm's grace are you making all that noise, Skie? */ 
==L#2SDSKB @103 /* I wanted to make sure you were still alive. You're so stiff I started to worry that you might have died or something. */ 
EXIT 

////Anomen ToB 

CHAIN IF ~Global("L#2SDSkieAnomenTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("ANOMEN") 
See("ANOMEN") 
!StateCheck("ANOMEN",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Anomen2SkieTOB_01 
  @104 /* Wanna talk, Anomen? */ 
  DO ~SetGlobal("L#2SDSkieAnomenTOB","GLOBAL",1)~ 
  == BAnome25 @105 /* Why, Skie? I understood your message last time we talked. You find me boring. I am not going to try to change your mind. */ 
  == L#2SD25B @106 /* About that. Eh, you know, you could be a bit different sometimes. BUT -- and I don't believe I'm saying this -- I'm sorry. */ 
  == L#2SD25B @107 /* Fine, you're not fun. But I suppose you help <CHARNAME> a lot. So I suppose you're alright. I guess Daddy would like you. Both of you are serious about duty. */ 
  == BAnome25 @108 /* Thank you, Skie. That's very mature of you. */ 
  == L#2SD25B @109 /* Mhm. But let's move on on. I'm REALLY not used to that kind of talks. */ 
EXIT 

////Cernd 

CHAIN IF ~InParty("CERND") 
See("CERND") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("CERND",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieCERND","GLOBAL",0)~ THEN L#2SDSKB Cernd2Skie1 
@110 /* You know so much about herbs! Have you ever thought of starting a shop with some nice natural creams and ointments? */ 
DO ~SetGlobal("L#2SDSkieCERND","GLOBAL",1)~ 
==BCernd @111 /* As much as I appreciate that you hold me in high esteem, I believe city soil belongs with better roots than those of this oak, Skie. */ 
==L#2SDSKB @112 /* Oh... a pity. You know, there are very little people who can make a proper aloe ointment that wouldn't smell weird and I believe you would be capable of making such a thing. And I could even tell people. Who wouldn't believe the daughter of Entar Silvershield? */ 
==BCernd @113 /* I believe there aren't many people who wouldn't trust you, Skie. */ 
==L#2SDSKB @114 /* Oh, that's so sweet of you! */ 
EXIT 

CHAIN IF ~InParty("CERND") 
See("CERND") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("CERND",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieCERND","GLOBAL",1)~ THEN L#2SDSKB Cernd2Skie2 
@115 /* Hey, maybe you'll teach me how to make some ointments? If you're not going to give the shop a chance, perhaps I should practice while I can ask you for advice and... and that would be great! Oh, just imagine it: Silvershield, new ointment by Skie Silvershield! */ 
DO ~SetGlobal("L#2SDSkieCERND","GLOBAL",2)~ 
==BCernd @116 /* Yes, I may teach you about herbs and combining them, Skie. How you're going to use that knowledge, I will leave to you. I can hope the results will be fruitful. */ 
==L#2SDSKB @117 /* Oh, thank you! Maybe I should name something after you... */ 
==L#2SDSKB @118 /* Cedar Cernd, new hair emulsion by Skie Silvershield. Hmm, I think I like the sound of it! */ 
EXIT 
 
////Cernd ToB 

CHAIN IF ~Global("L#2SDSkieCerndTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("CERND") 
See("CERND") 
!StateCheck("CERND",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Cernd2SkieTOB_01 
  @119 /* Hey, Cernd! I did it! I made my very first ointment! And it DOESN'T smell bad! */ 
  DO ~SetGlobal("L#2SDSkieCerndTOB","GLOBAL",1)~ 
  == BCernd25 @120 /* I'm happy you managed to put the knowledge I shared with you to use, Skie. I hope that it will bloom now and you will become even better than you expected. */ 
  == L#2SD25B @121 /* You really believe that much in me? I mean, of course you do. I just—wanted to say thanks. */ 
  == L#2SD25B @122 /* Here. Take it. I want you to have it. It should work well on tired muscles. And it smells of plum blossoms! You wouldn't believe how much it took me to get that flower oil. */ 
  == BCernd25 @123 /* Thank you, Skie. I'll keep it and use it when my muscles need recovery. */ 
EXIT 

////Edwin 

CHAIN IF ~InParty("EDWIN") 
See("EDWIN") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("EDWIN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEdwin","GLOBAL",0)~ THEN L#2SDSKB Edwin2Skie1 
@124 /* Edwin, who's doing your piercing? */ 
DO ~SetGlobal("L#2SDSkieEdwin","GLOBAL",1)~ 
==BEdwin @125 /* What an absurd question is that, simian? Bah, don't ask about things that do not concern you! (Why is she even talking to me? Pathetic thing with competencies of... of a sleeping baboon!) */ 
==L#2SDSKB @126 /* I asked because last time I saw you had less of those! I'm just wondering if you have more of those here and there— */ 
==L#2SDSKB @127 /* Well, On second thought, I don't want to know. Keep that secret wisdom to yourself. */ 
EXIT 

CHAIN IF ~InParty("EDWIN") 
See("EDWIN") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("EDWIN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieEdwin","GLOBAL",0)~ THEN L#2SDSKB Edwin2Skie2 
@128 /* You know, I always liked Dynaheir more than you, Edwin. You're always so bossy. And frustrated. */ 
DO ~SetGlobal("L#2SDSkieEdwin","GLOBAL",1)~ 
==BEdwin @129 /* Bah! So why don't you join her in whatever hell she is in right now, foolish girl? (It would be such a pleasure to see you both burn at the same time.) */ 
==L#2SDSKB @130 /* But then who would stay here and remind you that red isn't this color's season? And that you are as good a fashion figure as a... dead hedgehog or something. */ 
==L#2SDSKB @131 /* In other words: you look bad and no one likes you, Edwin. */ 
==BEdwin @132 /* And why should that bother me, girl? */ 
==L#2SDSKB @133 /* Well, maybe because I am the one who deals with traps and I may, by accident, forget to deal with one that's on your way, mister duffus. */ 
EXIT 

////Edwin ToB 

CHAIN IF ~Global("L#2SDSkieEdwinTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("EDWIN") 
See("EDWIN") 
!StateCheck("EDWIN",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Edwin2SkieTOB02 
  @134 /* Well, Irenicus may be dead, but we still have this particularly un-stylish Red Wizard in the group. */ 
  DO ~SetGlobal("L#2SDSkieEdwinTOB","GLOBAL",1)~ 
  == BEdwin25 @135 /* Ah, did you expect me to magically disappear from your worthless life, Silvershield? In your dreams. (She probably thinks that only she should benefit from doing all this work. Never, I deserve that gold and power more than she does...) */ 
  == L#2SD25B @136 /* I just hope you won't repeat his mistakes. If we stopped Irenicus, we can also stop someone like you, mister duffus. */ 
  == BEdwin25 @137 /* Call me a duffus one more time, worthless baboon, and I'll make sure you will be the one to NEVER make any mistake. Ever. */ 
  == L#2SD25B @138 /* Pff! You know it wouldn't end well for you, right? Of course you do. */ 
EXIT 

////Haer'Dalis 

CHAIN IF ~InParty("haerdalis") 
See("haerdalis") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("haerdalis",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkiehaerdalis","GLOBAL",0)~ THEN L#2SDSKB Haerda2Skie1 
@139 /* ...they—I don't even want to think about it—they made, they made me... CLEAN. I had to mop up blood and vomit and, and, and, oh gods, gods—! I had to empty the bedpans for the wounded. Eugh! */ 
DO ~SetGlobal("L#2SDSkiehaerdalis","GLOBAL",1)~ 
==BHaerda @140 /* Ah, my loud berrypecker, that must have been a horrifying experience for you. Somehow, and mind me if I got something terribly wrong, shouldn't you have been more scared because you were held by that Crusade instead of being disappointed with benign chores they forced you to do? */ 
==L#2SDSKB @141 /* You just weren't there. All this smelly goo! And... and dirty soldiers! And that THING in the barrels! Oh, that thing was the WORST. */ 
==BHaerda @142 /* And what kind of horror would they keep inside them, Skie? */ 
==L#2SDSKB @143 /* They—ah, I can't even say it... */ 
==L#2SDSKB @144 /* It was the—the old musty barley soup! They would EAT BARLEY SOUP. Old and musty. Ugh! */ 
==BHaerda @145 /* Pure horror, berrypecker! Pure horror! */ 
EXIT 

CHAIN IF ~InParty("haerdalis") 
See("haerdalis") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("haerdalis",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkiehaerdalis","GLOBAL",1)~ THEN L#2SDSKB Haerda2Skie2 
@146 /* You're a true artist, Haer'Dalis! It's hard not to admire you! The voice! The acting! You're SO much better than Eldoth. */ 
DO ~SetGlobal("L#2SDSkiehaerdalis","GLOBAL",2)~ 
==BHaerda @147 /* Eldoth the...? */ 
==L#2SDSKB @148 /* ...the man I fell for. Oh, I was so naive! I liked him once and some time later he just left with some harlot. He couldn't even tell the difference between a good wine and... and some old musty juice! */ 
==BHaerda @149 /* And I better than him. Well, you must think of me "highly" then, Skie Silvershield. */ 
==L#2SDSKB @150 /* Well... maybe I should have said it differently. You're much better. You look good and move with grace... and... and you can do everything he couldn't! */ 
==BHaerda @151 /* Fine berrypecker, I won't tease with you any more. Aye, I know what you meant. And what else can I say. A pity you were so unlucky to have met a caricature of a man. */ 
==L#2SDSKB @152 /* A caricature of a man... What a suitable name! Oh, you're so good with words! */ 
==BHaerda @153 /* Ah, words are after all this sparrow's domain. Doubt not in those and he shall tell you about miracles Eldoth have never dreamed of. */ 
==L#2SDSKB @154 /* I'd love that! */ 
EXIT 

////Haer'Dalis ToB 

CHAIN IF ~Global("L#2SDSkieHaerdalisTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("HAERDALIS") 
See("HAERDALIS") 
!StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Haerda2SkieTOB_01 
  @155 /* Hey! Hear'Dalis! May I ask you something? */ 
  DO ~SetGlobal("L#2SDSkieHaerdalisTOB","GLOBAL",1)~ 
  == BHaerd25 @156 /* Who would I be if I did not allow you to ask your question, Skie? What do you need this time, berrypecker? Are you hoping to hear a new story that this sparrow has to offer? */ 
  == L#2SD25B @157 /* Well, I would love to hear a story. You know I like them, but I would like to ask you abut something else this time. */ 
  == BHaerd25 @158 /* I'm all ears, Skie. What do you need? */ 
  == L#2SD25B @159 /* Do you think you could show me some other plane? I would REALLY like to see some place I have never seen before and... and you know, I have a plane-walking friend so I though I should give it a try and ask. So? Will you? Please? */ 
  == BHaerd25 @160 /* Ah, berrypecker, your curiosity and will to travel know no limits! I can promise that if it is possible, I will make you and offer. But we both know that fate can be quite capricious. */ 
  == L#2SD25B @161 /* Oh, thank you! I guess that knowing it's not impossible is already great! Daddy would never believe me if I told him! */ 
EXIT 

////Imoen 

CHAIN IF ~InParty("imoen2") 
See("imoen2") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("imoen2",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieImoen","GLOBAL",0)~ THEN L#2SDSKB Imoen2Skie1 
@162 /* It's so good to see you alive, Imoen! Jannath would burn the whole of Amn if something happened to you. I once saw her mad. Even Daddy tried to avoid her that day! */ 
DO ~SetGlobal("L#2SDSkieImoen","GLOBAL",1)~ 
==BImoen2 @163 /* I'm happy to see you alive too... I'm glad <CHARNAME> found a way to get you out of the Soultaker. It must have been weird for you to be inside that blade. */ 
==L#2SDSKB @164 /* It was weird, but... are you feeling alright? */ 
==BImoen2 @165 /* Yes, it's just... I couldn't sleep. And I'm a bit tired. But it's gonna be fine. No worries. */ 
==L#2SDSKB @166 /* I know the feeling, Imoen. Like really. You know... if you ever want to talk to somebody about what have happened... */ 
==BImoen2 @167 /* Thanks, Skie. And yeah, I can believe that you know the feeling. Let's just make sure he won't do that kind of nasty things to anyone else. */ 
==L#2SDSKB @168 /* Of course! He won't get away next time. I promise! */ 
EXIT 

CHAIN IF ~InParty("imoen2") 
See("imoen2") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("imoen2",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieImoen","GLOBAL",1)~ THEN L#2SDSKB Imoen2Skie2 
@169 /* That thing you did to our last enemy: it was just wow, Imoen. I didn't know Jannath is such a good teacher! Who would have guessed. I thought she was just some... terrifying bookworm! Not that I don't like her, she's just a bit... scary. */ 
DO ~SetGlobal("L#2SDSkieImoen","GLOBAL",2)~ 
==BImoen2 @170 /* Heh, and can't she be both a good teacher and "terrifying bookworm", as you called her? */ 
==L#2SDSKB @171 /* If she's both, then she's even scarier than I thought! */ 
EXIT

////Imoen ToB 

CHAIN IF ~Global("L#2SDSkieImoenTOB","GLOBAL",0) 
CombatCounter(0) 
AreaCheck("AR4500") // Pocket Plane 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("IMOEN2") 
See("IMOEN2") 
!StateCheck("IMOEN2",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Imoen2SkieTOB_01 
  @172 /* You know, I'm happy to know that freakish mage is dead. He did nasty things to both of us. He deserved it. */ 
  DO ~SetGlobal("L#2SDSkieImoenTOB","GLOBAL",1)~ 
  == BIMOEN25 @173 /* Irenicus did horrible things. Really horrible. But it felt weird when we found out Ellesime once had feelings for him. And that maybe he had feelings for her. */ 
  == L#2SD25B @174 /* You know, I loved Eldoth once. Sometimes love can make us do, think, and feel weird things. I suppose elves are no different. */ 
  == BIMOEN25 @175 /* Yeah, I guess they're not. */ 
EXIT 

////Jaheira 

CHAIN IF ~InParty("jaheira") 
See("jaheira") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("jaheira",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieJaheira","GLOBAL",0)~ THEN L#2SDSKB Jaheira2Skie1 
@176 /* Uhm, weren't you travelling with that tall guy, Jaheira? You know, the one with armor and a shield. Khalar? Khaji? */ 
DO ~SetGlobal("L#2SDSkieJaheira","GLOBAL",1)~ 
==BJaheir @177 /* His name was Khalid, Skie. */ 
==L#2SDSKB @178 /* Was? Does it mean... */ 
==L#2SDSKB @179 /* I'm really sorry! I didn't mean to... Ugh... why haven't I guessed. I thought that maybe he's just taking care of something else... */ 
==BJaheir @180 /* I know. We just... */ 
==BJaheir @181 /* We should make sure his death wasn't for nothing, child. */ 
EXIT 

CHAIN IF ~InParty("jaheira") 
See("jaheira") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("jaheira",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieJaheira","GLOBAL",1)~ THEN L#2SDSKB Jaheira2Skie2 
@182 /* May I ask you about Khalid, Jaheira? */ 
DO ~SetGlobal("L#2SDSkieJaheira","GLOBAL",2)~ 
==BJaheir @183 /* Fine. Ask, Skie. */ 
==L#2SDSKB @184 /* Did he die because of Irenicus? Did he die because of that... creep? */ 
==BJaheir @185 /* Yes. We found him in his dungeon. But... we barely recognized him. That monster Irenicus will pay for everything he has done. */ 
==L#2SDSKB @186 /* You've got my full support, Jaheira. There are a few tricks I would like to show him myself. I can show them in Khalid's name, too, you know. */ 
==BJaheir @187 /* Thank you, Skie. But let's not allow rage to blind us. If we want to win with him, we must act thoughtfully. I don't want anyone else to join my husband. */ 
EXIT 

////Jaheira 


CHAIN IF ~Global("L#2SDSkieJaheiraTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("JAHEIRA") 
See("JAHEIRA") 
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Jaheira2SkieTOB_01 
  @188 /* Hey, Jaheira! Do you think you'll pay Baldur's Gate a visit once it's all over? Perhaps you could tell Daddy that I did good? */ 
  DO ~SetGlobal("L#2SDSkieJaheiraTOB","GLOBAL",1)~ 
  == BJahei25 @189 /* I haven't been making any plans. It may also depends on <CHARNAME>, Harpers, and some other factors, Skie. Why don't you tell your father yourself that you became a respected adventurer? */ 
  == L#2SD25B @190 /* And if he won't believe me? */ 
  == BJahei25 @191 /* People already tell tales about <CHARNAME>. You are too part of those tales. I am quite sure he will believe you. */ 
  == L#2SD25B @192 /* Maybe you're right. But wouldn't you like to visit Baldur's Gate at least to see me? We could go somewhere? You don't want to forget about the Silvershield girl, right? */ 
  == BJahei25 @193 /* No, Skie. I don't. And fine. If we'll both be in Baldur's Gate at the same time, I will let you know. I guess it won't hurt me. */ 
  == L#2SD25B @194 /* Great! Maybe we'll go shopping— */ 
  == BJahei25 @195 /* ... */ 
  == L#2SD25B @196 /* Or we can just talk or something. */ 
  == BJahei25 @197 /* Thank you. */ 
  == BJahei25 @198 /* Let's go now, child. This story isn't over yet. */ 
EXIT 

////Jan 
 
CHAIN IF ~InParty("l#2sdskie") 
See("l#2sdskie") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("jan",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieJan","GLOBAL",0)~ THEN BJAN Jan2Skie1 
@199 /* You don't look well, Skie! You don't look well at all. A turnip cap left in the sun for a week. And believe me, I saw this when we tried to dry it for the very first time with little Pico. That did not went well. */ 
DO ~SetGlobal("L#2SDSkieJan","GLOBAL",1)~ 
==L#2SDSKB @200 /* No, no, no. No. No, no. Ugh, does my skin already look dry? I'm just... so thirsty. I ran out of water. */ 
==BJan @201 /* Ah, you should just have told me, little Silvershield, I should have something to drink over— */ 
==L#2SDSKB @202 /* —yes! Please, just give me that. Finally something to drink... */ 
==L#2SDSKB @195 /* ... */ 
==L#2SDSKB @203 /* WHAT'S THAT TASTE?! BLEGH! */ 
==BJan @204 /* Oh, it's turnip juice. It will make your skin smooth and moist and beautiful! It's really healthy. Just look at me. Have you ever seen a single bad thing happening to my skin— */ 
==L#2SDSKB @205 /* You should have warned me! Ughee... I JUST WANTED SOME WATER. */ 
==L#2SDSKB @206 /* How do I get rid of that taste? Someone just kill me... Please... */ 
EXIT 

CHAIN IF ~InParty("l#2sdskie") 
See("l#2sdskie") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("jan",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieJan","GLOBAL",1)~ THEN BJAN Jan2Skie2 
@207 /* I've got something for you, Skie! */ 
DO ~SetGlobal("L#2SDSkieJan","GLOBAL",2)~ 
==L#2SDSKB @208 /* NO! I don't want anything from you, Jan! EVER. */ 
==BJan @209 /* Oh, are you still mad because of that turnip juice? I told you, it's really healthy. By the way, it may be also used as a lotion for your hair. I guarantee that your beautiful long hair will become shiny and their color. Oh, their color will be even deeper and just breathtaking! */ 
==L#2SDSKB @210 /* I bet they would be breathtaking! The stench would take away any breath in a blink of an eye! */ 
EXIT

////Jan ToB 

CHAIN IF ~Global("L#2SDSkieJanTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("JAN",CD_STATE_NOTVALID) 
InParty("L#2SDSkie") 
See("L#2SDSkie") 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ 
THEN BJAN25 Jan2SkieTOB_01 
  @211 /* Skie, I was thinking about something. Perhaps, when we're done with the problem of the children of Bhaal, I should start my own shop in Baldur's Gate. Would you or your father be interested in sponsorship? I can guarantee high quality of all my product! */ 
  DO ~SetGlobal("L#2SDSkieJanTOB","GLOBAL",1)~ 
  == L#2SD25B @212 /* But your products are far from great, Jan. I can still remember the taste of that turnip juice. Even thinking about it gives me shivers... */ 
  == BJAN25 @213 /* Oh, but that was an old recipe. I've made a new one for you to try! I'll remember to give you a sample once it's ready, so you could see, or rather taste, yourself, that Jansen's products and the Jansens themselves are dependable! */ 
  == L#2SD25B @214 /* Please, no! I'll agree to anything, but NEVER make me drink that juice before! Nor the one made with the old recipe nor that new one. */ 
  == BJAN25 @215 /* Ah, so we have a deal! Splendid! I should prepare a contract! I'm sure you'll never regret this decision, Skie! My products will make us well recognized in the business. */ 
  == L#2SD25B @216 /* Well, that's what I am afraid of... Maybe... let's do it differently. I will be a silent partner. No one should know that I have ANYTHING to do with it. */ 
  == L#2SD25B @217 /* Like EVER. */ 
EXIT 

////Keldorn 

CHAIN IF ~InParty("keldorn") 
See("keldorn") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("keldorn",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieKeldorn","GLOBAL",0)~ THEN L#2SDSKB Keldorn2Skie1 
@218 /* You know, you remind me of Daddy, Keldorn. Can you do something for me? */ 
DO ~SetGlobal("L#2SDSkieKeldorn","GLOBAL",1)~ 
==BKeldor @219 /* It depends on what you want me to do, lady Silvershield. Tell me more and I should tell you. */ 
==L#2SDSKB @220 /* Could you say something like: @223 /* You should GROW UP, Skie, and please—please at least consider eating these sprouts! */ */ 
==BKeldor @221 /* Do you really want me to do that, Skie? */ 
==L#2SDSKB @222 /* Yes, come on! Give it a try. */ 
==BKeldor @223 /* You should GROW UP, Skie, and please—please at least consider eating these sprouts! */ 
==L#2SDSKB @224 /* Remarkable... */ 
==L#2SDSKB @225 /* If you only had his accent, you two could be taken for brothers! Hey, maybe I SHOULD call you uncle? */ 
==BKeldor @226 /* I believe that could give people a wrong impression, lady Silvershield. Well, it would be a pleasure to have a niece like yourself, but in the end, we're just companions. */ 
==BKeldor @227 /* But allow me to say, Skie, that I am indeed glad to have you around. You're a gifted young girl. */ 
==L#2SDSKB @228 /* Oh, thank you! You really think that? And you're a fantastic unc—sir. Smarter and nicer than many knights! */ 
EXIT 

CHAIN IF ~InParty("keldorn") 
See("keldorn") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("keldorn",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieKeldorn","GLOBAL",1)~ THEN L#2SDSKB Keldorn2Skie2 
@229 /* Could you tell me something, Keldorn? */ 
DO ~SetGlobal("L#2SDSkieKeldorn","GLOBAL",2)~ 
==BKeldor @230 /* As before, tell me how can I help you, Skie. If I can help, I probably will. */ 
==L#2SDSKB @231 /* You know, I heard many stories about... fighting wyverns and training. My dad would ALWAYS tell those stories and... most people loved them. I just want to ask you a question. */ 
==L#2SDSKB @232 /* Why do people always think I can't be as good as him? Is it something with my hands? Or that I have smaller back or something? They don't think I can do great things without being... big and hairy or something? */ 
==BKeldor @233 /* I'm afraid many people underestimate certain people. They may think of you as of just, and excuse me the term, some noble-girl. */ 
==BKeldor @234 /* Well, I kinda am a noble. No matter how boring that sounds. */ 
==L#2SDSKB @235 /* But... it's so stupid! And unfair! */ 
==BKeldor @236 /* Now that I believe you can grow to be great. You already helped to save many people. You have great potential, Skie Silvershield. */ 
==L#2SDSKB @237 /* Okay, I don't do that often, but you REALLY deserve that. Come, I owe you a hug! */ 
==L#2SDSKB @238 /* Thanks, Keldorn. I do appreciate what you said. */ 
EXIT

////Keldorn ToB 

CHAIN IF ~Global("L#2SDSkieKeldornTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("KELDORN") 
See("KELDORN") 
!StateCheck("KELDORN",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Keldorn2SkieTOB_01 
  @239 /* Hmm, I think your hair got even whiter, Keldorn. Have you ever thought of dyeing it? I heard about some special lotions from Kara-Tur that could help. */ 
  DO ~SetGlobal("L#2SDSkieKeldornTOB","GLOBAL",1)~ 
  == BKeldo25 @240 /* Well, I appreciate your will to help me hide my age, Skie, but it is no secret. I'm not a youngster anymore. */ 
  == L#2SD25B @241 /* But don't you want to at least give it a try? */ 
  == BKeldo25 @242 /* Let's just say that I do like my age and whatever comes with it, young lady Silvershield. Do you think it's acceptable? */ 
  == L#2SD25B @243 /* Fine, I suppose it is... */ 
EXIT 

////Korgan 

CHAIN IF ~InParty("l#2sdskie") 
See("l#2sdskie") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("korgan",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieKorgan","GLOBAL",0)~ THEN BKorgan Korgan2Skie1 
@244 /* Har! I bet Daddy never taught ye 'bout fightin'. Yer small, with small hands and arms, Skie. How don't ye break when the wind blows damn hard? */ 
DO ~SetGlobal("L#2SDSkieKorgan","GLOBAL",1)~ 
==L#2SDSKB @245 /* Excuse me? Uh, I don't think I understood ANYTHING you just said, dwarf. Hasn't your mummy taught you how speak properly? */ 
==BKorgan @246 /* Har, har! Someone has a sharp tongue, eh? Ye won't kill anyone with that tongue, girlie! */ 
==L#2SDSKB @247 /* Okay, call me a girlie ONE MORE TIME and I will just... */ 
==BKorgan @248 /* Ye will do what... eh? */ 
==L#2SDSKB @249 /* I will CUT that beard of yours and... and put some weird paint on what's left! */ 
==L#2SDSKB @250 /* Oh, that would be something. Anyway, just keep your distance and your beard will be safe, dwarf. */ 
EXIT 

CHAIN IF ~InParty("korgan") 
See("korgan") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("korgan",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieKorgan","GLOBAL",1)~ THEN L#2SDSKB Korgan2Skie2 
@251 /* Ugh, what's that? What in the Nine Hells are you eating? It smells so bad! */ 
DO ~SetGlobal("L#2SDSkieKorgan","GLOBAL",2)~ 
==BKorgan @252 /* Eh? That? I cooked the little thin' that crawled near the camp. Ye want a bite, girl? */ 
==L#2SDSKB @253 /* No! Take it away from me! I thought you were eating... a hedgehog. Ugh, and looking at it, I wouldn't be surprised if that actually WAS a hedgehog. */ 
==L#2SDSKB @254 /* I think I'll throw up or something. */ 
EXIT

////Korgan ToB 

CHAIN IF ~Global("L#2SDSkieKorganTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("KORGAN",CD_STATE_NOTVALID) 
InParty("KORGAN") 
See("KORGAN") 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Korgan2SkieTOB_01 
  @255 /* Ugh, I think you got even smellier than before, Korgan. How is that even possible? */ 
  DO ~SetGlobal("L#2SDSkieKorganTOB","GLOBAL",1)~ 
  == BKorga25 @256 /* Har, har! With all th' work and Bhaalspawnin' I am more like two ol' Korgans! Yer get it? So I sweat like two me! Har, har! Tha' was a good one! */ 
  == L#2SD25B @257 /* Uhm was that supposed to be a joke? */ 
  == BKorga25 @258 /* It was! And it was good! Har! */ 
  == L#2SD25B @259 /* Well, no. Not really. Ugh, I can barely breath... */ 
  == L#2SD25B @260 /* Please... just take a bath. */ 
EXIT 

////Mazzy 

CHAIN IF ~InParty("mazzy") 
See("mazzy") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("mazzy",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkiemazzy","GLOBAL",0)~ THEN L#2SDSKB Mazzy2Skie1 
@261 /* You really know how to use a bow, Mazzy! You're  living proof that a woman can be both strong and look good, you know! */ 
DO ~SetGlobal("L#2SDSkiemazzy","GLOBAL",1)~ 
==BMazzy @262 /* I... didn't see that coming, miss Silvershield. Thank you. */ 
==L#2SDSKB @263 /* Hey, you're welcome! You know, Skie Silvershield can tell when someone deserves a compliment. And, well, you really do! */ 
EXIT 

CHAIN IF ~InParty("mazzy") 
See("mazzy") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("mazzy",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkiemazzy","GLOBAL",1)~ THEN L#2SDSKB Mazzy2Skie2 
@264 /* It's really weird. You sound like both a noble and someone who's... not a noble. */ 
DO ~SetGlobal("L#2SDSkiemazzy","GLOBAL",2)~ 
==BMazzy @265 /* I'm afraid you need to elaborate that thought if you want me to take a stance on it, miss Silvershield. */ 
==L#2SDSKB @266 /* I mean... most nobles are just dull and boring and—and you are far from boring! Well, actually I believe you are NOT boring AT ALL. */ 
==L#2SDSKB @267 /* To be honest, I think you are inspiring, Mazzy! */ 
==BMazzy @268 /* I appreciate that you believe so, miss Silvershield. I do my best and that's not going to change any time soon. Preferably, never. */ 
EXIT 

////Mazzy ToB 

CHAIN IF ~Global("L#2SDSkieMazzyTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("MAZZY") 
See("MAZZY") 
!StateCheck("MAZZY",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Mazzy2SkieTOB_01 
  @269 /* May I advise you, Mazzy? NEVER ever should someone like you should join the Flaming Fist. They are so boring. */ 
  DO ~SetGlobal("L#2SDSkieMazzyTOB","GLOBAL",1)~ 
  == BMazzy25 @270 /* I'm sorry, but mark me slightly lost, Skie. Where did that come from? */ 
  == L#2SD25B @271 /* I'm just comparing my work here with the dull work for the Flaming Fist and, well, it's a bit more difficult now, but on the other hand, at least it's not stupid and boring. And people are nicer! I like you, for example. */ 
  == BMazzy25 @272 /* Thank you, Skie. Joining the Flaming Fist wasn't among my plans, but I'll keep your words in mind. */ 
EXIT 

CHAIN IF ~Global("L#2SDSkieMazzyTOB","GLOBAL",1) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("MAZZY") 
See("MAZZY") 
!StateCheck("MAZZY",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Mazzy2SkieTOB_02 
  @273 /* Oh, those bastards! You know, funny thing. I've been thinking more about you, Mazzy and Falming Fist, and I realized something! */ 
  DO ~SetGlobal("L#2SDSkieMazzyTOB","GLOBAL",2)~ 
  == BMazzy25 @274 /* What have you realized, Skie? You seem angry. */ 
  == L#2SD25B @275 /* Because I AM angry. I just realized that I've been working for them and I haven't seen a single halfling. I... I think I joined racists! This is... IT'S— */ 
  == BMazzy25 @276 /* Calm down, Skie. You are no longer among them. You're here, away from the Fist. Just breath. */ 
  == L#2SD25B @277 /* You know, when I go back to Baldur's Gate, I'll talk to Daddy about this. It's a bit weird and I want to know if there's some rule or if that's a coincidence. Maybe they should join someone like you. Well, not you, you would be bored to death, but... just someone else. Another halfling. Or gnome. */ 
  == L#2SD25B @278 /* I really need to ask Daddy about that. */ 
EXIT 

////Minsc 

CHAIN IF ~InParty("minsc") 
See("minsc") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("minsc",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieminsc","GLOBAL",0)~ THEN L#2SDSKB Minsc2Skie1a 
@279 /* Oh... you still have that hamster, Minsc. How long do hamsters live? */ 
DO ~SetGlobal("L#2SDSkieminsc","GLOBAL",1)~ 
==BMinsc @280 /* Oh, Boo will live as long as any other hero, our sneaky friend! And that's thanks to kicking evil butts! It's really good for our health, right, Boo? *squeak* */ 
==L#2SDSKB @281 /* Really? Well, you both look rather... healthy. Okay, I think I can live with that. I mean with Boo. As long as you keep him away from my clothes. Do you understand, Minsc? */ 
==BMinsc @282 /* Oh, now Boo thinks you dislike him! Why would one hero dislike other hero? Aren't we like a big butt-kicking family? */ 
==L#2SDSKB @283 /* Well, yeah. Maybe. I think we can be like a family. Or something familish... I suppose. */ 
==BMinsc @284 /* Good! You heard Skie, Boo? She thinks of you as of her brother! */ 
==L#2SDSKB @285 /* Wait, what...? */ 
==L#2SDSKB @286 /* That's not what I— */ 
==BMinsc @287 /* Oh, just look at Boo, Skie! You made him really happy! You can be proud of yourselves, friend! Today you have shown that all heroes can care for each other! */ 
==L#2SDSKB @288 /* Uh, I can feel that MADNESS growing on me... Help. */ 
EXIT 

CHAIN IF ~InParty("minsc") 
See("minsc") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("minsc",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieminsc","GLOBAL",1)~ THEN L#2SDSKB Minsc2Skie2 
@289 /* How do you even carry all those things, Minsc? I mean... you must be really strong. I think I saw EVERYTHING in that backpack of yours. You work out a lot, don't you? */ 
DO ~SetGlobal("L#2SDSkieminsc","GLOBAL",2)~ 
==BMinsc @290 /* I mostly kick— */ 
==L#2SDSKB @291 /* Kick butts, yeah, I know. But that's all? No push-ups or anything like that? Uh, I hate that kind of exercise. */ 
==BMinsc @292 /* Well, it's because we have heroism inside our blood, right, Boo! It makes us twice as big! *squeak* That, and of course, kicking evil in the butt! */ 
==L#2SDSKB @293 /* Well, I do the same and my pack doesn't seem any lighter... */ 
EXIT 

////Minsc ToB 

CHAIN IF ~Global("L#2SDSkieMinscTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("MINSC") 
See("MINSC") 
!StateCheck("MINSC",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Minsc2SkieTOB_01 
  @294 /* Minsc, you were to keep Boo away from my pack! Shoo! Shoo! Boo, please, leave it, it's my favorite shirt! */ 
  DO ~SetGlobal("L#2SDSkieMinscTOB","GLOBAL",1)~ 
  == BMinsc25 @295 /* Boo just likes you! He told me that he would like to look for a present he could give you, so he decided to check something you like! Boo wants to be a good friend! Right, Boo? *squeak* */ 
  == L#2SD25B @296 /* Uh, that's both sweet and... not sweet, you know. Maybe you should have just asked...? */ 
  == BMinsc25 @297 /* But then there would be no surprise! And Boo likes surprises. */ 
  == L#2SD25B @298 /* I really appreciate. I do. But... my shirt. */ 
  == L#2SD25B @299 /* Maybe... maybe just look for some new perfume for me. Just nothing with jasmine. Or lavender. */ 
  == BMinsc25 @300 /* Oh, that is an idea! Maybe something with MUSK! What do you think, Boo? */ 
  == L#2SD25B @301 /* I have bad feeling about all of this... */ 
EXIT 

CHAIN IF ~Global("L#2SDSkieMinscTOB","GLOBAL",1) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("L#2SDSkie") 
See("L#2SDSkie") 
!StateCheck("MINSC",CD_STATE_NOTVALID)~ 
THEN BMinsc25 Minsc2SkieTOB_02 
  @302 /* There is a reason why Boo want to find you a perfect present, Skie. But don't tell him that you know. */ 
  DO ~SetGlobal("L#2SDSkieMinscTOB","GLOBAL",2)~ 
  == L#2SD25B @303 /* Well, you haven't told me anything yet. */ 
  == BMinsc25 @304 /* Oh, but Minsc thinks he should tell you. */ 
  == BMinsc25 @305 /* He's afraid that this may be our last adventure. That when it's over, you're going to leave our butt-kicking family. */ 
  == L#2SD25B @306 /* But... we can still meet! Talk! It doesn't have to be over, right? */ 
  == BMinsc25 @307 /* You think so? Ah, that would mean Boo shouldn't worry! Ah, I'll talk to him! He must know that! */ 
  == L#2SD25B @308 /* Right. I think you should talk to him. I never said that I don't want to see you once it's over. That's a kinda silly thing to expect. */ 
EXIT 

////Nalia 

CHAIN IF ~InParty("nalia") 
See("nalia") 
!StateCheck("nalia",CD_STATE_NOTVALID) 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkienalia","GLOBAL",0)~ THEN L#2SDSKB Nalia2Skie1 
@309 /* You know, don't get me wrong, Nalia, but you should talk less about helping those in need and just help yourself. You are in need yourself. In need of a good eye cream. */ 
DO ~SetGlobal("L#2SDSkienalia","GLOBAL",1)~ 
==BNalia @95 /* Excuse me? */ 
==L#2SDSKB @310 /* You know, I really understand you want to help others, I do, but those under-eye bags... they're huge! You could hide all your gear in it and there would still extra room! */ 
==BNalia @311 /* I might have not slept well, but... aren't other things more important than that? It's nothing life-changing— */ 
==L#2SDSKB @312 /* Well, then perhaps try doing both? Looking at those bags hurts a bit, you know. You would look so much healthier without them! */ 
EXIT 

CHAIN IF ~InParty("nalia") 
See("nalia") 
!StateCheck("nalia",CD_STATE_NOTVALID) 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkienalia","GLOBAL",1)~ THEN L#2SDSKB Nalia2Skie2 
@313 /* So... life of a noble bored you too, right? */ 
DO ~SetGlobal("L#2SDSkienalia","GLOBAL",2)~ 
==BNalia @314 /* In a way. But what bothered me most was that many of them were always blind to so many things. Many nobles and royals I met would stick their noses in their expensive dishes and they wouldn't even look around. */ 
==L#2SDSKB @315 /* I always hated all those diplomatic talks. Ugh, why don't they just tell themselves who is stupid and who can do some good and... who can't because they're just too stupid to realize what must be done. */ 
==L#2SDSKB @316 /* That always bothered me. And wigs. Nobles in wigs. What were they thinking?! */ 
==BNalia @317 /* (laughs) Well, that was funny. You know, a guy once visited my keep... I think he was from Sembia. We were eating the appetizers and then he sneezed and his tupet fell into the soup that was just served! */ 
==L#2SDSKB @318 /* Hah! Well, you finally saw some fun in it, girl! Good for you! */ 
EXIT 

////Nalia ToB 

CHAIN IF ~Global("L#2SDSkieNaliaTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("NALIA") 
See("NALIA") 
!StateCheck("NALIA",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Nalia2SkieTOB_01 
  @319 /* Have you ben thinking about your keep lately, Nalia? */ 
  DO ~SetGlobal("L#2SDSkieNaliaTOB","GLOBAL",1)~ 
  == BNalia25 @320 /* I wonder how people are doing out there. */ 
  == L#2SD25B @321 /* Well... shouldn't they learn how to handle things without you constantly helping everyone around? I turned out fine! And I needed A LOT of help before. Like all the time. Now—now I am an independent woman! */ 
  == BNalia25 @322 /* You are, yes, but... what if they'll fail? */ 
  == L#2SD25B @323 /* To be a woman...? */ 
  == BNalia25 @324 /* To handle issues on their own. */ 
  == L#2SD25B @325 /* I know! I was just joking! */ 
  == L#2SD25B @326 /* Anyway, nor you nor they will find out if they don't give it a try first, right? */ 
EXIT 

////Valygar 

CHAIN IF ~InParty("valygar") 
See("valygar") 
!StateCheck("valygar",CD_STATE_NOTVALID) 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkievalygar","GLOBAL",0)~ THEN L#2SDSKB Valygar2Skie1 
@327 /* You're quite gloomy, aren't you? A pity. You're not totally bad, but this aura of bitterness around you is REALLY repelling. */ 
DO ~SetGlobal("L#2SDSkievalygar","GLOBAL",1)~ 
==BValyga @328 /* I am not looking for any appreciation from others, Skie. I prefer to focus on more important problems. */ 
==L#2SDSKB @329 /* So you don't find the fact that people don't like you a problem. Maybe if someone liked you then those Cowled guys wouldn't try to find and kill you? */ 
==BValyga @330 /* They do that because of different reasons than my, how you called it, "bitterness". */ 
==L#2SDSKB @331 /* Maybe, but you're making it a quite a bit easier for them, you know. */ 
EXIT 

CHAIN IF ~InParty("valygar") 
See("valygar") 
!StateCheck("valygar",CD_STATE_NOTVALID) 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkievalygar","GLOBAL",1)~ THEN L#2SDSKB Valygar2Skie2 
@332 /* Hey, I have a great idea! Like, really great! Hear me, Valygar. Come on, don't get so gloomy right away! */ 
DO ~SetGlobal("L#2SDSkievalygar","GLOBAL",2)~ 
==L#2SDSKB @333 /* Teach me how to fight better and in return I'll teach you how to be less repelling. That's your chance to finally be more than the grumpy one in the group! So? You like the idea, right? I knew you would. */ 
==BValyga @334 /* I can teach you, Silvershield, but I don't need any of your "teachings". However, if you want my help in becoming better in battle, I need you to stop whining. */ 
==L#2SDSKB @335 /* Oh, I'm not whining! Well, not as much as I used to! */ 
EXIT 

////Valygar ToB 

CHAIN IF ~Global("L#2SDSkieValygarTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("VALYGAR") 
See("VALYGAR") 
!StateCheck("VALYGAR",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Valygar2SkieTOB_01 
  @336 /* Hey, Valygar! Do you think I'm doing good in battle? I practiced! A lot! I even had to shorten my nails a bit, because I would totally break them like all the time. */ 
  DO ~SetGlobal("L#2SDSkieValygarTOB","GLOBAL",1)~ 
  == BValyg25 @337 /* Yes, you're doing better, Skie. But keep practicing. We all should. */ 
  == L#2SD25B @338 /* Oh, hey! Valygar said SOMETHING NICE? You said I'm doing great? I must remember that day. It may be the first and the last time we heard something truly encouraging from you. */ 
  == L#2SD25B @339 /* And that means miracles truly happen! */ 
EXIT 

////Viconia 

CHAIN IF ~InParty("viconia") 
See("viconia") 
!StateCheck("viconia",CD_STATE_NOTVALID) 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieviconia","GLOBAL",0)~ THEN L#2SDSKB Viconia2Skie2 
@340 /* Have you done something with you hair, Viconia? They look amazing! */ 
DO ~SetGlobal("L#2SDSkieviconia","GLOBAL",1)~ 
==BViconi @341 /* Ha! You certainly know how to surprise your fellow companions with nonsense, dalhar. I appreciate the compliment, but if you think that you're going to buy some more respect with them, Skie, then you're wrong. */ 
==L#2SDSKB @342 /* Well, I thought you DID respect me, but—look, if I were to impress you somehow, wouldn't it be like... better to impress with skills rather than compliments? I like your saucy attitude, but I want to be respected because of something else. */ 
==BViconi @343 /* The question is if you are able to impress a drow at all. You are only dalhar, after all. */ 
==L#2SDSKB @344 /* Dal...har? */ 
==BViconi @345 /* That means "a child" in common. */ 
==L#2SDSKB @346 /* Well, I was a kid when we first met, but I'm a woman now. Anyway, you'll see that I'm much better and... and that I can take the initiative and help in battles. */ 
==BViconi @347 /* Do it, Skie. Prove me wrong and you MIGHT have my respect. */ 
EXIT 

CHAIN IF ~InParty("viconia") 
See("viconia") 
!StateCheck("viconia",CD_STATE_NOTVALID) 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieviconia","GLOBAL",1)~ THEN L#2SDSKB Viconia2Skie2 
@348 /* Drow women are different to those on the surface, right, Viconia? */ 
DO ~SetGlobal("L#2SDSkieviconia","GLOBAL",2)~ 
==BViconi @349 /* Hah! They are different, dalhar. Women here should learn about self-esteem. You could learn that, too, rather than falling for men like that scum Eldoth. */ 
==L#2SDSKB @350 /* Yet if it was so good down there, why you did you decide to run away? I don't understand. */ 
==BViconi @351 /* No society is perfect, dalhar. The sooner you realize that, the better. */ 
EXIT

CHAIN IF ~InParty("viconia") 
See("viconia") 
!StateCheck("viconia",CD_STATE_NOTVALID) 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieviconia","GLOBAL",0)~ THEN L#2SDSKB Viconia2Skie3 
@352 /* Do you see any good sides of being here, Viconia? */ 
DO ~SetGlobal("L#2SDSkieviconia","GLOBAL",1)~ 
==BViconi @353 /* What do you mean? I am not among my people here, isn't that good enough? */ 
==L#2SDSKB @354 /* It's hard to get your point. One day you hate human and surface elves. The other day you fear and point out that you are no longer among drow... */ 
==BViconi @355 /* I told you once, dalhar, no society is perfect. What else do you want to know? */ 
==L#2SDSKB @356 /* Why are you here? With us? */ 
==BViconi @357 /* It's safer. And maybe I've lost my mind, dalhar, because I want you to get your chance to impress me. */ 
EXIT

////Viconia ToB 

CHAIN IF ~Global("L#2SDSkieViconiaTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("VICONIA",CD_STATE_NOTVALID) 
InParty("L#2SDSkie") 
See("L#2SDSkie") 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ 
THEN BVicon25 Viconia2SkieTOB_01 
  @358 /* Hmm, I'm surprised. I thought you would die not long after joining this group. But you survived. Somehow. Perhaps you're not as pathetic as I thought you are, Silvershield girl. */ 
  DO ~SetGlobal("L#2SDSkieViconiaTOB","GLOBAL",1)~ 
  == L#2SD25B @359 /* Wait, does that mean I actually... impressed you? */ 
  == BVicon25 @360 /* Surprised. And yes. I will say it only once, j'nesst: I... may have misjudged you. You may be stronger than I though. */ 
  == L#2SD25B @361 /* Really? I managed to impress Viconia De'Vir. I knew I would do it! */ 
  == BVicon25 @362 /* Uh, stop making so much noise, j'nesst, or I will change my mind. */ 
  == L#2SD25B @363 /* Wait, you use that word for a second time... j'nesst? I'm no longer... uhm... dalhar? */ 
  == BVicon25 @364 /* I deserve to be called j'nesst. Dalhar is a child. But after what I have seen I may call you a woman. */ 
  == L#2SD25B @365 /* OH MY... <CHARNAME>, I'm afraid someone may have swapped Viconia with a doppelganger. That Viconia is WAY too nice for me. */ 
  == BVicon25 @366 /* I'm done with this conversation. And don't make me regret changing my opinion about you, Skie. */ 
  == BVicon25 @367 /* Now move on, we have better things to do than wasting time on discussions like this one. */ 
EXIT

////Yoshimo 

CHAIN IF ~InParty("yoshimo") 
See("yoshimo") 
!StateCheck("yoshimo",CD_STATE_NOTVALID) 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieyoshimo","GLOBAL",0)~ THEN L#2SDSKB Yoshi2Skie1 
@368 /* Oh, you must have seen wonders on the way here, right Yoshimo? Kozakura is so far away! */ 
DO ~SetGlobal("L#2SDSkieyoshimo","GLOBAL",1)~ 
==BYoshim @369 /* Indeed, my chattery partner, Yoshimo has seen both wonders and peculiarities when travelling here, to Amn. */ 
==L#2SDSKB @370 /* Oh, I wish I could see all those lands you have travelled. You must have eaten so many different things and saw people wearing stylish clothes. */ 
==L#2SDSKB @371 /* People miss so much when they stay home! */ 
==BYoshim @372 /* Well said, Skie Silvershild, but you made me wonder: how this little kitty decided to leave in the very first place, eh? Was it this urge to see places? */ 
==L#2SDSKB @373 /* Ah, no. It was love. But later he appeared to be nothing else but a harlot-loving bastard. */ 
==BYoshim @374 /* So, it was romantic impulse to some fool, yes? So many tales start that way, Skie Silvershield. You may yet write one of them! */ 
EXIT 

CHAIN IF ~InParty("yoshimo") 
See("yoshimo") 
!StateCheck("yoshimo",CD_STATE_NOTVALID) 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieyoshimo","GLOBAL",0)~ THEN L#2SDSKB Yoshi2Skie1 
@375 /* Some of your traps seem really complicated! They must be difficult to set. Are they? */ 
DO ~SetGlobal("L#2SDSkieyoshimo","GLOBAL",1)~ 
==BYoshim @376 /* Some, yes, but the their effectiveness match their complexity, Skie. That's why I set them. */ 
==L#2SDSKB @377 /* Well, I saw how they work. That little string -- it's what making it work so well, right? */ 
==BYoshim @378 /* Ah, so little Skie has quite an eye! Indeed, that little string does the trick. An important one. It triggers the mechanism. */ 
==L#2SDSKB @379 /* Oh, I wish I could do wonders like that! But on the other hand, at least there are things each of one does better. You can set you special traps and I -- I know much about fashion and... and nobles. And how boring they are. */ 
EXIT 

////Sarevok ToB 

CHAIN IF ~Global("L#2SDSkieSarevokTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("SAREVOK",CD_STATE_NOTVALID) 
See("L#2SDSkie") 
InParty("L#2SDSkie") 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ 
THEN BSarev25 Sarevok2Skie1 
  @380 /* You're slowing us down, girl. You speak too much and talk too slow. */ 
  DO ~SetGlobal("L#2SDSkieSarevokTOB","GLOBAL",1)~ 
  == L#2SD25B @381 /* This is so stupid! <CHARNAME>, why are we letting him walk with us? I guess I need to remind you that Daddy was killed because of him. Don't you remember that? */ 
  == BSarev25 @382 /* This was a long time ago, Silvershield, and your father was on my way. He knew the possible consequences. */ 
END 
IF~~THEN REPLY @383 /* Can't we sort it out somehow? We have enough enemies so stop starting new wars. Please. */ EXTERN L#2SD25B Sarevok2Skie1-1 
IF~~THEN REPLY @384 /* Calm down. Both of you. We have one goal right now, so stop sticking to the past. Your father is back and we killed Sarevok once already. */ EXTERN L#2SD25B Sarevok2Skie1-2 

CHAIN L#2SD25B Sarevok2Skie1-2 
@385 /* This is so stupid. He should have stayed dead. */ 
EXIT 

CHAIN L#2SD25B Sarevok2Skie1-1 
@386 /* He was the one who actually started a REAL war, you know. This is so stupid. I don't want to work with him... */ 
EXIT 

////DORN 

CHAIN IF ~InParty("DORN") 
See("DORN") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("DORN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieDorn","GLOBAL",0)~ THEN L#2SDSKB Skie2Dorn1 
@387 /* ...I'm not supposed to peel potatoes! */ 
DO ~SetGlobal("L#2SDSkieDorn","GLOBAL",1)~ 
== BDORN @388 /* And what else can you do, girl? You had to be saved once already. You waste our time and energy. */ 
== L#2SDSKB @389 /* You're really mean, Dorn. No wonder your old group tricked you. Is there anyone who would be happy to have you around? */ 
== BDORN @390 /* Ha! At least I don't have to be babysat, Silvershield. Go and peel potatoes. Maybe you will prove to be good at something. I doubt it. */ 
EXIT 

CHAIN IF ~InParty("DORN") 
See("DORN") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("DORN",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieDorn","GLOBAL",0)~ THEN L#2SDSKB Skie2Dorn1 
@391 /* ...I am done with all your comments, Dorn. You're nothing but a bully! No better than... than Eldoth! */ 
DO ~SetGlobal("L#2SDSkieDorn","GLOBAL",1)~ 
== BDORN @392 /* Actually I'm much better than him. As a man and as a warrior. Better in bed and when facing foes. It is you who are as worthless as that damn bard. */ 
== L#2SDSKB @393 /* One more word, Dorn, and... and I will lose my patience! You're nasty. I hope you'll die next time we're attacked! */ 
EXIT 

////Dorn 


CHAIN IF ~Global("L#2SDSkieDornTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("DORN",CD_STATE_NOTVALID) 
InParty("L#2SDSkie") 
See("L#2SDSkie") 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Skie2Dorn25 
  @394 /* Ugh, wherever we look there's a Child of Bhaal. Here, there. Behind the corner. I wouldn't be surprised to have one in my wardrobe. */ 
  DO ~SetGlobal("L#2SDSkieDornTOB","GLOBAL",1)~ 
  == L#2SD25B @395 /* Perhaps we'll find out that Dorn is a Child of Bhaal too. I mean the more Sarevokish kind, not the one like you, <CHARNAME>. */ 
  == BDORN25 @396 /* Children of Bhaal aren't the only men and women who can make it all tense, girl. I can cause you quite a lot of trouble without Bhaal's essence. */ 
  == L#2SD25B @397 /* Yeah, we know. "Raah, I am big half-orc who had a troubled childhood and now I want to crash and smash! I want blood! Rarh!" */ 
  == L#2SD25B @398 /* You are like the guy in the bar who will keep telling one story over and over again, until everyone is fed up with it. */ 
  == L#2SD25B @399 /* And now I'm done talking to you. */ 
EXIT 

////NEERA 

CHAIN IF ~InParty("NEERA") 
See("NEERA") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("NEERA",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieNEERA","GLOBAL",0)~ THEN L#2SDSKB Skie2Neera1 
@400 /* Hey, what's that glow— */ 
DO ~SetGlobal("L#2SDSkieNEERA","GLOBAL",1)~ 
== BNEERA @401 /* Oh, I'm so sorry! Are you okay, Skie? I just wanted to summon some heat as I got a bit cold and... there was a small surge. */ 
== L#2SDSKB @402 /* And what's THAT! That thing on your hand! */ 
== BNEERA @403 /* What are you talking a—Oh! Oh! Get off me! */ 
== BNEERA @404 /* Okay, that was unexpected. Double surge, I guess: a blinding flash and... some weirdish scolopendra. But it's gone. Somewhere. I can't see it. Let's hope it's gone forever. */ 
== L#2SDSKB @405 /* Please, please, please, please, don't summon any more scolopendras, Neera! They really freak me out! */ 
== BNEERA @406 /* Well, I'll try! And again - sorry. */ 
EXIT 

CHAIN IF ~InParty("NEERA") 
See("NEERA") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("NEERA",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieNEERA","GLOBAL",1)~ THEN L#2SDSKB Skie2Neera2 
@407 /* I don't get it. Why some people are afraid of your magic. It's hard to call it dull! And even though I did not like the scolopendra you called last time, that was something... memorable! Right, that's a fine way of describing it. */ 
DO ~SetGlobal("L#2SDSkieNEERA","GLOBAL",2)~ 
== BNEERA @408 /* Well, I suppose that's because they are afraid it may bury them or—or turn into giant mouse. But, hey, isn't life a bit like that magic? You never know what you'll get or see just behind the corner! */ 
== BNEERA @409 /* There can be a shop... or a crazy necromancer trying to summon an army of ghouls. We know that's possible. We've been there before, right? Because what else Korlasz was trying to do. What can you do in a crypt, right? */ 
== L#2SDSKB @410 /* Right! I think you're right. I think I like the way you think. Perhaps we should go shopping some time? */ 
EXIT 

////Neera ToB 


CHAIN IF ~Global("L#2SDSkieNeeraTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("NEERA") 
See("NEERA") 
!StateCheck("NEERA",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Skie2Neera25 
  @411 /* Hey, Neera! Do you have some spell to heat my water? I think I'm going to be sick and I would kill for some water. Or a tea. */ 
  DO ~SetGlobal("L#2SDSkieNeeraTOB","GLOBAL",1)~ 
  == BNEERA25 @412 /* Uhm, and aren't you afraid that something weird may happen? That the waterskin will become alive and run away from you or something? You know it's possible, right? */ 
  == L#2SD25B @413 /* It's worth a try. And if something like that happens, I'll just assume that I got worse and I'm having some hallucinations. */ 
  == BNEERA25 @414 /* Well... We can give it a try, but maybe when we stop, right? It would be weird to run after a living waterskin and then get attacked! That was awkward. I-I mean could be awkward */ 
  == L#2SD25B @415 /* Fine... */ 
EXIT 

////RASAAD 

CHAIN IF ~InParty("RASAAD") 
See("RASAAD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("RASAAD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieRASAAD","GLOBAL",0)~ THEN L#2SDSKB Skie2Rasaad1 
@416 /* Don't take it personally, Rasaad, but how do you avoid being bored to death when listening to your own words? I think I would rather clean all Silvershield Estate rather than listen to that. */ 
DO ~SetGlobal("L#2SDSkieRASAAD","GLOBAL",1)~ 
== BRASAAD @417 /* Perhaps you're not listening carefully, Skie, so you can't— */ 
== L#2SDSKB @418 /* BORING. You're already being patronizing. And that dreary tone. You're worse than my history teacher, Rasaad. Perhaps... you should try to work on it? */ 
== BRASAAD @419 /* I must admit that I never thought about my tone. I'm afraid you would need to be more specific about telling me what you consider wrong with it. */ 
== L#2SDSKB @420 /* The pace? The intonation. You sound as if you were giving a very boring lesson. Like VERY boring. Even for yourself. As if someone sucked all excitement from your life. */ 
== BRASAAD @421 /* I see. Well, I must say, I didn't know you find it that tedious. Well, I may need to think about this, Skie. */ 
EXIT 

CHAIN IF ~InParty("RASAAD") 
See("RASAAD") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("RASAAD",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieRASAAD","GLOBAL",1)~ THEN L#2SDSKB Skie2Rasaad2 
@422 /* So, are you mad at me, Rasaad? For telling you everything I think about the way you speak and so on. */ 
DO ~SetGlobal("L#2SDSkieRASAAD","GLOBAL",1)~ 
== BRASAAD @423 /* No. I do not blame people for telling what they believe. You are entitled to have your opinion. */ 
== L#2SDSKB @424 /* Okay, even when being nice you sound... Eh, never mind. Let's just go. */ 
EXIT 

////Rasaad ToB 

CHAIN IF ~Global("L#2SDSkieRasaadTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("RASAAD") 
See("RASAAD") 
!StateCheck("RASAAD",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Skie2Rasaad25 
  @425 /* Rasaad, do you remember when we talked and compared you to a teacher? */ 
  DO ~SetGlobal("L#2SDSkieRasaadTOB","GLOBAL",1)~ 
  == BRASAA25 @426 /* Yes, I remember that. Is there something else you would like to add to that, Skie? */ 
  == L#2SD25B @427 /* I was thinking and perhaps you SHOULD be a teacher. You already tell everyone what they should do to "achieve balance", so... */ 
  == BRASAA25 @428 /* That's certainly something I could consider. But everything depends on what's going to happen next and if that will be something people expected and needed. */ 
  == L#2SD25B @429 /* I'm quite sure you would enjoy that kind of work. */ 
EXIT 

//HEXXAT 

CHAIN IF ~InParty("HEXXAT") 
See("HEXXAT") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("HEXXAT",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieHEXXAT","GLOBAL",0)~ THEN L#2SDSKB L#2Skieexxat1 
@430 /* I'm not sure if I should adore you Hexxat or fear you. */ 
DO ~SetGlobal("L#2SDSkieHEXXAT","GLOBAL",1)~ 
== BHEXXAT @431 /* Can't you do both? */ 
== L#2SDSKB @432 /* Well, I can, but it would be so much easier to pick one. You remind me of one girl I just met: she had this mysterious atmosphere all around her! You have that too! Oh, I wonder how you looked when you were alive! */ 
== BHEXXAT @433 /* That you will never find out, Skie Silvershield. */ 
== L#2SDSKB @434 /* You know, those short replied just enhance that aura of yours. If I liked women THAT WAY, maybe I would fall for you! Yeah, I probably would. */ 
== BHEXXAT @435 /* That fall would probably be deadly for you. */ 
EXIT 

CHAIN IF ~InParty("HEXXAT") 
See("HEXXAT") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("HEXXAT",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieHEXXAT","GLOBAL",1)~ THEN L#2SDSKB L#2Skieexxat2 
@436 /* With you around I feel I might be a bit like a spare pair of shoes. They may be glamorous, but still, they are just spare shoes. */ 
DO ~SetGlobal("L#2SDSkieHEXXAT","GLOBAL",2)~ 
== BHEXXAT @437 /* Then find a feature that would make those useful in certain situations. After all, you are the one that give those shoes purpose. */ 
EXIT 

////Hexxat ToB 

CHAIN IF ~Global("L#2SDSkieHexxatTOB","GLOBAL",0) 
CombatCounter(0) 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
InParty("HEXXAT") 
See("HEXXAT") 
!StateCheck("HEXXAT",CD_STATE_NOTVALID)~ 
THEN L#2SD25B Skie2Hexxat25 
  @438 /* Hexxat, have you ever stole something even though you didn't want to? */ 
  DO ~SetGlobal("L#2SDSkieHexxatTOB","GLOBAL",1)~ 
  == BHEXXA25 @439 /* Yes. */ 
  == L#2SD25B @440 /* Did it feel weird? Because sometimes I wonder... you know, I did many things. Stole stuff. Sneaked into places. Said many things. And I suppose... we all have regrets, right? */ 
  == BHEXXA25 @441 /* Is there any reason why you're asking me this question, Skie? */ 
  == L#2SD25B @442 /* I like you. And I think you're really skilled. And smart. I thought you'd be a good person to ask. */ 
  == BHEXXA25 @443 /* I see. */ 
  == BHEXXA25 @444 /* What I know is people have regrets and there is no reason why you should be different. */ 
  == L#2SD25B @445 /* I suppose you're right. And... thanks. */ 
EXIT 

//WILSON 

CHAIN IF ~InParty("WILSON") 
See("WILSON") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("WILSON",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieWILSON","GLOBAL",0)~ THEN L#2SDSKB Skie2WILSON1 
@446 /* Well, with that fur on, Wilson, you will never be out of fashion! */ 
DO ~SetGlobal("L#2SDSkieWILSON","GLOBAL",1)~ 
== BWILSON @447 /* Rff, sniff. */ 
== L#2SDSKB @448 /* Oh, of course I'm serious, Wilson! I think it looks amazing! */ 
== BWILSON @449 /* Grr. */ 
== L#2SDSKB @450 /* What? No! I would never even think of taking it away from you. Wilson looks best in Wilson's fur. No one else will EVER look better in it. */ 
== BWILSON @451 /* Growl. Snuffle, snort. */ 
== L#2SDSKB @452 /* You're welcome! */ 
EXIT 

CHAIN IF ~InParty("WILSON") 
See("WILSON") 
!StateCheck("l#2sdskie",CD_STATE_NOTVALID) 
!StateCheck("WILSON",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieWILSON","GLOBAL",0)~ THEN L#2SDSKB Skie2WILSON1 
@453 /* I think I have a cold... */ 
DO ~SetGlobal("L#2SDSkieWILSON","GLOBAL",1)~ 
== BWILSON @454 /* Sniff. Roar. */ 
== L#2SDSKB @455 /* Really? You would let me sleep next to you tonight? I suppose it would be warmer and... such a big bear would probably protect me from winds... */ 
== BWILSON @456 /* Sniff, rff. */ 
== L#2SDSKB @457 /* You would really do that to me? Really? You're the best bear ever, Wilson. */ 
EXIT 

//WILSON ToB 

CHAIN IF ~InParty("WILSON") 
See("WILSON") 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
!StateCheck("WILSON",CD_STATE_NOTVALID) 
CombatCounter(0) 
Global("L#2SDSkieWILSONTOB","GLOBAL",0)~ THEN L#2SD25B Skie2WILSON25 
@458 /* You know, I think you may now be the most powerful bear EVER, Wilson. */ 
DO ~SetGlobal("L#2SDSkieWILSONTOB","GLOBAL",1)~ 
== BWILSO25 @459 /* Roar, rff. */ 
== L#2SD25B @460 /* Okku? And who's Okku? */ 
== BWILSO25 @461 /* Snuffle, rff. Sniff. */ 
== L#2SD25B @462 /* A bear-god? I didn't know there are any bear gods. */ 
== L#2SD25B @463 /* Anyway, I think you are greater than any bear-god. You are nice and... and you fought great enemies. And you made great friends! */ 
== BWILSO25 @464 /* Rff. Snort. */ 
== L#2SD25B @465 /* Well, yes. I hope to be one of them, Wilson. I like you. And you're so soft! */ 
EXIT 



/////////////////////////////////////// 
/////////////////////////////////////// 
//////////POST-JOIN DIALOGUES////////// 
/////////////////////////////////////// 
/////////////////////////////////////// 



BEGIN L#2SDSKJ 


//1ST TIMERED 

CHAIN IF ~Global("L#2SDSkieTalks","GLOBAL",2)~ THEN L#2SDSKJ SKIE-01-00 
@466 /* Hey, <CHARNAME>! Wait! I want to talk. Hey—you walk quite fast, you know. Anyway, there's something I'd like to ask you. You have a moment? */ 
END 
IF~~THEN REPLY @467 /* Sure. What do you need? I'm all ears. */ EXTERN L#2SDSKJ SKIE-01-02 
IF~~THEN REPLY @468 /* Eh, I hope it's important. What do you need? Make it quick. */ EXTERN L#2SDSKJ SKIE-01-01 
IF~~THEN REPLY @469 /* I'm sorry, Skie, but we have no time for this. We should focus on our work so get back to formation and let's go. */ EXTERN L#2SDSKJ SKIE-01-03 

CHAIN L#2SDSKJ SKIE-01-01 
@470 /* Fine, but don't be that mean? You don't want to be like Eldoth, right? You shouldn't. */ 
EXTERN L#2SDSKJ SKIE-01-02 

CHAIN L#2SDSKJ SKIE-01-02 
@471 /* I was wondering how you ended in Athkatla so far away from Baldur's Gate. I heard you got banished. By the way, they were really quick to banish the Hero of Baldur's Gate. But at least you didn't have to go that far. */ 
==L#2SDSKJ @472 /* And in such time. Did you run here or something? */ 
END 
IF~~THEN REPLY @473 /* Actually I got kidnapped and brought here. Irenicus first made sure I would be blamed for your death and banished. Then he sent his people to catch me the moment I left the city. */ EXTERN L#2SDSKJ SKIE-01-04 
IF~~THEN REPLY @474 /* I really don't want to talk about this, Skie. I need you in my group, but because I need someone with your skills. Not because I need a friend. Do you understand? */ EXTERN L#2SDSKJ SKIE-01-03 

CHAIN L#2SDSKJ SKIE-01-04 
@475 /* He's the worst! Some creep in weird clothes, walking around with some deadly blade thing and—and playing with people as if they were some puppets or something. I hate him. */ 
END 
IF~~THEN REPLY @476 /* Well, then you're not alone. He tricked all of us. He ran some magic tests on me. And now Imoen is with him. */ EXTERN L#2SDSKJ SKIE-01-05 
IF~~THEN REPLY @477 /* That's why he must be stopped. Not because I want to get even, but because he's dangerous. He hurt people. And now he has Imoen. */ EXTERN L#2SDSKJ SKIE-01-06 
IF~~THEN REPLY @478 /* Look, that's not something I want to talk about. I'm still thinking of our next step and you're distracting me. */ EXTERN L#2SDSKJ SKIE-01-03 

CHAIN L#2SDSKJ SKIE-01-05 
@479 /* Tests? Sounds as if you wanted to a rev— */ 
END 
IF~Global("L#SDFocusImoen","GLOBAL",1)~THEN EXTERN L#2SDSKJ SKIE-01-07 
IF~Global("L#SDFocusIrenicus","GLOBAL",1)~THEN EXTERN L#2SDSKJ SKIE-01-08 
IF~!Global("L#SDFocusImoen","GLOBAL",1) !Global("L#SDFocusIrenicus","GLOBAL",1)~THEN EXTERN L#2SDSKJ SKIE-01-09 

CHAIN L#2SDSKJ SKIE-01-06 
@480 /* I agree. He must be st— */ 
END 
IF~Global("L#SDFocusImoen","GLOBAL",1)~THEN EXTERN L#2SDSKJ SKIE-01-07 
IF~Global("L#SDFocusIrenicus","GLOBAL",1)~THEN EXTERN L#2SDSKJ SKIE-01-08 
IF~!Global("L#SDFocusImoen","GLOBAL",1) !Global("L#SDFocusIrenicus","GLOBAL",1)~THEN EXTERN L#2SDSKJ SKIE-01-09 

CHAIN L#2SDSKJ SKIE-01-07 
@481 /* Wait, what did you just say? HE HAS IMOEN? You said Cowled Wizards took her when I was joining, but... Oh, Jannath would be SO furious. She would just tear Amn apart to find her. We're taking her back, right? Of course we are. Stupid question. */ 
EXTERN L#2SDSKJ SKIE-01-10 

CHAIN L#2SDSKJ SKIE-01-08 
@482 /* Wait, what did you just say? HE HAS IMOEN? You mentioned Irenicus when I was joining, but you said nothing about Imoen. Oh, Jannath would be SO furious. She would just tear Amn apart to find her. We're taking her back, right? Of course we are, stupid question. */ 
EXTERN L#2SDSKJ SKIE-01-10 

CHAIN L#2SDSKJ SKIE-01-09 
@483 /* Wait, what did you just say? HE HAS IMOEN? You didn't tell me about Imoen when you let me join. Oh, Jannath would be SO furious. She would just tear Amn apart to find her. We're taking her back, right? Of course we are, stupid question. */ 
EXTERN L#2SDSKJ SKIE-01-10 

CHAIN L#2SDSKJ SKIE-01-10 
@484 /* Your life got kinda complicated since I got killed. Is there something else I should know? Black went out of fashion? Faerûn is falling apart? */ 
END 
IF~~THEN REPLY @485 /* I hope not. I love black. */ EXTERN L#2SDSKJ SKIE-01-11 
IF~~THEN REPLY @486 /* I hope not. Faerûn was fine the last time I checked. It's just my life that became a mess. */ EXTERN L#2SDSKJ SKIE-01-12 
IF~~THEN REPLY @487 /* It's not funny, Skie. Get a bit more serious. The situation is hard enough, don't make it way harder. */ EXTERN L#2SDSKJ SKIE-01-13 
IF~~THEN REPLY @488 /* Can you stop asking so many questions? And please, don't distract me so often. Let's go back to work. */ EXTERN L#2SDSKJ SKIE-01-03 

CHAIN L#2SDSKJ SKIE-01-11 
@489 /* Me too, but that thing with Imoen and... that creep... */ 
EXTERN L#2SDSKJ SKIE-01-14 

CHAIN L#2SDSKJ SKIE-01-12 
@490 /* Quite a big mess. And that thing with Imoen and... that creep... */ 
EXTERN L#2SDSKJ SKIE-01-14 

CHAIN L#2SDSKJ SKIE-01-13 
@491 /* Hey! I am serious! I like Imoen and I just found out that creep has her! */ 
EXTERN L#2SDSKJ SKIE-01-14 

CHAIN L#2SDSKJ SKIE-01-14 
@492 /* Look, you helped me, so now I'm helping you. And Imoen. I'm not letting this creep do things to you—whatever he's actually doing. Not on my watch. */ 
==L#2SDSKJ @493 /* Eh, now I sound like Corporal Duncan. You see what that Flaming Fist episode did to me? */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",3)~ EXIT 

CHAIN L#2SDSKJ SKIE-01-03 
@494 /* Hey, don't be so mean, okay? That was WAY too mean. */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",3) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

//2ND TIMERED 

CHAIN IF ~Global("L#2SDSkieTalks","GLOBAL",5)~ THEN L#2SDSKJ SKIE-02-00 
@495 /* It was weird to see you walk to me with that dagger. You know, at the Dragonspear Castle. */ 
END 
IF~~THEN REPLY @496 /* But you know it wasn't you who I saw, right? I wouldn't stab you. */ EXTERN L#2SDSKJ SKIE-02-01 
IF~~THEN REPLY @497 /* I guess I would feel just as confused if I were in your place, Skie. */ EXTERN L#2SDSKJ SKIE-02-02 
IF~~THEN REPLY @498 /* I never apologized for all that happened. If only I could have resisted Irenicus. */ EXTERN L#2SDSKJ SKIE-02-03 
IF~~THEN REPLY @499 /* We don't have time for this. Let's get back to work. */ EXTERN L#2SDSKJ SKIE-02-04 

CHAIN L#2SDSKJ SKIE-02-01 
@500 /* I know! You really thought—you thought I would blame you! Hey! */ 
EXTERN L#2SDSKJ SKIE-02-05 

CHAIN L#2SDSKJ SKIE-02-02 
@501 /* Everyone would, right? That was his plan. */ 
EXTERN L#2SDSKJ SKIE-02-05 

CHAIN L#2SDSKJ SKIE-02-03 
@502 /* What? You think I—don't be stupid! It was his plan. Why would you apologize? Stop it, will you? */ 
EXTERN L#2SDSKJ SKIE-02-05 

CHAIN L#2SDSKJ SKIE-02-05 
@503 /* Irenicus can do these weirdish illusions and it all grew on us, like, mold. Right. Ugly, smelly mold. And it made stuff nasty. We should all blame him and stupid ego. */ 
==L#2SDSKJ @504 /* Anyway, don't think I EVER thought it's your fault. We never swore to be best friends forever, but I trust you. I know, I trusted Eldoth once, but I learned much since then! */ 
END 
IF~~THEN REPLY @505 /* Thank, Skie. I'm glad too hear that. Especially in these difficult times. */ EXTERN L#2SDSKJ SKIE-02-06 
IF~~THEN REPLY @506 /* Huh, I always wondered why on all gods you trusted Eldoth. He was so obvious in his lies. */ EXTERN L#2SDSKJ SKIE-02-07 
IF~~THEN REPLY @507 /* It's all very nice, but can we go now? I'm done talking, to be honest. I'd rather get back to work. */ EXTERN L#2SDSKJ SKIE-02-04 

CHAIN L#2SDSKJ SKIE-02-06 
@508 /* Sure. But you know what's always a good idea in difficult times? Shopping. */ 
==L#2SDSKJ @509 /* Go on. Buy something. New clothes. Some tea. A bow. Whatever works for you! */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",6)~ EXIT 

CHAIN L#2SDSKJ SKIE-02-07 
@510 /* I loved him. And I really wanted to change something in my life. I saw this as my chance and— */ 
==L#2SDSKJ @511 /* He tricked me, but at least he got me out that estate. That's already something, right? */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",6)~ EXIT 

CHAIN L#2SDSKJ SKIE-02-04 
@512 /* Hey, don't be dull, will you? */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",6) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

//3RD TIMERED 

CHAIN IF ~Global("L#2SDSkieTalks","GLOBAL",8)~ THEN L#2SDSKJ SKIE-03-00 
@513 /* Could you tell me more about that person who took my place? In the Soultaker. */ 
END 
IF~Global("L#2SDPyll","GLOBAL",1)~THEN REPLY @514 /* Her name was Pyll and she was sick. She did that because she wanted to do something good before she was gone. I believe she had regrets about her past. */ EXTERN L#2SDSKJ SKIE-03-01-A 
IF~Global("L#2SDRoi","GLOBAL",1)~THEN REPLY @515 /* His name was Roi "Biggie" and he was a thief. He was afraid that he would be sentenced to death or locked up for the rest of his life. He had a son and he said he would take your place if I helped him to secure his son's future. And that I did. */ EXTERN L#2SDSKJ SKIE-03-01-B 
IF~Global("L#2SDBontt","GLOBAL",1)~THEN REPLY @516 /* His name was Bontt. He was a swashbuckler. He was injured and he would die anyway, so I... helped him to make up his mind about saving an innocent girl. */ EXTERN L#2SDSKJ SKIE-03-01-C 
IF~~THEN REPLY @517 /* I don't know who that truly was. Only thing I cared about was saving you. That was my priority, not listening to what they wanted to tell me. */ EXTERN L#2SDSKJ SKIE-03-02 
IF~~THEN REPLY @518 /* Just don't think about them, Skie. You're out of that blade and that is the only thing that matters. */ EXTERN L#2SDSKJ SKIE-03-02 
IF~~THEN REPLY @519 /* I don't have time to waste on talking about someone who's not even part of this world anymore. Come, we should be moving. */ EXTERN L#2SDSKJ SKIE-03-03 

CHAIN L#2SDSKJ SKIE-03-01-A 
@520 /* Pyll... I'll remember that name. I owe her my life, right? And you of course. */ 
EXTERN L#2SDSKJ SKIE-03-01-D 

CHAIN L#2SDSKJ SKIE-03-01-B 
@521 /* Roi... he must have cared for his son. That's good. It's always good to have a great dad. */ 
EXTERN L#2SDSKJ SKIE-03-01-D 

CHAIN L#2SDSKJ SKIE-03-01-C 
@522 /* Bontt... he doesn't sound like a really nice guy and the way you "helped to make up his mind", I think I don't want to know the details. But I'm still grateful. To him and to you. */ 
EXTERN L#2SDSKJ SKIE-03-01-D 

CHAIN L#2SDSKJ SKIE-03-01-D 
@523 /* Thank you for telling me. I was thinking about this for a while and—it's just good to finally know. */ 
EXTERN L#2SDSKJ SKIE-03-04 

CHAIN L#2SDSKJ SKIE-03-02 
@524 /* Hey! It was a stupid thing to say, <CHARNAME>. That person saved me, too, right? Along like you. Even though I never met him, or her, I feel REALLY grateful. It must be kinda hard to sacrifice for someone you don't even know. */ 
EXTERN L#2SDSKJ SKIE-03-04 

CHAIN L#2SDSKJ SKIE-03-04 
@525 /* There have always been a group of people who cared about me, you know. Like Daddy. Or my dancing teacher, a great woman. I guess I'm quite lucky, right? */ 
END 
IF~~THEN REPLY @526 /* You are, Skie. */ EXTERN L#2SDSKJ SKIE-03-05 
IF~~THEN REPLY @527 /* You are. You know, I'm actually a bit jealous of that thing you have with your father. It must be great to have someone like that. */ EXTERN L#2SDSKJ SKIE-03-06 
IF~~THEN REPLY @528 /* I believe that we ourselves should be the person that knows what's best for us. I think you should learn how to take care about yourself, Skie, instead of thinking who may help you. */ EXTERN L#2SDSKJ SKIE-03-07 
IF~~THEN REPLY @529 /* I don't know and I don't really care. Can we move on and waste no more time, Skie? I tire of this. */ EXTERN L#2SDSKJ SKIE-03-03 

CHAIN L#2SDSKJ SKIE-03-05 
@530 /* Right. */ 
EXTERN L#2SDSKJ SKIE-03-08 

CHAIN L#2SDSKJ SKIE-03-06 
@531 /* Oh, right! You don't know how it is. Well, having a dad is great. They can preach sometimes, but at least they care. Usually. But—I guess I should stop here, right? Somehow I doubt you want to hear about this. */ 
EXTERN L#2SDSKJ SKIE-03-08 

CHAIN L#2SDSKJ SKIE-03-07 
@532 /* Hey, I can take care of myself! Don't you remember? I helped to spy on the Crusade. Maybe I got into some trouble, but... I helped! In a way. And I DO want to think about those who helped me. Otherwise I wouldn't think about you SO I wouldn't have set off to find you. */ 
EXTERN L#2SDSKJ SKIE-03-08 

CHAIN L#2SDSKJ SKIE-03-08 
@533 /* Anyway, isn't now time to move a bit? I don't want to go totally mawkish and... and maybe we'll find some nice new shops or do other stuff. */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",9)~ EXIT 

CHAIN L#2SDSKJ SKIE-03-03 
@534 /* Pfff! That's mean. Is that you, <CHARNAME>, or maybe that's Eldoth in disguise? */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",9) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

//4TH TIMERED 

CHAIN IF ~Global("L#2SDSkieTalks","GLOBAL",11)~ THEN L#2SDSKJ SKIE-04-00 
@535 /* My head hurts... Does anyone have any herbs that could help? Please...? */ 
END 
IF~~THEN REPLY @536 /* It's been a while since I heard you talking about headaches. Or that your feet hurt. Or about broken nails. Something happened? */ EXTERN L#2SDSKJ SKIE-04-01 
IF~~THEN REPLY @537 /* Skie, I need you to pull yourself together so we could focus on our job. I too have bad days but I don't walk to and fro complaining about things. */ EXTERN L#2SDSKJ SKIE-04-02 

CHAIN L#2SDSKJ SKIE-04-01 
@538 /* I really complained that much? I couldn't have been that bad. Could I? */ 
==L#2SDSKJ @539 /* Anyway, I couldn't sleep. And now the head. I think that Soultaker fed on me somehow. I don't know how or why. I—I hope it choked on me. Stupid thing. */ 
END 
IF~~THEN REPLY @540 /* Or maybe it's because your soul was too long out of your body. But it's still better than death. */ EXTERN L#2SDSKJ SKIE-04-03 
IF~~THEN REPLY @541 /* Hah, I bet it choked on you. And me. Both of us, actually. I created that anomaly inside it. I think that counts. */ EXTERN L#2SDSKJ SKIE-04-04 
IF~~THEN REPLY @542 /* Just deal with it, Skie, and let us get back to work, will you? */ EXTERN L#2SDSKJ SKIE-04-02 

CHAIN L#2SDSKJ SKIE-04-03 
@543 /* You say that because you don't feel that ache. */ 
EXTERN L#2SDSKJ SKIE-04-05 

CHAIN L#2SDSKJ SKIE-04-04 
@544 /* I guess it does. Eh, but now I feel as if I had some weirdness in my head. */ 
EXTERN L#2SDSKJ SKIE-04-05 

CHAIN L#2SDSKJ SKIE-04-05 
@545 /* But okay, fine. I'm not going to talk more about it. I'll just look for some herbs. Somewhere. Maybe I have something in my bag. I'll check it... for the fifth time. */ 
==L#2SDSKJ @546 /* Just to make sure... the soul that replaced mine in that thing. Will the blade drain it too? Or feed on it? Or do other nasty things? */ 
END 
IF~~THEN REPLY @547 /* Nem told me that it's not going to hurt. That now it's going to be like an endless slumber for them, so I don't think so. I guess that thing I did there, inside the Soultaker, changed how it works. */ EXTERN L#2SDSKJ SKIE-04-06 
IF~~THEN REPLY @548 /* Sorry, Skie, but I'm no specialist in soul-sucking blades and their nature. And to be honest, I would like to move on instead of talking about things we have no idea how work. It's nothing but a waste of our time. */ EXTERN L#2SDSKJ SKIE-04-02 

CHAIN L#2SDSKJ SKIE-04-06 
@549 /* Good. I guess. Better than being like some "soulish snack". */ 
==L#2SDSKJ @550 /* Anyway, I've been talking too much about that things that happened. It was important. I'll have to live with results, but we should talk about nicer things now, right? Like—like shops! Discounts! New clothing collections! */ 
==L#2SDSKJ @551 /* Is it weird that these interest me a tiny bit less than before? I still LOVE them, but a tiny bit less... */ 
==L#2SDSKJ @195 /* ... */ 
==L#2SDSKJ @552 /* ...OH NO... */ 
==L#2SDSKJ @553 /* What if that blade sucked that love from me?! */ 
END 
IF~~THEN REPLY @554 /* But you just said that it's still there. Mostly. Maybe you just started to care about other matters too? */ EXTERN L#2SDSKJ SKIE-04-07 
IF~~THEN REPLY @555 /* Gods, you're insane. Can we just stop talking about you and start working? You should know we're here for a reason. */ EXTERN L#2SDSKJ SKIE-04-02 

CHAIN L#2SDSKJ SKIE-04-07 
@556 /* Maybe you're right. */ 
==L#2SDSKJ @557 /* Eh, sorry my old passions, you have to make some space for few additional interests. But don't go anywhere. I promise we'll go shopping soon. */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",12)~ EXIT 

CHAIN L#2SDSKJ SKIE-04-02 
@558 /* Weren't you nicer before? I think you were. */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",12) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

//5TH TIMERED 

CHAIN IF ~Global("L#2SDSkieTalks","GLOBAL",14)~ THEN L#2SDSKJ SKIE-05-00 
@559 /* Don't you think Baldur's Gate seems boring compared to Athkatla? */ 
END 
IF~~THEN REPLY @560 /* What do you mean? I think you need to expand on that thought. */ EXTERN L#2SDSKJ SKIE-05-01 
IF~~THEN REPLY @561 /* I actually prefer Baldur's Gate. It has this atmosphere I quite much enjoy. */ EXTERN L#2SDSKJ SKIE-05-02 
IF~~THEN REPLY @562 /* I agree. Somehow Athkatla looks more impressive. I suppose that's because of its architecture. */ EXTERN L#2SDSKJ SKIE-05-03 
IF~~THEN REPLY @563 /* I'm not going to waste my time talking about cities, Skie. We should move on. */ EXTERN L#2SDSKJ SKIE-05-04 

CHAIN L#2SDSKJ SKIE-05-01 
@564 /* Hmm, let's do it differently: imagine that Baldur's Gate and Athkatla are two women—or men. Whichever you like. Which of them would seem more interesting? Less stodgy. You have to pick one. */ 
END 
IF~~THEN REPLY @565 /* Hmm, I think I would pick Baldur's Gate. */ EXTERN L#2SDSKJ SKIE-05-02 
IF~~THEN REPLY @566 /* I think I would pick Athkatla. */ EXTERN L#2SDSKJ SKIE-05-03 
IF~~THEN REPLY @567 /* Eh, I'm not going to waste my time talking about cities, Skie. We should move on. */ EXTERN L#2SDSKJ SKIE-05-04 

CHAIN L#2SDSKJ SKIE-05-02 
@568 /* Really? I mean, it's great that you like my home town... */ 
==L#2SDSKJ @569 /* ...but I would pick Athkatla. */ 
EXTERN L#2SDSKJ SKIE-05-05 

CHAIN L#2SDSKJ SKIE-05-03 
@570 /* Hey, me too! I would pick Athkatla over Baldur's Gate. */ 
EXTERN L#2SDSKJ SKIE-05-05 

CHAIN L#2SDSKJ SKIE-05-05 
@571 /* Don't get me wrong, I like Baldur's Gate. It's just—Athkatla is less boring. That huge Promenade. Or a whole district full of huge temples with those glowing and swirling things inside. Or a whole district built on a BRIDGE. That's insane, isn't it? Oh, I like it so much! */ 
==L#2SDSKJ @572 /* In other words: I think Athkatla may surprise. Baldur's Gate? Em... not really. */ 
END 
IF~~THEN REPLY @573 /* But on the other hand, I have never seen such poverty like the one in the Athkatlan Slums. */ EXTERN L#2SDSKJ SKIE-05-06 
IF~~THEN REPLY @574 /* It also depends on what you're expecting from a city. Not everyone wants to be "surprised by the city". Some may just want... to live peacefully. */ EXTERN L#2SDSKJ SKIE-05-07 
IF~~THEN REPLY @575 /* On the other hand, I really like the Elfsong Tavern in Baldur's Gate. Never have I seen better wine and cosier beds. */ EXTERN L#2SDSKJ SKIE-05-08 
IF~~THEN REPLY @576 /* Eh, I think I'm done talking about cities, Skie. Can't we just move on? Please. */ EXTERN L#2SDSKJ SKIE-05-04 

CHAIN L#2SDSKJ SKIE-05-06 
@577 /* But Baldur's Gate has poverty too! I know because Daddy had to deal it from time to time. */ 
EXTERN L#2SDSKJ SKIE-05-09 

CHAIN L#2SDSKJ SKIE-05-07 
@578 /* Ugh, I would literally die of boredom. */ 
EXTERN L#2SDSKJ SKIE-05-09 

CHAIN L#2SDSKJ SKIE-05-08 
@579 /* Elfsong is fine, but Daddy would never permit me to go to bars openly. I had to sneak out, so I've only been there a couple of times. */ 
EXTERN L#2SDSKJ SKIE-05-09 

CHAIN L#2SDSKJ SKIE-05-09 
@580 /* Anyway, our talk made me think about Baldur's Gate a bit. You think that the city got back to normal already? You know, after the whole Crusade thing. */ 
END 
IF~~THEN REPLY @581 /* Shouldn't you know that? You were there last. */ EXTERN L#2SDSKJ SKIE-05-10 
IF~~THEN REPLY @582 /* It always takes time. It's really hard to say. */ EXTERN L#2SDSKJ SKIE-05-11 
IF~~THEN REPLY @583 /* I don't know. I don't care. Can we just move on? */ EXTERN L#2SDSKJ SKIE-05-04 

CHAIN L#2SDSKJ SKIE-05-10 
@584 /* When I woke up, people were still dealing with some stuff. You know, that was a lot of tents to deal with the refugees. But I guess they're fine now. I hope so. */ 
EXTERN L#2SDSKJ SKIE-05-12 

CHAIN L#2SDSKJ SKIE-05-11 
@585 /* Eh, I guess you're right... There were a lot of refugees. But I hope they're fine now! */ 
EXTERN L#2SDSKJ SKIE-05-12 

CHAIN L#2SDSKJ SKIE-05-12 
@586 /* I talked to some of them, you know? It was FAR better than sitting at home and waiting for Daddy and others to come up with a plan. I hate waiting. Who has time for waiting? People should wait less and do more! */ 
==L#2SDSKJ @587 /* Anyway, they had so many stories to tell! But some stupid people preffered to fight than to talk. */ 
==L#2SDSKJ @588 /* But hey, I guess you'd rather move on, right? Come! Let's go and do great things. */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",15)~ EXIT 
 
CHAIN L#2SDSKJ SKIE-05-04 
@589 /* Fine. Stop being a slaver, okay? It's really annoying. */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",15) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

//6TH TIMERED (UPON REST) 

CHAIN IF ~Global("L#2SDSkieTalks","GLOBAL",17) Global("L#2SDSkieFriendshipActive","GLOBAL",1)~ THEN L#2SDSKJ SKIE-06-00 
@590 /* Hey! I've got a SURPRISE for you! */ 
END 
IF~~THEN REPLY @591 /* Oh, really? What would it be? */ EXTERN L#2SDSKJ SKIE-06-01 
IF~~THEN REPLY @592 /* I love surprises! So? Tell me! What have you got? */ EXTERN L#2SDSKJ SKIE-06-01 
IF~~THEN REPLY @593 /* I have no time for this, Skie. We stopped to have a rest, not to waste more time. */ EXTERN L#2SDSKJ SKIE-06-02 

CHAIN L#2SDSKJ SKIE-06-01 
@594 /* You know, I've been thinking about how to make this whole adventuring nicer and then I realized: you rarely have time for simple pleasures! And then I knew what we needed. */ 
==L#2SDSKJ @595 /* We need some WINE TIME! Look! I got a bottle of Sembian wine! It's from château Blah-blah! */ 
END 
IF~~THEN REPLY @596 /* Blah-blah?! That famous Blah-blah?! */ EXTERN L#2SDSKJ SKIE-06-03 
IF~~THEN REPLY @597 /* Wait, that's not a real name, right? */ EXTERN L#2SDSKJ SKIE-06-03 
IF~~THEN REPLY @598 /* We have no time for that kind of pleasures, Skie. I need both you and me to be focused and sharp. */ EXTERN L#2SDSKJ SKIE-06-02 

CHAIN L#2SDSKJ SKIE-06-03 
@599 /* I could NEVER remember those Sembian... wine makers? Wine houses? You know what I mean. */ 
==L#2SDSKJ @600 /* So? Are you ready to have some wine and talking with your best friend, Skie? Of course you have! Right...? */ 
END 
IF~~THEN REPLY @601 /* Oepn that wine already. (wink) */ EXTERN L#2SDSKJ SKIE-06-04 
IF~~THEN REPLY @602 /* Uhm... why not. I suppose we can have some wine and chat. */ EXTERN L#2SDSKJ SKIE-06-04 
IF~~THEN REPLY @603 /* Sorry, but I don't drink alcohol. But we can talk. */ EXTERN L#2SDSKJ SKIE-06-05 
IF~~THEN REPLY @604 /* We have no time for this and I think you misunderstood your place in the group. Leave me and have some rest, yourself. */ EXTERN L#2SDSKJ SKIE-06-02 

CHAIN L#2SDSKJ SKIE-06-04 
@605 /* Oh, great! It's been so long since I had some wine with a friend and a chat—and do all that stuff. And here is your share of wine. */ 
==L#2SDSKJ @606 /* Mmm. It's SO good! I didn't know it would be that good. Best... Blah-blah I ever had! */ 
END 
IF~~THEN REPLY @607 /* It's good. But you wanted to talk, right? */ EXTERN L#2SDSKJ SKIE-06-06 
IF~~THEN REPLY @608 /* I had better. But anyway, you wanted to tell me something. */ EXTERN L#2SDSKJ SKIE-06-06 

CHAIN L#2SDSKJ SKIE-06-05 
@609 /* Really? I mean, sure. We can just talk. Or I'll have some wine. It would be pity to waste it, right? */ 
==L#2SDSKJ @610 /* Hey, it's SO good! I didn't know it would be that good. Best... Blah-blah I ever had! */ 
END 
IF~~THEN REPLY @611 /* I'm glad you like it. Anyway, you wanted to tell me something. */ EXTERN L#2SDSKJ SKIE-06-06 
IF~~THEN REPLY @612 /* Just don't drink too much. Now, you wanted to tell me something, yes? */ EXTERN L#2SDSKJ SKIE-06-06 

CHAIN L#2SDSKJ SKIE-06-06 
@613 /* Right. You know. I wanted to thank you. For—for ALL OF THIS. Adventuring! Saving me! Showing me all weird and spooky things. It's better than anything I saw when sneaking out of Silvershield estate. */ 
END 
IF~~THEN REPLY @614 /* It is you who decided to give it a shot. And even after hundreds of headaches and few dozen broken nails, you're still here. On the road. */ EXTERN L#2SDSKJ SKIE-06-07 
IF~~THEN REPLY @615 /* You're welcome. You know, I am surprised. I thought you would still be complaining, whining, and making all that noise... you were really annoying. */ EXTERN L#2SDSKJ SKIE-06-08 
IF~~THEN REPLY @616 /* You speak to me as if we were best friends. But you should know that you're just a companion to me. Do you understand me? */ EXTERN L#2SDSKJ SKIE-06-09 

CHAIN L#2SDSKJ SKIE-06-07 
@617 /* You really think that...? Oh, how nice of you. Really. People rarely tell me nice things. Apart from Daddy and some other people, but—it's different. You're my friend, after all, right? Not family, or a butler. */ 
EXTERN L#2SDSKJ SKIE-06-10 

CHAIN L#2SDSKJ SKIE-06-08 
@618 /* Wow. You're honest to the bone, huh? But you used past tense, so I guess you think differently of me now. */ 
EXTERN L#2SDSKJ SKIE-06-10 

CHAIN L#2SDSKJ SKIE-06-10 
@619 /* Anyway, this life is better. It gives me more blisters and—and other nasty things, but it's better. That's why I wanted to thank you. You're a good friend. */ 
END 
IF~~THEN REPLY @620 /* You're a good friend, too, Skie. */ EXTERN L#2SDSKJ SKIE-06-11 
IF~~THEN REPLY @621 /* No problem. Always at your service, miss Silvershield! */ EXTERN L#2SDSKJ SKIE-06-12 
IF~~THEN REPLY @622 /* I think you misunderstood me, Skie. We're not friends. We just work together. */ EXTERN L#2SDSKJ SKIE-06-09 

CHAIN L#2SDSKJ SKIE-06-11 
@623 /* Hey, thanks! Uhm—it's probably getting too sweet, right? */ 
EXTERN L#2SDSKJ SKIE-06-13 

CHAIN L#2SDSKJ SKIE-06-12 
@624 /* Hah! Thanks friend! Uhm—it's getting a bit too sweet, right? */ 
EXTERN L#2SDSKJ SKIE-06-13 

CHAIN L#2SDSKJ SKIE-06-13 
@625 /* Let's end it for today, <CHARNAME>. Hah, that wind is... kinda strong, no? It's... more potent than... other potent things. */ 
==L#2SDSKJ @626 /* Sleep well, bestie. I think I need to have some sleep. *hiccup* */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",18) SetGlobal("L#2SDSkieFriendshipActive","GLOBAL",2) RestParty()~ EXIT 

CHAIN L#2SDSKJ SKIE-06-09 
@627 /* Uhm... okay.... I thought we were friends, not just some partners in chasing Irenicus. But never mind. I think I'll just go now and have some sleep. */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",18) SetGlobal("L#2SDSkieFriendshipActive","GLOBAL",3) RestParty()~ EXIT 

CHAIN L#2SDSKJ SKIE-06-02 
@628 /* Well, I thought we would sit and talk a while, but if I'm asking for too much... */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",18) SetGlobal("L#2SDSkieFriendshipActive","GLOBAL",3) RestParty()~ EXIT 

//7TH TALK (AFTER REST) 

CHAIN IF ~Global("L#2SDSkieTalks","GLOBAL",18)~ THEN L#2SDSKJ SKIE-07-00 
@629 /* Ugh... it's time to move on? My head hurts. I suppose that's the price for having some wine with friends, right? That's a cruel price... */ 
DO ~SetGlobal("L#2SDSkieTalks","GLOBAL",19)~ EXIT 


//////////////////////////////////// 
///////AFTER FRIENDSHIP TALKS/////// 
//////////////////////////////////// 


CHAIN IF ~Global("L#2SDMissiniReturns","GLOBAL",2) Global("L#2SDSkieFriendshipActive","GLOBAL",2)~ THEN L#2SDMES Messni02x0S // SUCCEFSUL 
@630 /* Lady Silvershield! So you're with <CHARNAME>, after all! Everyone has been looking for you! Your father is so worried! */ 
==L#2SDSKJ @631 /* Missini? Uhm—It's good to see you. But how did you find me? */ 
==L#2SDMES @632 /* It's not that difficult. We had a feeling you went to find <CHARNAME>. Yet <CHARNAME> is constantly moving, so it wasn't that easy to find <PRO_HISHER> current location. */ 
==L#2SDMES @633 /* Your father and Lady Jannath ordered me to find you. They want you to come back. They worry that you may not be safe with this <PRO_MANWOMAN>. */ 
==L#2SDSKJ @634 /* I'm fine. See? Both arms are here. Both legs too! Just tell Daddy I'm okay and that... I'm not going back. */ 
==L#2SDMES @635 /* You know that they won't be happy with that answer, Lady Silvershield. */ 
==L#2SDSKJ @636 /* Oh, don't be so dull. We both know you understand me, Missini. You too love those missions Liia sends you on. You like that thrill and—and everything. */ 
==L#2SDMES @637 /* You know that I can't admit it openly, Lady— */ 
==L#2SDSKJ @638 /* Can you stop with that "Lady" thing? I'm Skie. Just call me Skie. */ 
==L#2SDMES @639 /* Fine, L... Skie. Are you sure you want to stay here? With <CHARNAME>. */ 
==L#2SDSKJ @640 /* I'M SURE. How many times do I have to say this? I'm fine and even if that's risky, I want to take that risk. */ 
==L#2SDSKJ @641 /* Tell Daddy that I love him, but I want to decide how to live my life on my own. He always wanted to be smarter and better. That's what I'm doing here. */ 
==L#2SDMES @642 /* Duke Eltan... he knew you may say something like that. He prepared this letter. It's to <CHARNAME>. Here. Have it. He also sends you another gift. It's for both you and Skie. */ 
==L#2SDSKJ @643 /* Eh, a letter? He loves letters. I wouldn't be surprised if he prepared three different letters depending on what I have said. */ 
==L#2SDMES @644 /* Skie...? */ 
==L#2SDSKJ @645 /* Yes, Missini? */ 
==L#2SDMES @646 /* Do your best. And watch out for yourself. */ 
==L#2SDSKJ @647 /* I will. */ 
==L#2SDMES @648 /* Goodbye, Skie. And goodbye, <CHARNAME>. As we can see, you have a faithful friend here, with you. */ 
DO ~SetGlobal("L#2SDMissiniReturns","GLOBAL",3) GiveItemCreate("L#2SDLE1",Player1,1,1,0) GiveItemCreate("L#2SDSSS",Player1,1,1,0) ReputationInc(1) DestroySelf()~ EXIT 

CHAIN IF ~Global("L#2SDMissiniReturns","GLOBAL",2) Global("L#2SDSkieFriendshipActive","GLOBAL",3) Global("L#2SDSkieWarns","GLOBAL",0) ReputationGT(Player1,7)~ THEN L#2SDMES Messni02x0F // FAILED 
@630 /* Lady Silvershield! So you're with <CHARNAME>, after all! Everyone has been looking for you! Your father is so worried! */ 
==L#2SDSKJ @631 /* Missini? Uhm—It's good to see you. But how did you find me? */ 
==L#2SDMES @649 /* It's not that difficult. We had a feeling you wanted to find <CHARNAME>. Yet <CHARNAME> is constantly moving, so it wasn't that easy to find <PRO_HISHER> current location. */ 
==L#2SDMES @633 /* Your father and Lady Jannath ordered me to find you. They want you to come back. They worry that you may not be safe with this <PRO_MANWOMAN>. */ 
==L#2SDSKJ @650 /* I... */ 
==L#2SDMES @651 /* Lady Silvershield? */ 
==L#2SDSKJ @652 /* <CHARNAME> can be mean sometimes... */ 
==L#2SDSKJ @653 /* ...but I don't want to leave yet. I want to give <PRO_HIMHER> another chance. <CHARNAME> saved my life, remember? */ 
==L#2SDMES @654 /* Yet you said <PRO_HESHE> is mean to you sometimes. */ 
==L#2SDSKJ @655 /* So? Daddy can be mean sometimes too. I'm staying. If I decide that what <CHARNAME> is doing isn't right, I'll just leave. But until then, I want to stay. */ 
==L#2SDMES @656 /* I understand. */ 
==L#2SDMES @657 /* <CHARNAME>, I have a letter Duke Eltan prepared. He wanted me to give you this if Lady Skie decided to stay. He knew that may happen. */ 
==L#2SDMES @658 /* Lady... Please, watch out for yourself. */ 
==L#2SDSKJ @647 /* I will. */ 
==L#2SDMES @659 /* Goodbye, Skie. And goodbye, <CHARNAME>. */ 
DO ~SetGlobal("L#2SDMissiniReturns","GLOBAL",3) SetGlobal("L#2SDSkieWarns","GLOBAL",1) GiveItemCreate("L#2SDLE2",Player1,1,1,0) DestroySelf()~ EXIT 

CHAIN IF ~Global("L#2SDMissiniReturns","GLOBAL",2) Global("L#2SDSkieFriendshipActive","GLOBAL",3) ReputationLT(Player1,8) Global("L#2SDTF","GLOBAL",0)~ THEN L#2SDMES Messni02xTF // TOTALLY FAILED 
@630 /* Lady Silvershield! So you're with <CHARNAME>, after all! Everyone has been looking for you! Your father is so worried! */ 
==L#2SDSKJ @631 /* Missini? Uhm—It's good to see you. But how did you find me? */ 
==L#2SDMES @649 /* It's not that difficult. We had a feeling you wanted to find <CHARNAME>. Yet <CHARNAME> is constantly moving, so it wasn't that easy to find <PRO_HISHER> current location. */ 
==L#2SDMES @633 /* Your father and Lady Jannath ordered me to find you. They want you to come back. They worry that you may not be safe with this <PRO_MANWOMAN>. */ 
==L#2SDSKJ @650 /* I... */ 
==L#2SDMES @651 /* Lady Silvershield? */ 
==L#2SDSKJ @652 /* <CHARNAME> can be mean sometimes... */ 
==L#2SDSKJ @660 /* You're right. <CHARNAME> was mean and <PRO_HESHE> did bad things. That's not the hero I remembered. */ 
==L#2SDSKJ @661 /* <CHARNAME>, I thought you were better than Eldoth, but... you're bad for me. You've done horrible things to others. That's not the Hero of Baldur's Gate I wanted to see. */ 
==L#2SDMES @662 /* What's your order, Lady? */ 
==L#2SDSKJ @663 /* Take us out of here. */ 
==L#2SDSKJ @664 /* You should have been a better <PRO_MANWOMAN>, <CHARNAME>. Things could have gone differently. Thanks for saving my life but—this is over. */ 
==L#2SDMES @665 /* Farewell, <CHARNAME>. */ 
DO ~SetGlobal("L#2SDMissiniReturns","GLOBAL",3) SetGlobal("L#2SDTF","GLOBAL",1)~ EXIT 

//COMMENT AFTER MISSINI 

CHAIN IF ~Global("L#2SDMissiniReturns","GLOBAL",3) Global("L#2SDCommentAfter","GLOBAL",0)~ THEN L#2SDSKJ Comment000 
@666 /* I guess they won't bother us again. Anyway, you heard what I said... I think I have nothing else to add. In fact, I would rather just get back to work, okay? It was all a bit awkward. */ 
==L#2SDSKJ @667 /* Let's go. Let's do some great things, right? */ 
END 
IF~~THEN REPLY @530 /* Right. */ EXTERN L#2SDSKJ Comment001 
IF~~THEN REPLY @668 /* Sure, but... thanks for staying. */ EXTERN L#2SDSKJ Comment002 
IF~~THEN REPLY @669 /* Let's just get moving. */ EXTERN L#2SDSKJ Comment001 

CHAIN L#2SDSKJ Comment001 
@670 /* Great! So? Where are we going now? I'm right behind you. */ 
DO ~SetGlobal("L#2SDCommentAfter","GLOBAL",1)~ EXIT 

CHAIN L#2SDSKJ Comment002 
@671 /* No problem! I want to see what this world can offer me. And I think it's good to check that with you. */ 
==L#2SDSKJ @672 /* Come. Let's get going! */ 
DO ~SetGlobal("L#2SDCommentAfter","GLOBAL",1)~ EXIT 



///////////////////////////////// 
////////SITUATIONAL TALKS//////// 
///////////////////////////////// 



//BEHOLDER LAIR or UNSEEING EYE LAIR 

CHAIN IF ~Global("L#2SDSkieMeat","GLOBAL",1)~ THEN L#2SDSKJ Meat00-00 
@673 /* What—WHY ARE WE WALKING ON SOME MEAT?! Uh, this place is disgusting. And that smell... */ 
END 
IF~~THEN REPLY @674 /* Well, I did not expect that. */ EXTERN L#2SDSKJ Meat00-01 
IF~~THEN REPLY @675 /* It seems that we're in some weird lair. */ EXTERN L#2SDSKJ Meat00-01 
IF~~THEN REPLY @676 /* Stop whining. Just hold your breath and let's move on, Skie. */ EXTERN L#2SDSKJ Meat00-02 

CHAIN L#2SDSKJ Meat00-01 
@677 /* Places like that should NEVER exist. And that... plop that comes with every step. *shivers* */ 
END 
IF~~THEN REPLY @678 /* Isn't that funny? I actually like that plop. It's like walking on a huge tongue. */ EXTERN L#2SDSKJ Meat00-03 
IF~~THEN REPLY @679 /* I know, but we're here for a reason, Skie. We must stand it somehow. */ EXTERN L#2SDSKJ Meat00-04 
IF~~THEN REPLY @680 /* Just stop whining. We're not here to have fun, but because situation demands it. Now let us move on. */ EXTERN L#2SDSKJ Meat00-02 

CHAIN L#2SDSKJ Meat00-03 
@681 /* Okay, if you're really enjoying this, then there's something seriously wrong with you. */ 
DO ~SetGlobal("L#2SDSkieMeat","GLOBAL",2)~ EXIT 

CHAIN L#2SDSKJ Meat00-04 
@682 /* I know, but... it's still just—bleh. */ 
==L#2SDSKJ @683 /* Let's do what we must and leave this place as soon as possible, okay? */ 
DO ~SetGlobal("L#2SDSkieMeat","GLOBAL",2)~ EXIT 

CHAIN L#2SDSKJ Meat00-02 
@684 /* Ugh... this must be some weird nightmare. */ 
DO ~SetGlobal("L#2SDSkieMeat","GLOBAL",2) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 



//RADIANT HEART 

CHAIN IF ~Global("L#2SDSkieRadiant","GLOBAL",1)~ THEN L#2SDSKJ Heart00-00 
@685 /* They're just as boring as the Flaming Fist. All they do is work and pray. */ 
END 
IF~~THEN REPLY @686 /* Well, what else did you expect them to do? It's an order. */ EXTERN L#2SDSKJ Heart00-01 
IF~~THEN REPLY @687 /* It's not as bad as it looks like. They do many other things too. */ EXTERN L#2SDSKJ Heart00-02 
IF~~THEN REPLY @688 /* Skie, please. You should keep those kind of comments to yourself! */ EXTERN L#2SDSKJ Heart00-03 
IF~~THEN REPLY @689 /* You were a Flaming Fist member. Does that mean you want to join the Order of the Radiant Heart as well? */ EXTERN L#2SDSKJ Heart00-04 

CHAIN L#2SDSKJ Heart00-01 
@690 /* Right. But they could be doing so many better and NICER things. But they do THIS. Consciously. Freaks. */ 
==L#2SDSKJ @691 /* Hey, maybe let's check their boxes and chests? Maybe we'll find something useful. */ 
DO ~SetGlobal("L#2SDSkieRadiant","GLOBAL",2)~ EXIT 

CHAIN L#2SDSKJ Heart00-02 
@692 /* I hope so. If they don't, then—well, then we can be sure orders like this attract loonies. */ 
==L#2SDSKJ @693 /* I have an idea! Maybe let's check their boxes and chests? Maybe we'll find something useful. */ 
DO ~SetGlobal("L#2SDSkieRadiant","GLOBAL",2)~ EXIT 

CHAIN L#2SDSKJ Heart00-03 
@694 /* Pff! And maybe—maybe you should keep your orders for yourself, hmm? */ 
DO ~SetGlobal("L#2SDSkieRadiant","GLOBAL",2) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

CHAIN L#2SDSKJ Heart00-04 
@695 /* Hah. Well... no. If I ever join any order, that will mean I'm no longer Skie Silvershield, but some freakish doppelganger. */ 
==L#2SDSKJ @696 /* Anyway, let's move on. And by the way, if you're thinking that checking their boxes and chests is a good idea, I totally agree. */ 
DO ~SetGlobal("L#2SDSkieRadiant","GLOBAL",2)~ EXIT 



//SOULTAKER RESTORED 

CHAIN IF ~Global("L#2SDSkieSoultakerRes","GLOBAL",1)~ THEN L#2SDSKJ Soultaker00-00 
@697 /* You fixed that thing? Are you sure it's a good idea? */ 
END 
IF~~THEN REPLY @698 /* No worries, Skie. It may look like the old Soultaker, but it no longer has its original powers. */ EXTERN L#2SDSKJ Soultaker00-01 
IF~~THEN REPLY @699 /* Oh, just stop it, will you? It's just a dagger. And it can't steal souls anymore, so stop moaning. */ EXTERN L#2SDSKJ Soultaker00-02 

CHAIN L#2SDSKJ Soultaker00-01 
@700 /* Right... I had my portion of soul-sucking experience. I want to be sure that my soul won't get sucked because I cut myself when peeling an apple, or something. */ 
END 
IF~~THEN REPLY @701 /* I'm pretty sure it's not the way it works, Skie. */ EXTERN L#2SDSKJ Soultaker00-03 
IF~~THEN REPLY @702 /* Oh, just quit whining and let us move on, will you? */ EXTERN L#2SDSKJ Soultaker00-02 

CHAIN L#2SDSKJ Soultaker00-03 
@703 /* I know! You think I'm stupid? I—I'm just not really fond of that item. No wonder, huh? */ 
==L#2SDSKJ @704 /* ...but you said it works differently now, right? You know how? */ 
END 
IF~Global("L#2SDPyll","GLOBAL",1)~THEN REPLY @705 /* I think it has some healing properties. I feel much better when holding it. */ EXTERN L#2SDSKJ Soultaker00-04 
IF~Global("L#2SDRoi","GLOBAL",1)~THEN REPLY @706 /* I think it has some protective abilities. I feel somehow... safer when I'm holding it. */ EXTERN L#2SDSKJ Soultaker00-04 
IF~Global("L#2SDBontt","GLOBAL",1)~THEN REPLY @707 /* I think it enhances my powers. I feel much stronger when holding it. */ EXTERN L#2SDSKJ Soultaker00-04 
IF~~THEN REPLY @708 /* I don't know yet. We'll check that later. I'm quite curious myself. */ EXTERN L#2SDSKJ Soultaker00-05 
IF~~THEN REPLY @709 /* That's not your business, Skie. Better go back to the formation and let us move on. */ EXTERN L#2SDSKJ Soultaker00-02 

CHAIN L#2SDSKJ Soultaker00-04 
@710 /* Hmm, that sounds interesting. Perhaps—perhaps I can get used to it. */ 
==L#2SDSKJ @711 /* ...in a while. */ 
EXTERN L#2SDSKJ Soultaker00-06 

CHAIN L#2SDSKJ Soultaker00-05 
@712 /* So we know that it's not sucking souls anymore, but we have no idea what else it can do? That's SO reassuring. */ 
EXTERN L#2SDSKJ Soultaker00-06 

CHAIN L#2SDSKJ Soultaker00-06 
@713 /* But okay, if you already paid to fix it, maybe we could try it out on some enemies? Oh, maybe we should stab some bad goblins and see what's going to happen? */ 
==L#2SDSKJ @714 /* That way we'll know how it works, right? Come. Let's find some. */ 
DO ~SetGlobal("L#2SDSkieSoultakerRes","GLOBAL",2)~ EXIT 

CHAIN L#2SDSKJ Soultaker00-02 
@715 /* Pff, that wasn't really nice. You were nicer before you held that thing, you know? */ 
DO ~SetGlobal("L#2SDSkieSoultakerRes","GLOBAL",2) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 



//UNDERWATER CITY 

CHAIN IF ~Global("L#2SDSkieUnderwater","GLOBAL",2)~ THEN L#2SDSKJ Underwater00-00 
@716 /* Hey, you know that there's a sea above our heads, right? There's a SEA up there. That's a bit too weird. */ 
END 
IF~~THEN REPLY @717 /* Too weird? Hmm, considering the troubles I get myself into, I wouldn't call our circumstances "too weird". */ EXTERN L#2SDSKJ Underwater00-01 
IF~~THEN REPLY @718 /* I know. But I have a plan. Just tell me can you swim? You see, that may be a must. */ EXTERN L#2SDSKJ Underwater00-02 
IF~~THEN REPLY @719 /* We can't stay here any longer, Skie, so less talking, more walking. */ EXTERN L#2SDSKJ Underwater00-03 

CHAIN L#2SDSKJ Underwater00-01 
@720 /* Right. That's actually quite true. */ 
EXTERN L#2SDSKJ Underwater00-04 

CHAIN L#2SDSKJ Underwater00-02 
@721 /* Don't even joke like that. I think I saw a really HUGE jellyfish out there. And I'm not sure if you noticed but we're quite deep. Wouldn't we run out of air and just drown. I'm not sure I want to even think about that. */ 
EXTERN L#2SDSKJ Underwater00-04 

CHAIN L#2SDSKJ Underwater00-04 
@722 /* If we only had a huge worm we could bribe some fishy sentinels. Maybe they would let us pass. And maybe we would find some portal. Or some other... door. */ 
END 
IF~~THEN REPLY @723 /* We'll find our way out of here. */ EXTERN L#2SDSKJ Underwater00-05 
IF~~THEN REPLY @724 /* A huge worm? Hah, well. I must say that I would love the see that, but unfortunately we have no spare giant worms. */ EXTERN L#2SDSKJ Underwater00-06 
IF~~THEN REPLY @725 /* I'm done with this pointless jabbering. We should get moving. */ EXTERN L#2SDSKJ Underwater00-03 

CHAIN L#2SDSKJ Underwater00-05 
@726 /* I know. It would be really stupid to get stuck here and never catch that creep Irenicus, right? */ 
EXTERN L#2SDSKJ Underwater00-07 

CHAIN L#2SDSKJ Underwater00-06 
@727 /* I would be surprised if you had any. */ 
EXTERN L#2SDSKJ Underwater00-07 

CHAIN L#2SDSKJ Underwater00-07 
@728 /* Anyway, I suppose I should stop joking around, right? I bet you'd like to find out some way of getting us out. */ 
==L#2SDSKJ @729 /* And when we get out, let's hope that wherever we'll end up, there'll be some baths. I can smell fish on me. Bleh. */ 
DO ~SetGlobal("L#2SDSkieUnderwater","GLOBAL",3)~ EXIT 

CHAIN L#2SDSKJ Underwater00-03 
@730 /* Eh, fine... */ 
DO ~SetGlobal("L#2SDSkieUnderwater","GLOBAL",3) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 



//REPUTATION (POST-MISSINI) 

CHAIN IF ~Global("L#2SDSkieWarns","GLOBAL",2)~ THEN L#2SDSKJ RepMi00-00 
@731 /* Hey, you remember what I told Missini? That I'll leave if you're no better than the bandits you were supposed to fight? You just crossed the line. So... I'm leaving. Good luck in whatever nasty things you'll get yourself into. */ 
DO ~SetGlobal("L#2SDSkieWarns","GLOBAL",3) LeaveParty() DropInventory() EscapeArea()~ EXIT 



//AFTER SLAYER 

CHAIN IF ~Global("L#2SDSkiePostSlayer","GLOBAL",2)~ THEN L#2SDSKJ AfterSlayer00-00 
@732 /* That thing you change into—it woke up because he messed with your soul, right? I felt a similar void before. It's so empty. And creepy. */ 
END 
IF~~THEN REPLY @733 /* And we hoped that we were done with soul-sucking... */ EXTERN L#2SDSKJ AfterSlayer00-01 
IF~~THEN REPLY @734 /* Please, just leave me alone, Skie. I'm not in the mood to talk. */ EXTERN L#2SDSKJ AfterSlayer00-02 

CHAIN L#2SDSKJ AfterSlayer00-01 
@735 /* We thought so, yes. That damn—creep. He came out of nowhere, started to do all of that. First at Dragonspear and now— */ 
==L#2SDSKJ @736 /* Eh, I'm sorry. He just made me really mad—like literally NO ONE before. But... maybe you need something, <CHARNAME>? You don't look well. I think you have under-eye bags. Maybe you want to rest again? Or eat something? */ 
END 
IF~~THEN REPLY @737 /* I know you want to help. I could use some water, I guess. */ EXTERN L#2SDSKJ AfterSlayer00-03 
IF~~THEN REPLY @738 /* I'm not sure eating can fill that... empty hole inside me. */ EXTERN L#2SDSKJ AfterSlayer00-04 
IF~~THEN REPLY @739 /* I don't need anything from you, Skie. Just get back into formation. I need some space. */ EXTERN L#2SDSKJ AfterSlayer00-02 

CHAIN L#2SDSKJ AfterSlayer00-03 
@740 /* Right! I have some. Here you are. Just—don't be surprised. I put some lemongrass there. I really like it, you know. */ 
==L#2SDSKJ @741 /* If you like it, though, you can have my waterskin. You deserve some nice things after what happened. Even if they can't fix that thing he did. I wish we could do the same to him. */ 
EXTERN L#2SDSKJ AfterSlayer00-05 

CHAIN L#2SDSKJ AfterSlayer00-04 
@742 /* I think I know what you're talking about... When my soul was in the dagger, it was like the other way round. I felt as if I was the only non-voidish thing, surrounded with this weird nothingness. Even though we saw this hellish land, it was like... like something fake. As if it wanted to imitate material things like rocks and everything. */ 
==L#2SDSKJ @743 /* But it failed. I knew that it was just a voidish illusion, not real place or creatures. */ 
EXTERN L#2SDSKJ AfterSlayer00-05 

CHAIN L#2SDSKJ AfterSlayer00-05 
@744 /* Anyway, if you want to talk about Irenicus, that thing inside you or just anything, you know where to find me. We can also talk about nicer things. I can even try to cook you something, when we stop—but that doesn't go well usually. Most of the time. */ 
END 
IF~~THEN REPLY @745 /* Still, I appreciate what you're doing. */ EXTERN L#2SDSKJ AfterSlayer00-06 
IF~~THEN REPLY @746 /* Just give me a break, Skie. I really need some space. */ EXTERN L#2SDSKJ AfterSlayer00-02 

CHAIN L#2SDSKJ AfterSlayer00-06 
@747 /* You're welcome. I really want to help. Oh, and have this. It's a special cream. Put it under your eyes. It should help with those bags. */ 
==L#2SDSKJ @748 /* Now let's go. Let's find that creep and take back what he took from you. */ 
DO ~SetGlobal("L#2SDSkiePostSlayer","GLOBAL",3)~ EXIT 

CHAIN L#2SDSKJ AfterSlayer00-02 
@749 /* Fine... I guess you have a right to be a bit grumpy... */ 
DO ~SetGlobal("L#2SDSkiePostSlayer","GLOBAL",3)~ EXIT 


///GORGE

CHAIN IF WEIGHT #-1 ~Global("OHD_GORGE_NTRJEX","OH5100",1)~ THEN L#2SDSKJ GORGE.SKIE.00
@978
DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)~ EXIT


//////////////////////////////////////////// 
////////ELDOTH AND THE VULGAR MONKEY//////// 
//////////////////////////////////////////// 

BEGIN L#2SDELD 

CHAIN IF ~Global("L#2SDSkieEldothReact","GLOBAL",0) Global("L2SDEldothPlot","GLOBAL",1) InMyArea(Player1) InMyArea("L#2SDSkie")~ THEN L#2SDELD Eldoth00-00 
@750 /* ...and she believed me. Ah, that girl would do anything her sweet Eldoth Kron would ask her to do. But I had to leave anyway. Adventures and, well, different opportunities called. */ 
==L#2SDSKJ @751 /* You! YOU! */ 
==L#2SDELD @752 /* What do— */ 
==L#2SDELD @753 /* Ah, who can my eyes see! It's Skie Silvershield! Skie the Naïve, how I would call her. Boys, meet one of my previous girls. Skie, meet the boys! */ 
==L#2SDSKJ @754 /* You pathetic little—from all the stupid people I had to meet you! What are you doing here? Looking for harlots? Or maybe you decided to find even more boozed guys so they couldn't realize how stupid you were? */ 
END 
IF~~THEN REPLY @755 /* Could you remind me who that man is? */ EXTERN L#2SDSKJ Eldoth00-01 
IF~~THEN REPLY @756 /* Eldoth, here? Wait... why am I surprised? */ EXTERN L#2SDELD Eldoth00-02 
IF~~THEN REPLY @757 /* Scum. I hoped you were dead. */ EXTERN L#2SDELD Eldoth00-03 

CHAIN L#2SDSKJ Eldoth00-01 
@758 /* How could you forget Eldoth? He and I made love under the moonlight and extorted gold from Daddy. Then Eldoth left me for some harlot. */ 
EXTERN L#2SDELD Eldoth00-04 

CHAIN L#2SDELD Eldoth00-02 
@759 /* Ah, <CHARNAME> is here. I'm so pleased to see you again. */ 
EXTERN L#2SDELD Eldoth00-04 

CHAIN L#2SDELD Eldoth00-03 
@760 /* I'm pleased to see you again too, <CHARNAME>. */ 
EXTERN L#2SDELD Eldoth00-04 

CHAIN L#2SDELD Eldoth00-04 
@761 /* Boys, remember how I told you about a girl who couldn't tell the difference between a dog and a gibberling? That would be this lovely lady right here. */ 
==L#2SDSKJ @762 /* It's a lie! <CHARNAME> you know it's a lie, right? Oh, you're a damn—dog yourself! A weak one! And stupid! */ 
==L#2SDELD @763 /* Stupid? Girl, you should work on your vocabulary. You called me that a minute ago. */ 
==L#2SDSKJ @764 /* <CHARNAME>, there's no point in talking to him. He tricked me. He joined your group because he is a leech that wanted someone else to protect him. All he does is feed on other people's goodwill! */ 
==L#2SDSKJ @765 /* We should end this. No one is going to help him anyway. Just look at them. They're too drunk. */ 
END 
IF~Global("L#2SDSkieFriendshipActive","GLOBAL",2) !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,11)~THEN REPLY @766 /* Calm down, Skie. You are a good person. I'm telling you this as a friend. You are better than him and you proved it. You saved many people. Both with me and on your own, when you joined the Flaming Fist. */ EXTERN L#2SDSKJ Eldoth00-05 
IF~~THEN REPLY @767 /* He's not worth it. He'll die anyway, Skie. He'll drink himself to death. He's just some pathetic worm that can't get anything done on his own. */ EXTERN L#2SDSKJ Eldoth00-06 
IF~~THEN REPLY @768 /* I like that idea, Skie. He's a dead man. */ EXTERN L#2SDSKJ Eldoth00-07 

CHAIN L#2SDSKJ Eldoth00-05 
@769 /* You're right, <CHARNAME>. */ 
==L#2SDSKJ @770 /* You're scum, Eldoth, but I am beyond this. Go way! I don't want to see you EVER again. */ 
==L#2SDELD @771 /* You're weak, Skie. You have always been. */ 
DO ~SetGlobal("L#2SDSkieEldothReact","GLOBAL",1) ChangeAlignment("L#2SDSKIE",CHAOTIC_GOOD) SetGlobal("L2SDEldothPlot","GLOBAL",2) EscapeArea()~ EXIT 

CHAIN L#2SDSKJ Eldoth00-06 
@772 /* He's but a scum, <CHARNAME>! He—he is a pathetic fool. */ 
==L#2SDELD @773 /* But you heard your leader, Skie, and you'll listen to <PRO_HIMHER>. You always will. */ 
DO ~SetGlobal("L#2SDSkieEldothReact","GLOBAL",2) SetGlobal("L2SDEldothPlot","GLOBAL",2) EscapeArea()~ EXIT 

CHAIN L#2SDSKJ Eldoth00-07 
@774 /* Good! */ 
==L#2SDELD @775 /* This tavern has seen enough fighting. Let's take it outside. If you have enough courage to actually face me, fools. */ 
DO ~SetGlobal("L#2SDSkieEldothReact","GLOBAL",3) SetGlobal("L2SDEldothPlot","GLOBAL",2) EscapeArea()~ EXIT 

///SKIE'S COMMENT 

CHAIN IF ~GlobalGT("L#2SDSkieEldothReact","GLOBAL",0) GlobalLT("L#2SDSkieEldothReact","GLOBAL",4) Global("L2SDEldothPlot","GLOBAL",2)~ THEN L#2SDSKJ Eldoth02-00 
@776 /* I—I can't believe we met that... UGH! He ruined my day! */ 
==L#2SDSKJ IF ~Global("L#2SDSkieEldothReact","GLOBAL",1)~ THEN @777 /* But that was the right thing to do, right? He was so lucky that you were here and... never mind. Let's just go now, okay? */ 
==L#2SDSKJ IF ~Global("L#2SDSkieEldothReact","GLOBAL",2)~ THEN @778 /* I don't understand why you let him go. But fine. I can deal with it. Let's just leave this damn place, okay? */ 
==L#2SDSKJ IF ~Global("L#2SDSkieEldothReact","GLOBAL",3)~ THEN @779 /* Come. We should finish this as soon as possible. */ 
==L#2SDSKJ @780 /* This <DAYNIGHT> can't get any worse. */ 
DO ~SetGlobal("L#2SDSkieEldothReact","GLOBAL",4) SetGlobal("L2SDEldothPlot","GLOBAL",3)~ EXIT 

///ELDOTH OUTSIDE 
 
CHAIN IF ~Global("L2SDEldothPlot","GLOBAL",4)~ THEN L#2SDELD Eldoth03-00 
@781 /* My pirate friends, I give you <CHARNAME> - the Hero of Baldur's Gate. Kill <PRO_HIMHER> and all pirates and thugs will remember your names forever. */ 
==L#2SDELD @782 /* As for you, <CHARNAME>. You must forgive me, but when it's about survival, every trick should be used. */ 
DO ~SetGlobal("L2SDEldothPlot","GLOBAL",5) Enemy() ApplySpell(Myself,WIZARD_MIRROR_IMAGE) ApplySpell(Myself,WIZARD_PROTECTION_FROM_NORMAL_WEAPONS)~ EXIT 

///SKIE'S POST-ELDOTH 

CHAIN IF ~Global("L2SDEldothPlot","GLOBAL",6)~ THEN L#2SDSKJ Eldoth04-00 
@783 /* So, he's dead. I'm not sure if I should be surprised that he brought those drunken pirates. */ 
==L#2SDSKJ @784 /* But I suppose he deserved what happened, right? He told people all those lies and did so many nasty things. */ 
END 
IF~~THEN REPLY @785 /* He deserved everything that happened to him, Skie. */ EXTERN L#2SDSKJ Eldoth04-01 
IF~~THEN REPLY @786 /* I'm not sure. I mean, it's weird to kill someone you have travelled with before. */ EXTERN L#2SDSKJ Eldoth04-02 

CHAIN L#2SDSKJ Eldoth04-01 
@787 /* I guess you're right. Anyway, let's go now. I think that nothing good ever happens in these docks. */ 
DO ~SetGlobal("L2SDEldothPlot","GLOBAL",7)~ EXIT 

CHAIN L#2SDSKJ Eldoth04-02 
@788 /* I know. It's REALLY weird. Anyway, let's go now. I guess that nothing good ever happens in these docks. */ 
DO ~SetGlobal("L2SDEldothPlot","GLOBAL",7)~ EXIT 


///////////////////////// 
/////THRONE OF BHAAL///// 
///////////////////////// 

BEGIN L#2SD25J 

//1ST TIMERED 

CHAIN IF ~Global("L#2SDSkieTalksToB","GLOBAL",2)~ THEN L#2SD25J SKIE-TOB-01-00 
@789 /* So. Ireni-creep is dead. Bodhi is dead, for real, not the vampiric way, but somehow the moment you win, something else happens. No wonder you're always fit. */ 
END 
IF~~THEN REPLY @790 /* I wish it wasn't that way. I mean with neverending number of enemies, not my condition. */ EXTERN L#2SD25J SKIE-TOB-01-01 
IF~~THEN REPLY @791 /* Well, at least we're not bored, right? I think I like it in a way - that there's always something to do. */ EXTERN L#2SD25J SKIE-TOB-01-02 
IF~~THEN REPLY @792 /* Please, Skie, we have no time to talk about the dead. We should move on, understood? */ EXTERN L#2SD25J SKIE-TOB-01-03 

CHAIN L#2SD25J SKIE-TOB-01-01 
@793 /* Well, as I said your condition is fine. As for foes—at least you won't be jobless. If we can count doing your best to survive a job. */ 
EXTERN L#2SD25J SKIE-TOB-01-04 

CHAIN L#2SD25J SKIE-TOB-01-02 
@794 /* Someone lives by the rule "boredom-be-gone"! I like that. */ 
EXTERN L#2SD25J SKIE-TOB-01-04 

CHAIN L#2SD25J SKIE-TOB-01-04 
@795 /* Anyway, I've been thinking about Irenicus. When he kidnapped you, Imoen and others, he kept you in his dungeon, right? That's what I heard. That must have been the place, where you found the Soultaker, yes? */ 
END 
IF~~THEN REPLY @796 /* Yes, but I'm not sure if I understand where you're getting with these questions, Skie. */ EXTERN L#2SD25J SKIE-TOB-01-05 
IF~~THEN REPLY @797 /* I don't understand where you're going with these questions and I don't want to know. Let's better move on. */ EXTERN L#2SD25J SKIE-TOB-01-03 

CHAIN L#2SD25J SKIE-TOB-01-05 
@798 /* Daddy once told me, "it is chance that sometimes makes people do bad things". I wonder if all the evil and weird things that were left after Irenicus isn't that chance for someone else. */ 
==L#2SD25J @799 /* What if someone will find all those things and continue some of his experiments. Not with the Tree of Life, but I bet he had some other "great" ideas written in his books. */ 
END 
IF~~THEN REPLY @800 /* We may hope that Cowled Wizard will just secure whatever is there. We can't do everything. */ EXTERN L#2SD25J SKIE-TOB-01-06 
IF~~THEN REPLY @801 /* We can't stop all evil. All his belongings may be used in more than just one way. We may hope it won't be used to cause more problems. */ EXTERN L#2SD25J SKIE-TOB-01-07 
IF~~THEN REPLY @802 /* It's no longer our problem. */ EXTERN L#2SD25J SKIE-TOB-01-08 
IF~~THEN REPLY @803 /* I don't really care. We should get back to work, Skie. Our break is over. */ EXTERN L#2SD25J SKIE-TOB-01-03 

CHAIN L#2SD25J SKIE-TOB-01-06 
@804 /* I guess we can't. */ 
EXTERN L#2SD25J SKIE-TOB-01-09 

CHAIN L#2SD25J SKIE-TOB-01-07 
@805 /* Well, you're a quite an optimist. But that's good. Healthy. Taking into consideration our luck and life and all that. */ 
EXTERN L#2SD25J SKIE-TOB-01-09 

CHAIN L#2SD25J SKIE-TOB-01-08 
@806 /* Huh, so someone else should just think about that? Maybe. Let's hope someone will. */ 
EXTERN L#2SD25J SKIE-TOB-01-09 

CHAIN L#2SD25J SKIE-TOB-01-09 
@807 /* The point is, I hope no new Ireni-creeps will pop out of nowhere with even weirder plans. */ 
END 
IF~~THEN REPLY @808 /* Well, that would be more than unfortunate. Let's hope it's never going to happen. */ EXTERN L#2SD25J SKIE-TOB-01-10 
IF~~THEN REPLY @809 /* I don't think we need to worry about that, Skie. We should focus on our current problems rather than worrying about problems that are quite unlikely to appear. */ EXTERN L#2SD25J SKIE-TOB-01-10 
IF~~THEN REPLY @810 /* Even if something like that is going to happen, then we're not retiring yet. We can always stop new threats. */ EXTERN L#2SD25J SKIE-TOB-01-11 
IF~~THEN REPLY @811 /* Eh, I'm tired of talking about matters like that. Let's move on, Skie. */ EXTERN L#2SD25J SKIE-TOB-01-03 

CHAIN L#2SD25J SKIE-TOB-01-10 
@812 /* I suppose you're right. Again. I'll just think about nicer things. Like kittens. */ 
EXTERN L#2SD25J SKIE-TOB-01-12 

CHAIN L#2SD25J SKIE-TOB-01-11 
@813 /* And that would mean more work. Maybe that's not that bad, but we should also find some time to rest and enjoy things. */ 
EXTERN L#2SD25J SKIE-TOB-01-12 

CHAIN L#2SD25J SKIE-TOB-01-12 
@814 /* Speaking of nice things, I would kill for a warm bath with bubbles. Like in the elven city. Oh, I already miss that feeling! */ 
DO ~SetGlobal("L#2SDSkieTalksToB","GLOBAL",3)~ EXIT 

CHAIN L#2SD25J SKIE-TOB-01-03 
@815 /* Pff. Fine. If you want to move on that badly, then just lead. */ 
DO ~SetGlobal("L#2SDSkieTalksToB","GLOBAL",3) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

//2ND TIMERED 

CHAIN IF ~Global("L#2SDSkieTalksToB","GLOBAL",5) Global("L#2SDChocolate","GLOBAL",0)~ THEN L#2SD25J SKIE-TOB-02-00 
@816 /* You know what? I don't miss the boring life of a noble, but there's something I do miss. I know it's a bit childish to think about that now in the middle of all these fight's and mayhem, but... */ 
END 
IF~~THEN REPLY @817 /* What do you miss, Skie? Maybe I can help, somehow, get that thing? */ EXTERN L#2SD25J SKIE-TOB-02-01 
IF~~THEN REPLY @818 /* I don't really care. We have no time for this. Let us move on, will you? */ EXTERN L#2SD25J SKIE-TOB-02-02 

CHAIN L#2SD25J SKIE-TOB-02-01 
@819 /* I know it's stupid, but I miss chocolate. Ah, the original, from Maztica. It wasn't the most common of exported in Baldur's Gate, but it wasn't impossible to find. */ 
==L#2SD25J @820 /* I know, it's not right to think about chocolate when we're being hunted again and... you know, fighting for our lives. Never mind. Just—just forget I told you about that, okay? */ 
END 
IF~~THEN REPLY @821 /* But it's fine. We all have those little things we miss or which we would like to enjoy more often. */ DO ~SetGlobal("L#2SDChocolate","GLOBAL",1)~ EXTERN L#2SD25J SKIE-TOB-02-03 
IF~~THEN REPLY @822 /* I wish I could, but somehow you keep reminding me how childish you are, Skie. */ EXTERN L#2SD25J SKIE-TOB-02-02 

CHAIN L#2SD25J SKIE-TOB-02-03 
@823 /* Really? It's great! Well—not the fact that we miss things or would like to enjoy things we don't have, but it's nice to know I'm not alone. */ 
==L#2SD25J @824 /* I just don't want you to think of me as some spoiled girl anymore. I changed. I hope I changed. I did, right? */ 
END 
IF~~THEN REPLY @825 /* I don't think of you as a spoiled girl. Not anymore. */ EXTERN L#2SD25J SKIE-TOB-02-04 
IF~~THEN REPLY @826 /* There's nothing wrong about being slightly spoiled. */ EXTERN L#2SD25J SKIE-TOB-02-05 
IF~~THEN REPLY @827 /* It's not your fault that you're like that. That's how you were raised. */ EXTERN L#2SD25J SKIE-TOB-02-05 
IF~~THEN REPLY @828 /* You did. You learned much. You're more like a heroine now, not that kid who would sneak out of her estate. */ EXTERN L#2SD25J SKIE-TOB-02-04 
IF~~THEN REPLY @829 /* No. And please, stop slowing us down, will you? We really have no time for this. */ EXTERN L#2SD25J SKIE-TOB-02-02 

CHAIN L#2SD25J SKIE-TOB-02-04 
@830 /* You don't? Surely you don't. */ 
==L#2SD25J @831 /* Thanks. It means a lot, <CHARNAME>. */ 
EXTERN L#2SD25J SKIE-TOB-02-06 

CHAIN L#2SD25J SKIE-TOB-02-05 
@832 /* Maybe. But I just don't want to be seen like that. I did great things! Well, we did, but I helped. Like A LOT. */ 
EXTERN L#2SD25J SKIE-TOB-02-06 

CHAIN L#2SD25J SKIE-TOB-02-06 
@833 /* But... I suppose it doesn't matter much right now. There are more important things. */ 
==L#2SD25J IF ~Alignment(Myself,CHAOTIC_GOOD)~ THEN @834 /* It's about living and doing good stuff About helping and, no matter how boring this sounds, being a tiny bit responsible. Right? Oh well. */ 
==L#2SD25J IF ~!Alignment(Myself,CHAOTIC_GOOD)~ THEN @835 /* It's about living the moment. About having fun and travelling to new places, right? And dealing with all those annoying people that constantly want to kill us. */ 
==L#2SD25J @836 /* It would be so much easier if I had some of that Maztican cocoa wonder. But we can't have everything, I suppose. */ 
DO ~SetGlobal("L#2SDSkieTalksToB","GLOBAL",6)~ EXIT 

CHAIN L#2SD25J SKIE-TOB-02-02 
@837 /* That wasn't nice. */ 
DO ~SetGlobal("L#2SDSkieTalksToB","GLOBAL",6) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

//3RD TIMERED 

CHAIN IF ~Global("L#2SDSkieTalksToB","GLOBAL",8)~ THEN L#2SD25J SKIE-TOB-03-00 
@838 /* Many people dream of having huge families. That's a tiny bit ironic that family is actually what's causing you so much trouble. */ 
END 
IF~~THEN REPLY @839 /* Well, I suppose my family isn't an usual one. */ EXTERN L#2SD25J SKIE-TOB-03-01 
IF~~THEN REPLY @840 /* I don't think of them as my family. We only share some essence and that's all. When Irenicus stole it, he did not become my brother. */ EXTERN L#2SD25J SKIE-TOB-03-02 
IF~~THEN REPLY @841 /* That's a bit of a sensitive subject. I don't want to talk about this. */ EXTERN L#2SD25J SKIE-TOB-03-03 

CHAIN L#2SD25J SKIE-TOB-03-01 
@842 /* Well, it's DEFINITELY unusual. */ 
EXTERN L#2SD25J SKIE-TOB-03-04 

CHAIN L#2SD25J SKIE-TOB-03-02 
@843 /* Well, a fair point. */ 
EXTERN L#2SD25J SKIE-TOB-03-04 

CHAIN L#2SD25J SKIE-TOB-03-04 
@844 /* But I thought I would ask how you feel about this. That others a bit like you are doing some nasty stuff and it's not making your life ANY easier. */ 
END 
IF~~THEN REPLY @845 /* It's hard to feel fine about this. */ EXTERN L#2SD25J SKIE-TOB-03-05 
IF~~THEN REPLY @846 /* It doesn't bother me much. If it wasn't them, other enemies would come. */ EXTERN L#2SD25J SKIE-TOB-03-06 
IF~~THEN REPLY @847 /* You're not making it any easier, Skie. */ EXTERN L#2SD25J SKIE-TOB-03-03 

CHAIN L#2SD25J SKIE-TOB-03-05 
@848 /* Sorry. I think I'm not making you feel better about this, right? I shouldn't have asked. Please, don't go all gloomy because of me, okay? */ 
EXTERN L#2SD25J SKIE-TOB-03-07 

CHAIN L#2SD25J SKIE-TOB-03-06 
@849 /* I suppose. But, hey, maybe they would be easier to deal with? Anyway, I'm just guessing. */ 
EXTERN L#2SD25J SKIE-TOB-03-07 

CHAIN L#2SD25J SKIE-TOB-03-07 
@850 /* But not everyone must be evil, right? */ 
==L#2SD25J IF ~Dead("IMOEN2")~ THEN @851 /* There was Imoen, right? But somehow I'm not sure if mentioning her is a good idea after she died... */ 
==L#2SD25J IF ~!Dead("IMOEN2")~ THEN @852 /* There is Imoen, right? She's nice and helpful. And she doesn't want to kill you. */ 
==L#2SD25J @853 /* And maybe I'm not your sis, but at least you can't say there are no people around who would rather talk than fight! */ 
END 
IF~~THEN REPLY @854 /* Thanks. You know what? You're being so nice that we may actually go shopping soon. Maybe we should look for some nice fitting and good-looking leather armor for you. */ EXTERN L#2SD25J SKIE-TOB-03-08 
IF~~THEN REPLY @855 /* Heh. I really appreciate people who work with me. Actually they feel more like family than my "blood relatives". Or rather "essence relatives", if we want to be more accurate. */ EXTERN L#2SD25J SKIE-TOB-03-09 
IF~~THEN REPLY @856 /* But what if I don't want to talk? Is it that hard to notice that I'm not always in the "talking mood"? Because you seem to constantly bother me with stupid questions or observations. */ EXTERN L#2SD25J SKIE-TOB-03-03 

CHAIN L#2SD25J SKIE-TOB-03-08 
@857 /* Really? Oh, that would be great! But only if we also look for something nice for you? Oh, maybe some enchanted socks that will protect your feet from the cold? That would be something, right? Of course it would. */ 
DO ~SetGlobal("L#2SDSkieTalksToB","GLOBAL",9)~ EXIT 

CHAIN L#2SD25J SKIE-TOB-03-09 
@858 /* Oh, that was a kinda sweet thing to say! I think we owe you a gift. Like... a pair of nice socks! Maybe enchanted ones that would protect you from the cold? Wouldn't that be a nice gift? Of course it would. */ 
DO ~SetGlobal("L#2SDSkieTalksToB","GLOBAL",9)~ EXIT 

CHAIN L#2SD25J SKIE-TOB-03-03 
@859 /* Okay, I should have thought that you weren't in the mood. */ 
DO ~SetGlobal("L#2SDSkieTalksToB","GLOBAL",9) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

//4TH TALK (FRIENDSHIP ONLY) 

CHAIN IF ~Global("L#2SDSkieTalksToB","GLOBAL",12)~ THEN L#2SD25J SKIE-TOB-04-00 
@860 /* Hey, bestie! Have a moment? */ 
END 
IF~~THEN REPLY @861 /* Sure, Skie. What is it? */ EXTERN L#2SD25J SKIE-TOB-04-01 
IF~~THEN REPLY @862 /* No. And I'm not your "bestie". */ EXTERN L#2SD25J SKIE-TOB-04-02 

CHAIN L#2SD25J SKIE-TOB-04-01 
@863 /* You remember that "I'll buy you magic socks" thing I said? It started as a joke, but then I saw these in a shop and I just HAD TO buy them for you. It's shoes. Not only they can make you quicker, but they actually... */ 
==L#2SD25J @864 /* PROTECT FROM COLD! Isn't that a great coincidence. Oh, have them! And wear them with pride! */ 
END 
IF~~THEN REPLY @865 /* Hey, that's so nice of you, Skie! Thanks! */ EXTERN L#2SD25J SKIE-TOB-04-03 
IF~~THEN REPLY @866 /* You shouldn't have... I like my boots and now I'm not sure what to do. */ EXTERN L#2SD25J SKIE-TOB-04-04 
IF~~THEN REPLY @867 /* I don't need some old shoes. Just take them, Skie. And by the way - stop calling me your "bestie". */ EXTERN L#2SD25J SKIE-TOB-04-02 

CHAIN L#2SD25J SKIE-TOB-04-03 
@868 /* You're welcome. */ 
EXTERN L#2SD25J SKIE-TOB-04-05 

CHAIN L#2SD25J SKIE-TOB-04-04 
@869 /* Hey, it's fine. If you don't want to use them, just... keep them as a spare pair. Or let someone else use them. */ 
EXTERN L#2SD25J SKIE-TOB-04-05 

CHAIN L#2SD25J SKIE-TOB-04-05 
@870 /* They look fabulous and it would be so stupid to leave them in that shop. And I thought it would be a nice gift for you. Now you can do whatever you want with them. */ 
==L#2SD25J @871 /* You deserve what's best, you know. */ 
DO ~SetGlobal("L#2SDSkieTalksToB","GLOBAL",13) GiveItemCreate("L#2SDBTS",Player1,1,1,0)~ EXIT 

CHAIN L#2SD25J SKIE-TOB-04-02 
@872 /* That was SO rude... */ 
DO ~SetGlobal("L#2SDSkieTalksToB","GLOBAL",13) SetGlobal("L#2SDSkieFriendshipActive","GLOBAL",3)~ EXIT 

//SARADUSH DESTROYED 

CHAIN IF ~Global("L#2SDSkieSaradush","GLOBAL",1)~ THEN L#2SD25J SKIE-SARADUSH-00 
@873 /* I—I can't believe all those people are dead. That Saradush is destroyed. */ 
END 
IF~~THEN REPLY @874 /* We did all we could. */ EXTERN L#2SD25J SKIE-SARADUSH-01 
IF~~THEN REPLY @875 /* Just... let us move on. I don't want to talk about this. */ EXTERN L#2SD25J SKIE-SARADUSH-02 

CHAIN L#2SD25J SKIE-SARADUSH-01 
@876 /* I know, but... it still feels so weird. Now I understand why Daddy is so afraid when something bad is happening and he has to fix it somehow. */ 
END 
IF~~THEN REPLY @877 /* It's normal that we feel bad when something like that happens. */ EXTERN L#2SD25J SKIE-SARADUSH-03 
IF~~THEN REPLY @878 /* We are all afraid of tragedies like that. */ EXTERN L#2SD25J SKIE-SARADUSH-03 
IF~~THEN REPLY @879 /* We didn't know them, so stop acting as if it wasn't Saradush, but Baldur's Gate. */ EXTERN L#2SD25J SKIE-SARADUSH-04 
IF~~THEN REPLY @880 /* Skie, I really don't want to talk about this. */ EXTERN L#2SD25J SKIE-SARADUSH-02 

CHAIN L#2SD25J SKIE-SARADUSH-03 
@881 /* Yeah, but... */ 
==L#2SD25J @882 /* I wish we could have done more. */ 
==L#2SD25J @883 /* I think it's a good idea to stop talking for now. I need some time. */ 
DO ~SetGlobal("L#2SDSkieSaradush","GLOBAL",2)~ EXIT 

CHAIN L#2SD25J SKIE-SARADUSH-04 
@884 /* Do you even have a heart? */ 
==L#2SD25J @885 /* I think I don't want to talk to you right now, you know. */ 
DO ~SetGlobal("L#2SDSkieSaradush","GLOBAL",2) IncrementGlobal("L#2SDSkieMean","GLOBAL",2)~ EXIT 

CHAIN L#2SD25J SKIE-SARADUSH-02 
@886 /* Fine. I... I guess I can understand that. */ 
DO ~SetGlobal("L#2SDSkieSaradush","GLOBAL",2) IncrementGlobal("L#2SDSkieMean","GLOBAL",1)~ EXIT 

////////////////////////////////// 
////////SKIE AND CHOCOLATE//////// 
////////////////////////////////// 

EXTEND_TOP ~AMBAR01~ 1 
IF~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID) Global("L#2SDChocolate","GLOBAL",1) See("L#2SDSkie")~THEN REPLY @887 /* My friend over there would like some Maztican chocolate. Do you have any? */ EXTERN AMBAR01 L#2SDChco-01 
END 

EXTEND_TOP ~AMBAR01~ 2 
IF~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID) Global("L#2SDChocolate","GLOBAL",1) See("L#2SDSkie")~THEN REPLY @887 /* My friend over there would like some Maztican chocolate. Do you have any? */ EXTERN AMBAR01 L#2SDChco-01 
END 

EXTEND_TOP ~AMBAR01~ 3 
IF~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID) Global("L#2SDChocolate","GLOBAL",1) See("L#2SDSkie")~THEN REPLY @887 /* My friend over there would like some Maztican chocolate. Do you have any? */ EXTERN AMBAR01 L#2SDChco-01 
END 

EXTEND_TOP ~AMBAR01~ 20 
IF~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID) Global("L#2SDChocolate","GLOBAL",1) See("L#2SDSkie")~THEN REPLY @887 /* My friend over there would like some Maztican chocolate. Do you have any? */ EXTERN AMBAR01 L#2SDChco-01 
END 

EXTEND_TOP ~AMBAR01~ 40 
IF~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID) Global("L#2SDChocolate","GLOBAL",1) See("L#2SDSkie")~THEN REPLY @887 /* My friend over there would like some Maztican chocolate. Do you have any? */ EXTERN AMBAR01 L#2SDChco-01 
END 

CHAIN AMBAR01 L#2SDChco-01 
@888 /* Maztican chocolate? Ah, that's a rare product! But I have one last praline. It's quite expensive... 20 gold pieces. I'm sorry, but it's really hard to get these. */ 
END 
IF~PartyGoldGT(19)~THEN REPLY @889 /* I'll take it. Serve it to that girl, please. */ DO ~TakePartyGold(20) SetGlobal("L#2SDChocolate","GLOBAL",2)~ EXTERN AMBAR01 L#2SDChco-02 
IF~~THEN REPLY @890 /* I changed my mind. Goodbye. */ EXTERN AMBAR01 L#2SDChco-0E 

CHAIN AMBAR01 L#2SDChco-02 
@891 /* Of course. */ 
==AMBAR01 @892 /* My lady? That one over here bought you this Maztican praline. Enjoy! */ 
==L#2SD25J @893 /* <CHARNAME>? Is—is that true? That's SO nice of you! Gods, I really really, really love this present! */ 
==L#2SD25J @894 /* Here. Take half of it. Go on! You HAVE TO try it. I'm not going to eat my half without you. */ 
END 
IF~~THEN REPLY @895 /* Fine. Let's give it a try. On three. One. Two. Three! */ EXTERN L#2SD25J L#2SDChco-03 
IF~~THEN REPLY @896 /* No. Thank you, but I don't want it. I don't like chocolate. */ EXTERN L#2SD25J L#2SDChco-04 
IF~~THEN REPLY @897 /* No. I want you to have it whole for yourself. */ EXTERN L#2SD25J L#2SDChco-05 

CHAIN L#2SD25J L#2SDChco-05 
@898 /* Hey! I insist! */ 
END 
IF~~THEN REPLY @895 /* Fine. Let's give it a try. On three. One. Two. Three! */ EXTERN L#2SD25J L#2SDChco-03 
IF~~THEN REPLY @896 /* No. Thank you, but I don't want it. I don't like chocolate. */ EXTERN L#2SD25J L#2SDChco-04 

CHAIN L#2SD25J L#2SDChco-04 
@899 /* You really don't know what you're letting go... */ 
EXTERN L#2SD25J L#2SDChco-03 

CHAIN L#2SD25J L#2SDChco-03 
@900 /* Mmm. It's amazing! */ 
==L#2SD25J @901 /* Thanks, <CHARNAME>. Moments like that make life much better. */ 
EXIT 

CHAIN AMBAR01 L#2SDChco-0E 
@902 /* You know where to find me if you change your mind. Have a good one! */ 
EXIT 


//////////////////////////////////////////// 
////////////////Tree of Life//////////////// 
//////////////////////////////////////////// 

INTERJECT PLAYER1 33 L#2SDSkieTreeOfLife 
== PLAYER1 IF ~IsValidForPartyDialog("L#2SDSkie")~ THEN 
@903 /* Skie Silvershield, the thief you met long time ago, in Baldur's Gate, stands and looks at you. She travelled with you for a very long time and you saw her change from a whining child to a mature adventurer. */ 
END 
IF~~THEN REPLY @904 /* Skie, you died because of Irenicus before. I don't want this to happen again. */ EXTERN L#2SDSKJ L#2SDSkieTree1 
IF~~THEN REPLY @905 /* Are you sure you want to go with me? It may be really dangerous. */ EXTERN L#2SDSKJ L#2SDSkieTree2 
IF~~THEN REPLY @906 /* I need you, Skie. I'm not sure if I can do it without you. */ EXTERN L#2SDSKJ L#2SDSkieTree3 

APPEND L#2SDSKJ 
IF ~~ THEN BEGIN L#2SDSkieTree1 
SAY @907 /* Hey! Don't you believe in me? I'm fine. And I'm going with you. Really. I know it's scary, but—leaving you here would be way too weird. */ 
COPY_TRANS PLAYER1 33 
END 

IF ~~ THEN BEGIN L#2SDSkieTree2 
SAY @908 /* I know, but—I came here with you, okay? I'm not going back. Not on my own, so if you're going down there, I'm going with you. It's a bit scary, but I can do it. Really. */ 
COPY_TRANS PLAYER1 33 
END 

IF ~~ THEN BEGIN L#2SDSkieTree3 
SAY @909 /* Really? I mean, sure, I'm not going to leave you know. And I know it may be difficult, but we'll get through this. Otherwise, everything we did until now was pointless. So yeah—I'm right behind you. */ 
COPY_TRANS PLAYER1 33 
END 
END 

//////////////////////////////////////////// 
//////////////////SALVANAS////////////////// 
//////////////////////////////////////////// 

CHAIN 
IF WEIGHT #-1 
~!InPartySlot(LastTalkedToBy,0) 
IsGabber("L#2SDSkie") 
Global("L#2SDSkiSALVANAS","LOCALS",0)~ THEN SALVANAS L#2SDSkiSalvanas 
@910 /* Ah, what a classy lady! I must say, my beautiful friend, that this place became much nicer when you came in. It must be your inner radiance that made this place better. */ 
DO ~SetGlobal("L#2SDSkiSALVANAS","LOCALS",1)~ 
== L#2SDSkJ @911 /* Hey, that was such a nice thing to say! Wait—you don't know me and you have no idea who I am, right? */ 
== SALVANAS @912 /* The only thing I know is that this radiance of yours does not let me look at anything else. */ 
== L#2SDSkJ @913 /* <CHARNAME>, you heard that? I am GLOWING. */ 
== SALVANAS @914 /* Of course you are, my lady. Perhaps you'd like to sit here with me? I'd love to spend more time with you. */ 
== L#2SDSkJ @915 /* So maybe you should start with telling me your name? */ 
== SALVANAS @916 /* I'm Salvanas, my lady. Some may know me thanks to my collection: "Darks Shades of Rashemen". */ 
== L#2SDSkJ @917 /* Wait—collection "Dark Shades of Rashemen" was designed by Amber Casstel. Nightal 1366 DR, if I'm correct. */ 
== SALVANAS @918 /* Ah... yes. That... that was me! Amber Casstel is my... alias. */ 
== L#2SDSkJ @919 /* She was a woman. And she died few months ago. She was murdered. Are you a dead woman? */ 
== SALVANAS @67 /* Well... */ 
== SALVANAS @920 /* ...I think I hear someone calling me. Through magic. Gotta take this! Bye! */ 
== L#2SDSkJ @921 /* Pff! If you want to lie, at least know the subject you're lying about, Salvanas. */ 
EXIT 

//////////////////////////////////////////// 
//////////////////GARRICK/////////////////// 
//////////////////////////////////////////// 

CHAIN 
IF WEIGHT #-1 
~InParty("L#2SDSkie") 
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID) 
Global("L#2SDSkiGarrick","LOCALS",0)~ THEN GARRICK L#2SDSkiGarrick 
@922 /* Hmm, have we met before, m'lady? You look familiar. */ 
DO ~SetGlobal("L#2SDSkiGarrick","LOCALS",1)~ 
== L#2SDSkJ @923 /* Garrick?! Is that you? Oh, you changed so much—have you been working out? */ 
== GARRICK @924 /* Excuse me... Are you that—no, it's impossible. Perhaps you are some... ghosts of the past I barely remember. A beautiful past, yet... a past. */ 
== L#2SDSkJ @925 /* Hey—what? */ 
== GARRICK @926 /* I'm sorry, but I'm a bit busy now... My Lady Irlana -- she needs my attention. */ 
== L#2SDSkJ @927 /* I think something, or someone, hit his head, <CHARNAME>. Or he doesn't want to remember us... A pity... */ 
EXIT 

//////////////////////////////////////////// 
///////////////////VOLO///////////////////// 
//////////////////////////////////////////// 

EXTEND_BOTTOM SARVOLO 9 #4 
+ ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ + @928 /* Do you have anything to say about Skie? */ + L#2SDSkieBio 
END 

CHAIN SARVOLO L#2SDSkieBio 
@929 /* Ah, Skie Silvershield! Of course I have something to say about her! */ 
== SARVOLO 
@930 /* Where is it—ah! Here! Skie Silvershield, once just a noble girl, now a noble and brave companion of <CHARNAME>, the Hero of Baldur's Gate. A woman with a style and a strong heart that do not only beat for fashion but also for adventure. */ 
== L#2SD25J 
@931 /* Hey, that was really nice! Thank you, mister Volo! */ 
EXTERN SARVOLO 9 

//////////////////////////////////////////// 
///////////////INTERJECTIONS//////////////// 
//////////////////////////////////////////// 

//SoA 

INTERJECT_COPY_TRANS CEFALDOR 6 L#2SDSkieFaldorn 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@932 /* Wait—is that Faldorn? THAT Faldorn? The crazy druid with nails that SCREAMED for some care and attention. Well, good luck talking, <CHARNAME>. She looks as if she lost her mind entirely. */ 
END 

INTERJECT_COPY_TRANS AERIEJ 3 L#2SDSkieAerieQ1 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@933 /* It's weird to know that we won't hear that wrinkled gnome again... */ 
END 

INTERJECT_COPY_TRANS AERIEJ 15 L#2SDSkieAerieQ2 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@934 /* I would never expect to say it, but it's good to see him alive. */ 
END 

INTERJECT_COPY_TRANS PPTIAX 0 L#2SDSkieTiax 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@935 /* Well, I guess he lost his mind completely. I'm not surprised. Not surprised at all. */ 
END 

INTERJECT_COPY_TRANS PPTIAX2 3 L#2SDSkieTiax2 
== L#2SDSKJ IF ~InParty("L#2SDSkie") Alignment("L#2SDSkie",NEUTRAL) !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@936 /* Well... if we're lucky enough, he will fall along with Irenicus. */ 
END 

INTERJECT_COPY_TRANS PPTIAX2 3 L#2SDSkieTiax3 
== L#2SDSKJ IF ~InParty("L#2SDSkie") Alignment("L#2SDSkie",CHAOTIC_GOOD) !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@937 /* Huh, perhaps he will actually help us after all. He did help us once... in a way... */ 
END 

INTERJECT_COPY_TRANS PPDRADEE 1 L#2SDSkieDradeel1 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@938 /* Isn't that the mage from Werewolf Island we unluckily visited? Hey, that would explain the "dog talk", right? */ 
END 

INTERJECT_COPY_TRANS PPDRADEE 4 L#2SDSkieDradeel2 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@939 /* I'm not sure if I should be worried or entertained, you know. */ 
END 

INTERJECT_COPY_TRANS PPDRADEE 13 L#2SDSkieDradeel3 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@940 /* I'm starting to feel a bit sorry for him... */ 
END 

INTERJECT_COPY_TRANS PPIMOEN 0 L#2SDSkieImoen 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@941 /* Is—is that Imoen? Gods, what happened to her? */ 
END 

INTERJECT_COPY_TRANS TAZOK 0 L#2SDSkieTazok 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@942 /* Oh, no... HIM again? Lucky us. I guess everyone you have ever met is coming back to life, <CHARNAME>. Is that your Bhaalspawn power, or something? */ 
END 

INTERJECT_COPY_TRANS VICONI 0 L#2SDSkieViconia 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@943 /* Hey, that's really her! We can't leave her like that. She helped you and helped fight the Crusade! */ 
END 

INTERJECT_COPY_TRANS VICONI 2 L#2SDSkieViconia2 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@944 /* Maybe that's not a bad idea, <CHARNAME>. */ 
END 

INTERJECT_COPY_TRANS LYROS 2 L#2SDSkieLyros 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@945 /* Oh, it's that weird necromancer. We met him before, right? */ 
END 

INTERJECT_COPY_TRANS MAZZY 0 L#2SDSkieMazzy 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@946 /* Those shadows are locking halflings in their cells? How much more creepy it can get? */ 
END 

INTERJECT_COPY_TRANS KALAH 0 L#2SDSkieKalay 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@947 /* Okay, you're calling her a beast? Shouldn't it be the other way round? */ 
END 

INTERJECT_COPY_TRANS IMOEN2 6 L#2SDSkieImoen 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@948 /* Oh no—don't tell me he did this again... */ 
== IMOEN2 @949 /* Skie... is that you? So <PRO_HESHE> must have found a way to save you... */ 
== IMOEN2 @950 /* And yes. I'm afraid that... you're right. He may have done it. Again. Just differently. Without... without the Soultaker. */ 
END 

INTERJECT_COPY_TRANS HEXXAT 0 L#2SDSkieHexxat 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@951 /* Did she just—it's all getting weirder and weirder, <CHARNAME>. */ 
END 

INTERJECT_COPY_TRANS GAAL 2 L#2SDSkieGaal 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@952 /* <CHARNAME>, I—I like my eyes and I'm NOT getting rid of them. Do you understand? I am NOT doing this. */ 
END 

INTERJECT_COPY_TRANS ARAN 1 L#2SDSkieAran 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@953 /* Right. It would be too easy if we got what we paid for, right? This reminds me of some—fake discount, or something. */ 
END 

INTERJECT_COPY_TRANS ANOMEN 12 L#2SDSkieAnom1 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@954 /* Gods, who even starts conversations like that? */ 
END 

INTERJECT_COPY_TRANS PPIRENI1 30 L#2SDSkiePPIreni1 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@955 /* Don't tell me that this is... */ 
==PPIRENI1 @956 /* I can see you brought that incompetent girl with you. Shouldn't you be dead, foolish girl? */ 
==PPIRENI1 @957 /* No matter. I'm waiting for your leader to give me <PRO_HISHER> answer. So? Do you remember me now? */ 
END 

INTERJECT_COPY_TRANS PPIRENI2 33 L#2SDSkiePPIreni2 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@958 /* You soul-sucking... creep! How can he be proud of this, <CHARNAME>? You changed into that thing because of him and that—thing he did. */ 
==PPIRENI2 @959 /* You do not even understand matters you're speaking of, foolish girl, do you? */ 
END 

INTERJECT_COPY_TRANS HELLJON 7 L#2SDSkieIrenicushell 
==L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @960 /* This is just so stupid—Irenicus. We won't let you win. Not again. We're done being puppets in your soul-sucking play. We're fed up with it. Everyone is. */ 
==HELLJON IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @961 /* Ever pathetic girl. You were never a true element of this "play", as you call it. Just a replaceable tool. If you want to die, I will make that happen. And this time, for good. */ 
END 

INTERJECT_COPY_TRANS HELLJON 8 L#2SDSkieIrenicushell2 
==L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @962 /* This is just so stupid—Irenicus, we won't let you win. Not again. We're done being puppets in your soul-sucking play. We're fed up with it. Everyone is. */ 
==HELLJON IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @963 /* Ever pathetic girl. You were never a true element of this - how you call it - play. Just a replaceable tool. If you want to die, I can make that happen. And this time, for good. */ 
END 

INTERJECT_COPY_TRANS HELLJON 9 L#2SDSkieIrenicushell3 
==L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @962 /* This is just so stupid—Irenicus, we won't let you win. Not again. We're done being puppets in your soul-sucking play. We're fed up with it. Everyone is. */ 
==HELLJON IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @963 /* Ever pathetic girl. You were never a true element of this - how you call it - play. Just a replaceable tool. If you want to die, I can make that happen. And this time, for good. */ 
END 

INTERJECT_COPY_TRANS HELLJON 10 L#2SDSkieIrenicushell4 
==L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @962 /* This is just so stupid—Irenicus, we won't let you win. Not again. We're done being puppets in your soul-sucking play. We're fed up with it. Everyone is. */ 
==HELLJON IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @963 /* Ever pathetic girl. You were never a true element of this - how you call it - play. Just a replaceable tool. If you want to die, I can make that happen. And this time, for good. */ 
END 

INTERJECT_COPY_TRANS UDSILVER 9 L#2SDSkieSilver1 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@964 /* Well, you surely know how to shine at meetings. I mean—You are the most splendid creature I've ever seen. And quite... radiant. */ 
END 

INTERJECT_COPY_TRANS SUELHAN 2 L#2SDSkieSulEl 
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@965 /* But we'll fix it! Somehow. Right? Of course we will. <CHARNAME>? */ 
END 

I_C_T PLAYER1 25 L#2SkieFinSoA
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@973
END

I_C_T PLAYER1 5 L#HPHSlayerChange
== L#2SDSKJ IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@974
END

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
    Name("L#2SDSkie",LastTalkedToBy)~ THEN GOTO L#2SDSKGY
END

CHAIN TRGYP02 L#2SDSKGY
@975
== L#2SDSKJ @976
== TRGYP02 @977
EXIT

//ToB 

INTERJECT_COPY_TRANS ABAZIGAL 1 L#2SDSkieAbazigal25 
== L#2SD25J IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@966 /* The more dragons we meet, the more I think they are ultimate mood-killers, <CHARNAME>. */ 
END 

INTERJECT_COPY_TRANS SARWAI01 0 L#2SDSkieWaitress25 
== L#2SD25J IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@967 /* <CHARNAME>, those guys are being REALLY disgusting. */ 
END 

INTERJECT_COPY_TRANS SARBUL06 2 L#2SDSkieBully25-1 
== L#2SD25J IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@968 /* You're so stupid I'm surprised you have ANY job at all. */ 
END 

INTERJECT SARBUL06 1 L#2SDSkieBully25-2 
== L#2SD25J IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@969 /* I won't stand it, <CHARNAME>. Look at this woman? You're really gonna leave it like that? */ 
== L#2SD25J @970 /* Hey! Idiots! Why don't you talk to someone smarter than you? Someone who can teach you PROPER manners! */ 
COPY_TRANS SARBUL06 3 

INTERJECT SARBUL06 5 L#2SDSkieBully25-3 
== L#2SD25J IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@969 /* I won't stand it, <CHARNAME>. Look at this woman? You're really gonna leave it like that? */ 
== L#2SD25J @970 /* Hey! Idiots! Why don't you talk to someone smarter than you? Someone who can teach you PROPER manners! */ 
COPY_TRANS SARBUL06 3 

INTERJECT_COPY_TRANS SENBEH01 12 L#2SDSkieBeho25 
== L#2SD25J IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@971 /* I never thought I would say such a thing, but I LOVE this beholder. He has greater charisma than most men we've met! */ 
END 

INTERJECT_COPY_TRANS FINSOL01 27 L#2SDSkieSolar25 
== L#2SD25J IF ~InParty("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN 
@972 /* It's such a weird decision to make. But you know what to do, right? You always do. */ 
END
