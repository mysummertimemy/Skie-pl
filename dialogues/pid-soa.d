///////////////////////////////////////////////////
/////////////////////// PID ///////////////////////
///////////////////////////////////////////////////

CHAIN IF WEIGHT #200 ~IsGabber(Player1) GlobalLT("CHAPTER","GLOBAL",20) CombatCounter(0)~ THEN L#2SDSKJ PID.00.00.00
@0 /* Oh, hey! You need something? */
END
IF~RandomNum(3,1)~THEN REPLY @1 /* I thought I'd ask you how are you feeling. */ EXTERN L#2SDSKJ PID.01.01.00
IF~RandomNum(3,2)~THEN REPLY @2 /* I thought I'd ask you if everything is fine. */ EXTERN L#2SDSKJ PID.01.02.00
IF~RandomNum(3,3)~THEN REPLY @3 /* I thought I'd ask you if you need anything. */ EXTERN L#2SDSKJ PID.01.03.00
IF~Global("L#2SDSkieComparison","LOCALS",0) RealGlobalTimerExpired("L#2SDSkieComparisonTime","GLOBAL")~THEN REPLY @4 /* You sometimes say things were different with Eldoth. Like work with him around was different. Sometimes I feel as you were comparing me and him. */ DO ~SetGlobal("L#2SDSkieComparison","LOCALS",1)~ EXTERN L#2SDSKJ PID.COMPS.00.00
IF~RandomNum(4,1)~THEN REPLY @5 /* I was wondering if you're still thinking about the times when we firs met. */ EXTERN L#2SDSKJ PID.02.01.00
IF~RandomNum(4,2)~THEN REPLY @6 /* I was wondering if you miss the Silvershield estate. You must have had everything you wanted out there. */ EXTERN L#2SDSKJ PID.02.02.00
IF~RandomNum(4,3)~THEN REPLY @7 /* I was wondering if you miss the times when you joined the Flaming Fist. */ EXTERN L#2SDSKJ PID.02.03.00
IF~RandomNum(4,4)~THEN REPLY @8 /* Am I correct that people called you Goldbuckler when you were Fist's recrutee? */ EXTERN L#2SDSKJ PID.02.04.00
IF~RandomNum(3,1)~THEN REPLY @9 /* I can imagine it must be hard to sleep after what you went through... */ EXTERN L#2SDSKJ PID.03.01.00
IF~RandomNum(3,2)~THEN REPLY @10 /* Do you have any flashback from the time when Irenicus played us out in the Dragonspear Castle? */ EXTERN L#2SDSKJ PID.03.02.00
IF~RandomNum(3,3)~THEN REPLY @11 /* Could you feel my presence when I entered the realm of the dagger and fought to free you? */ EXTERN L#2SDSKJ PID.03.03.00
IF~RandomNum(3,1)~THEN REPLY @12 /* What's your favorite color? */ EXTERN L#2SDSKJ PID.04.01.00
IF~RandomNum(3,2)~THEN REPLY @13 /* Do you have any dish you miss the most? Considering we don't have access to anything extravagant... */ EXTERN L#2SDSKJ PID.04.02.00
IF~RandomNum(3,3)~THEN REPLY @14 /* There is an important question I want to ask people lately: are you more of a cat or dog person? */ EXTERN L#2SDSKJ PID.04.03.00
IF~~THEN REPLY @15 /* I'd like to talk about your family, if you don't mind. */ EXTERN L#2SDSKJ PID.05.01.0C
IF~RandomNum(2,1)~THEN REPLY @16 /* I really like your hair, Skie. */ EXTERN L#2SDSKJ PID.06.01.00
IF~RandomNum(2,2)~THEN REPLY @17 /* I must say you have a very good taste when it comes to perfumes. */ EXTERN L#2SDSKJ PID.06.02.00
IF~RandomNum(2,1)~THEN REPLY @18 /* Have you thought of leading a different life? Become a dancer or... an artistic seamstress, or someone? */ EXTERN L#2SDSKJ PID.07.01.00
IF~RandomNum(2,2)~THEN REPLY @19 /* I remember that when you were a Flaming Fist member you had problems with... following orders... */ EXTERN L#2SDSKJ PID.07.02.00
IF~Global("L#2SDCommentAfter","GLOBAL",1) !Global("L#2SDSkieWarns","GLOBAL",1)~THEN REPLY @20 /* How are you feeling about chosing to stay with me, as a member of this group? */ EXTERN L#2SDSKJ PID.A1.01.00
IF~Global("L#2SDCommentAfter","GLOBAL",1) Global("L#2SDSkieWarns","GLOBAL",1)~THEN REPLY @21 /* So, how are you feeling about chosing to stay with me, as a member of this group...? */ EXTERN L#2SDSKJ PID.A2.01.00
IF~GlobalGT("L2SDEldothPlot","GLOBAL",6) Dead("L#2SDELD") Global("L#SDSkiesNewSeries","GLOBAL",0)~THEN REPLY @22 /* Are you still thinking about the fight we had with Eldoth? */ DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",1) RealSetGlobalTimer("L#SDSkiesNewSeriesTime","GLOBAL",3800)~ EXTERN L#2SDSKJ PID.EL.01.00
IF~Global("L#SDSkiesNewSeries","GLOBAL",1) RealGlobalTimerExpired("L#SDSkiesNewSeriesTime","GLOBAL")~THEN REPLY @23 /* You were quire irritated when I asked you about the Kron guy last time. Are you feeling any better now? */ DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",2) RealSetGlobalTimer("L#SDSkiesNewSeriesTime","GLOBAL",3800)~ EXTERN L#2SDSKJ PID.EL.02.00
IF~Global("L#SDSkiesNewSeries","GLOBAL",2) RealGlobalTimerExpired("L#SDSkiesNewSeriesTime","GLOBAL")~THEN REPLY @24 /* I've been thinking... after I asked you if you're feeling better, after we talked again about how Eldoth made you feel, it felt as if you were demanding everything to get better soon... */ DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",3) RealSetGlobalTimer("L#SDSkiesNewSeriesTime","GLOBAL",3800)~ EXTERN L#2SDSKJ PID.EL.03.00
IF~Global("L#SDSkiesNewSeries","GLOBAL",3) RealGlobalTimerExpired("L#SDSkiesNewSeriesTime","GLOBAL")~THEN REPLY @25 /* I've been thinking how you told me that your parents demanded much from you and you felt you were living in Eddard's shadow for a long time. I must say I know how it might have felt. */ DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",4) RealSetGlobalTimer("L#SDSkiesNewSeriesTime","GLOBAL",3800)~ EXTERN L#2SDSKJ PID.EL.04.00
IF~Global("L#SDSkiesNewSeries","GLOBAL",4) RealGlobalTimerExpired("L#SDSkiesNewSeriesTime","GLOBAL")~THEN REPLY @26 /* Some time ago we talked about how people demanded much from you and ame, how you felt, and we made this promise that we're going to tell eachother when things worry us, but I want you to know something else: I think the fact you became so strong is only thanks to you and your doings, Skie. It's your achivement. */ DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",5) RealSetGlobalTimer("L#SDSkiesNewSeriesTime","GLOBAL",3800)~ EXTERN L#2SDSKJ PID.EL.05.00
IF~Global("L#2SDSkiePostSlayer","GLOBAL",3) Global("DefeatedJon","GLOBAL",0) Global("FORCETOBPARTYMOVE4000","GLOBAL",0) !AreaCheck("AR4000")~ THEN REPLY @27 /* Are you still thinking about my change caused by what Irenicus did to me? */ EXTERN L#2SDSKJ PID.S1.01.00
IF~OR(5) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2402")~THEN REPLY @28 /* These parts of the Underdark is far from dangerous. */ EXTERN L#2SDSKJ PID.U1.01.00
IF~OR(11) AreaCheck("AR2200") AreaCheck("AR2201") AreaCheck("AR2202") AreaCheck("AR2203") AreaCheck("AR2204") AreaCheck("AR2205") AreaCheck("AR2205") AreaCheck("AR2207") AreaCheck("AR2208") AreaCheck("AR2209") AreaCheck("AR2210")~THEN REPLY @29 /* How do you like Ust Natha? */ EXTERN L#2SDSKJ PID.U2.01.00
IF~Kit(Player1,BLADE) Global("L#SDSkieBladeSkills","GLOBAL",0)~THEN REPLY @30 /* Skie, you are swift and... weren't you taught dance? You have all the skills to learn the stances I had to learn as a blade. Perhaps I could teach you so you could actually use it as I do it? */ EXTERN L#2SDSKJ PID.BL.01.00
IF~Kit(Player2,BLADE) Global("L#SDSkieBladeSkills","GLOBAL",0)~THEN REPLY @31 /* Skie, you are swift and... weren't you taught dance? You have all the skills to learn the stances <PLAYER2> uses as a blade. Perhaps it would be possible for you to learn it if the two of you talked and trained for a while? */ EXTERN L#2SDSKJ PID.BL.02.00
IF~Kit(Player3,BLADE) Global("L#SDSkieBladeSkills","GLOBAL",0)~THEN REPLY @32 /* Skie, you are swift and... weren't you taught dance? You have all the skills to learn the stances <PLAYER3> uses as a blade. Perhaps it would be possible for you to learn it if the two of you talked and trained for a while? */ EXTERN L#2SDSKJ PID.BL.03.00
IF~Kit(Player4,BLADE) Global("L#SDSkieBladeSkills","GLOBAL",0)~THEN REPLY @33 /* Skie, you are swift and... weren't you taught dance? You have all the skills to learn the stances <PLAYER4> uses as a blade. Perhaps it would be possible for you to learn it if the two of you talked and trained for a while? */ EXTERN L#2SDSKJ PID.BL.04.00
IF~Kit(Player5,BLADE) Global("L#SDSkieBladeSkills","GLOBAL",0)~THEN REPLY @34 /* Skie, you are swift and... weren't you taught dance? You have all the skills to learn the stances <PLAYER5> uses as a blade. Perhaps it would be possible for you to learn it if the two of you talked and trained for a while? */ EXTERN L#2SDSKJ PID.BL.05.00
IF~Kit(Player6,BLADE) Global("L#SDSkieBladeSkills","GLOBAL",0)~THEN REPLY @35 /* Skie, you are swift and... weren't you taught dance? You have all the skills to learn the stances <PLAYER6> uses as a blade. Perhaps it would be possible for you to learn it if the two of you talked and trained for a while? */ EXTERN L#2SDSKJ PID.BL.06.00
IF~!InParty("L#2EDDRD") PartyHasItem("L#2SDBRC") Global("L#2SDSkieBracPl","GLOBAL",0) !GlobalGT("L#2SkiEddardQuest","GLOBAL",2)~THEN REPLY @36 /* I foung these bracers and... they have a name engraved on them... Eddard Silvershield. */ EXTERN L#2SDSKJ PID.BRS.01.00
IF~PartyHasItem("L#2SDS01")~THEN REPLY @37 /* Didn't that belong to you? */ EXTERN L#2SDSKJ PID.BRS.00.00
IF~Global("L#2SDSkieFlirtPID","GLOBAL",0)~THEN REPLY @38 /* I must say that you are a really intriguing woman, Lady Silvershield. I would be proud to invite you to a dinner one day! */ EXTERN L#2SDSKJ PID.RM.01.00
IF~~THEN REPLY @39 /* I think there's something wrong about the way you sound, Skie. */ EXTERN L#2SDSKJ PID.FIX.01.00
IF~~THEN REPLY @40 /* It's nothing. I think we should move on. */ EXIT


/////////////////////////////////////////////////
/////////////////////////////////////////////////

CHAIN L#2SDSKJ PID.01.01.00
@41 /* Oh, it's quite nice that you're asking. Eldoth rarely asked me about how I felt and... But back to your question: I... could be worse, I suppose. But I have this wild craving for banana bread one of our cooks would bake back at the Estate. */
==L#2SDSKJ @42 /* On the other hand, I'm happy with where I am and that I've decided to leave the estate. Eh, I suppose I'll just put that craving in a solid box and pretend it's not there. */
EXIT

CHAIN L#2SDSKJ PID.01.02.00
@43 /* Uhm, I guess so? */
==L#2SDSKJ @44 /* I suppose it would be better if I had some spare boots as we're walking way more than I have expected, but... I'm fine. */
EXIT

CHAIN L#2SDSKJ PID.01.03.00
@45 /* I would kill for some poppy flower soap, but... I don't think you have any. I would be really surprised, but who knows! Perhaps we'll find some in the next dungeon. Huh... */
==L#2SDSKJ @46 /* ...who would have thought I would develop that kind of sense of humor... */
EXIT

CHAIN L#2SDSKJ PID.COMPS.00.00
@47 /* Oh, no! I mean... we were certainly working together, yeah, and that's where this comparisons come from! You too met him and... he introduced you to me. That's all, the nature of our talk and everything is different. */
==L#2SDSKJ @48 /* It's good you mentioned that so we have this clear! */
EXIT

CHAIN L#2SDSKJ PID.02.01.00
@49 /* Of course I do! I was quite surprised to see you at the Silvershield Estate! Well, I suppose that's that one good thing Eldoth did right: he made us meet and work together. */
==L#2SDSKJ @50 /* I'm... quite glad it happened. */
END
IF~~THEN REPLY @51 /* I'm happy it happened, too. */ EXTERN L#2SDSKJ PID.02.01.01
IF~~THEN REPLY @52 /* It was quite crazy when I think of it now. The fact that I helped kidnap you, but... it never felt like a true crime. */ EXTERN L#2SDSKJ PID.02.01.02
IF~~THEN REPLY @53 /* There are times I regret it all happened. */ EXTERN L#2SDSKJ PID.02.01.03

CHAIN L#2SDSKJ PID.02.01.01
@54 /* Great! I mean, that's... reasonable. Right? The fact we like to work together and all of that. */
EXTERN L#2SDSKJ PID.02.01.04

CHAIN L#2SDSKJ PID.02.01.02
@55 /* Well, erm... I suppose it was way more complicated than that... right? I felt like a prisoner and that was my chance to hit the road and... it can't be that bad, as it never felt evil, you know. */
EXTERN L#2SDSKJ PID.02.01.04

CHAIN L#2SDSKJ PID.02.01.03
@56 /* Seriously? Just... don't say I'm the reason you feel that way. And it's past anyway, so... perhaps try thinking of it in a better way, you can't change it anyway. */
EXTERN L#2SDSKJ PID.02.01.04

CHAIN L#2SDSKJ PID.02.01.04
@57 /* Anyway: yes, I'm still thinking about how it all started and while it feels clumsy how we first met, I think it's good it happened. */
==L#2SDSKJ @58 /* And that's how I want to see this. */
EXIT

CHAIN L#2SDSKJ PID.02.02.00
@59 /* And I have everything else on the road, you know. It's not like I'm some ungrateful brat, really, but... If I stayed at the estate I would miss so much! */
==L#2SDSKJ @60 /* I had all kinds of soaps, and inscripted letter papers and parchments, and beautiful laces and... and fresh bread every morning! And perfumes, my favorite ones, but... the price was quite high. I would need to be the good girl that deserves them and speaks and walks and smiles like "Duke Eltan's wonderful daughter", and I can be that, but... not all the time. It was exhausting! */
END
IF~~THEN REPLY @61 /* I can imagine. */ EXTERN L#2SDSKJ PID.02.02.01
IF~~THEN REPLY @62 /* It doesn't sound like a high price to pay. */ EXTERN L#2SDSKJ PID.02.02.02

CHAIN L#2SDSKJ PID.02.02.01
@63 /* I love my daddy and I love our home, but... they can both be too much... */
==L#2SDSKJ @64 /* Anyway, I suppose we should move on now. Come! */
EXIT

CHAIN L#2SDSKJ PID.02.02.02
@65 /* Believe me, it is. */
EXIT

CHAIN L#2SDSKJ PID.02.03.00
@66 /* Maybe? Or... maybe not? I... I don't really know. On one hand that was my chance to show everyone I'm not some privileged brat! But... those men and women could be so annoying sometimes. They were good people, including Bence Duncan, but... I suppose I would do so much better if I just worked with you instead. */
==L#2SDSKJ @67 /* But who knows how that would alter the story. Perhaps it would all be worse? Or... better? Anyway, that's the past and I'm here with you. I suppose I always did the best I could, including the time when I've been part of the Fist. */
==L#2SDSKJ @68 /* But I'm here now and I guess that's what I should be focused on, right? */
EXIT

CHAIN L#2SDSKJ PID.02.04.00
@69 /* Oh, yes! I almost forgot! Wasn't that clever? Tell me it was! Come on! */
END
IF~~THEN REPLY @70 /* Sure it was... */ EXTERN L#2SDSKJ PID.02.04.01
IF~~THEN REPLY @71 /* No, not really. */ EXTERN L#2SDSKJ PID.02.04.01

CHAIN L#2SDSKJ PID.02.04.01
@72 /* Well, if twas either that or Copperbuffer. But... you already know which one I picked. */
EXIT

CHAIN L#2SDSKJ PID.03.01.00
@73 /* Well... it can be hard, yes... */
END
IF~~THEN REPLY @74 /* So it all still haunts you. */ EXTERN L#2SDSKJ PID.03.01.01
IF~~THEN REPLY @75 /* You should forget about it. Seriously. */ EXTERN L#2SDSKJ PID.03.01.02

CHAIN L#2SDSKJ PID.03.01.01
@76 /* I'm not sure I'd use that word, but... yeah. */
EXTERN L#2SDSKJ PID.03.01.03

CHAIN L#2SDSKJ PID.03.01.02
@77 /* You think so? */
EXTERN L#2SDSKJ PID.03.01.03

CHAIN L#2SDSKJ PID.03.01.03
@78 /* There are times when I fall asleep and wake up all... rumpled! And... tired. But I'm getting over it. It's all better now. */
==L#2SDSKJ @79 /* Thanks to you. And to things we're doing. It's all going to be better. */
EXIT

CHAIN L#2SDSKJ PID.03.02.00
@80 /* Uhm... I want to say... rarely. I'm not sure how true that answer is, but it's not something I want to remember from that time. I want to remember all the good things I did and how I showed I can do so many things! */
==L#2SDSKJ @81 /* And... if you're worried if I see you... */
END
IF~~THEN REPLY @82 /* Is that who you see when these flashback come? */ EXTERN L#2SDSKJ PID.03.02.01
IF~~THEN REPLY @83 /* ... */ EXTERN L#2SDSKJ PID.03.02.02

CHAIN L#2SDSKJ PID.03.02.01
@84 /* Not exactly and... look, this was all like a weird nightmare and I also remember that creep and... I think it would be better if we just let that memory fade rather than dwell on it, you know. Really. */
EXIT

CHAIN L#2SDSKJ PID.03.02.02
@85 /* Look, this was all like a weird nightmare and I also remember that creep and... I think it would be better if we just let that memory fade rather than dwell on it, you know. Really. */
EXIT

CHAIN L#2SDSKJ PID.03.03.00
@86 /* I knew something changes... but I was also half-asleep, if that's the way to describe it. Not sure I can do it any better... */
END
IF~~THEN REPLY @87 /* I see. */ EXTERN L#2SDSKJ PID.03.03.01
IF~~THEN REPLY @88 /* Maybe that's even better. */ EXTERN L#2SDSKJ PID.03.03.01
IF~~THEN REPLY @89 /* A pity you didn't seem me deal with those manifested creatures that tried to stop me! */ EXTERN L#2SDSKJ PID.03.03.01

CHAIN L#2SDSKJ PID.03.03.01
@90 /* Well, it was all really hazy. So... yeah. */
==L#2SDSKJ @91 /* Anyway, we should move on. Really. I'm not sure it's good to dwell on that thing. */
EXIT

CHAIN L#2SDSKJ PID.04.01.00
@92 /* Black, I think! It makes you look slimmer and it works with most other colors and it's easier to hide in it! Well, unless you are in some... room filled with white dresses and cloths or... in a... warehouse full of milk or other white things? */
==L#2SDSKJ @93 /* Anyway, I like brack. And dark pink, maybe? Purple? Deep blue is also fine, but it's not as good as black. */
EXIT

CHAIN L#2SDSKJ PID.04.02.00
@94 /* I suppose I should say I like sweet and salty salad, but... okay, I think I can tell you... */
==L#2SDSKJ @95 /* One night I stole this... not sure how to call it... warmed sandwich with a meat cutlet, sause and some sembian cheese and lettuce and... it was so greasy. And I LOVED it. Seriously, that's kinda secret, it felt it got me few punds bigger here and there, but it was one of the best things I ever ate. */
==L#2SDSKJ @96 /* But don't tell anyone or I'll steal all of your healing potions next time we're in a dungeon. Let's make sure it stays between the two of us. */
EXIT

CHAIN L#2SDSKJ PID.04.03.00
@97 /* Hmm... cat I suppose. Isn't that a question everyone skilled in sneaking should say? Cats are so quiet and—honestly, they are like LIQUID! Haven't you see them squeeze through really tiny holes and nearly closed windows? */
==L#2SDSKJ @98 /* And, sorry all dogs, but cats feels more graceful. */
END
IF~~THEN REPLY @99 /* Hah. Well, I should have expected that kind of answer. */ EXTERN L#2SDSKJ PID.04.03.01
IF~~THEN REPLY @100 /* Hey, it sounds as if you thought dogs are worse about nearly everything! */ EXTERN L#2SDSKJ PID.04.03.02

CHAIN L#2SDSKJ PID.04.03.01
@101 /* I guess you should have, yes! */
EXIT

CHAIN L#2SDSKJ PID.04.03.02
@102 /* Well, it's you who said it! */
==L#2SDSKJ @103 /* ...but no, they're not THAT bad. I just preffer cats. */
EXIT

CHAIN L#2SDSKJ PID.05.01.0C
@104 /* Uhm, sure. I guess. */
END
IF~~THEN REPLY @105 /* Do you think of your father often? */ EXTERN L#2SDSKJ PID.05.01.00
IF~!InParty("L#2EDDRD") !GlobalGT("L#2SkiEddardQuest","GLOBAL",2)~THEN REPLY @106 /* Do you still think of your brother every now and then? It must be hard to outlive your brother while still in such young age. */ EXTERN L#2SDSKJ PID.05.02.00
IF~~THEN REPLY @107 /* Do you miss your mother? Sorry, but I'm not sure I remember her name... */ EXTERN L#2SDSKJ PID.05.03.00
IF~~THEN REPLY @108 /* Would you rather be born into less... known family? */ EXTERN L#2SDSKJ PID.05.04.00
IF~~THEN REPLY @109 /* I hope you and your family treat servants with respect. */ EXTERN L#2SDSKJ PID.05.05.00
IF~InParty("L#2EDDRD")~THEN REPLY @110 /* How does it feel to have Eddard around again? */ EXTERN L#2SDSKJ PID.05.06.00
IF~~THEN REPLY @111 /* I changed my mind. We should move on. */ EXIT

CHAIN L#2SDSKJ PID.05.01.00
@112 /* Sure I do. Daddy... well, he can be stubborn and annoying and patronizing, but I still love him. He cares, but sometimes it's really hard to live in his shadow. It's pretty big, you know. */
==L#2SDSKJ @113 /* He must be cursing me for leaving again or making some wild theories about why didn't stay, but I hope he'll understand it. If not now, then in a year or two. Maybe. */
END
IF~~THEN REPLY @114 /* I think he understands it already. Deep down. Perhaps it's hard for him to admit it, though. */ EXTERN L#2SDSKJ PID.05.01.01
IF~~THEN REPLY @115 /* I'm sure that's exactly that's going to happen. He will understand me, there's no other option, Skie. */ EXTERN L#2SDSKJ PID.05.01.01
IF~~THEN REPLY @116 /* I don't think he'll be able to understand it, sorry. */ EXTERN L#2SDSKJ PID.05.01.02

CHAIN L#2SDSKJ PID.05.01.01
@117 /* Thanks. I... appreciate. I really do. */
EXIT

CHAIN L#2SDSKJ PID.05.01.02
@118 /* Mhm. Well... that's blunt. And quite pssimistic. */
EXIT

CHAIN L#2SDSKJ PID.05.02.00
@119 /* I'll always think about Eddard. He was a good person, he always wanted to be like father, be the one to show everyone how responsible he can be and that the name Silvershield stands for quality and vigilance. */
==L#2SDSKJ @120 /* To me he'll always be that boy who took my best blush and dye, because he invented that game about killing a dragon and he wanted to paint wounds all over his arms and chest. Hah! If you only saw daddy... he didn't know if he's more angry or surprised and... he actually laughted. And then they had the talk about stealing and ruining expensive tapestry and one of our servant's shirt! */
==L#2SDSKJ @121 /* But he grew older, got stronger and... hairier and while he wasn't as serious and most adults just yet, he was quite ambitious... */
END
IF~~THEN REPLY @122 /* I suppose the answer to my question is "yes". It looks like you miss him a lot. */ EXTERN L#2SDSKJ PID.05.02.01
IF~~THEN REPLY @123 /* I suppose it was all your father's and Kagain's fault. It was them who were supposed to make sure it won't be a deadly mission, getting that caravan reach its destination. */ EXTERN L#2SDSKJ PID.05.02.02

CHAIN L#2SDSKJ PID.05.02.01
@124 /* I do. And I guess I always will. */
EXIT

CHAIN L#2SDSKJ PID.05.02.02
@125 /* I don't know about Kagain, but I think father did all he could! And... you know him. He wouldn't send him to die, he just wanted to give him a chance to show that he's a man Eddard wanted to be. */
==L#2SDSKJ @126 /* ...I... */
==L#2SDSKJ @127 /* I really miss him you know. My brother would be a very good man... I wish he got back home safe... */
EXIT

CHAIN L#2SDSKJ PID.05.03.00
@128 /* Brilla. Brilla Silvershield. */
==L#2SDSKJ @129 /* She's my mother, so... yes. I do miss her! I still remember her perfumes or what she would do with her hair... Those are nice memories! Warm. And they make my heart beat lively! */
==L#2SDSKJ @130 /* I really hope to see her again once I get back, perhaps eat her favorite fig pie and drink this special tea from Kara-Tur! She always loved it. */
==L#2SDSKJ @131 /* Mmm. That would be really great... */
EXIT

CHAIN L#2SDSKJ PID.05.04.00
@132 /* No. I'm happy to be wear that name! It's... just... it's not always easy. But I love my dad and who we are. */
==L#2SDSKJ @133 /* It's complicated, but from what I heard, all families are. */
EXIT

CHAIN L#2SDSKJ PID.05.05.00
@134 /* Hmm? Of course we do! We... we know them, their families and once a year we make this special dinner for them and their significant other! And they do not have to prepare anything, as we would hire a different cook to prepare everything and provide extra gold for this hireling to hire someone to serve things. */
==L#2SDSKJ @135 /* I know many of our servants since I was like... seven? Maybe longer, but I wouldn't remember that. And as you may remember, my chamber was near the kitchen so I could sneak, get some fresh carrots or... well, play a prank. But I did that rarely, I promise! */
END
IF~~THEN REPLY @136 /* Oh, that sounds quite... Imoenish. */ EXTERN L#2SDSKJ PID.05.05.01
IF~~THEN REPLY @137 /* So you knew how to make their work harder. Good to know. */ EXTERN L#2SDSKJ PID.05.05.02

CHAIN L#2SDSKJ PID.05.05.01
@138 /* Hmm, maybe? */
==L#2SDSKJ @139 /* Anyway, I liked our servants and I kinda hope they liked me back. */
EXIT

CHAIN L#2SDSKJ PID.05.05.02
@140 /* What? No! None of my prank where that big! Well, once I dyed our former cleaning lady's wig red, but only to show her how GREAT she would look in ginger hair! And she laught, so... we were good. I promise. */
==L#2SDSKJ @141 /* ...and I got my punishment, because cleaning my nails after the work was done—ugh, it was a nightmare! */
EXIT

CHAIN L#2SDSKJ PID.05.06.00
@142 /* It's amazing! A bit weird, too, as I already mourned him, but... Knowing he's alive changes everything. And I like it. */
==L#2SDSKJ @143 /* Seriously, it's SO AMAZING. And that's also thanks to you. So... thanks. */
EXIT

CHAIN L#2SDSKJ PID.06.01.00
@144 /* Really?! I mean, of course you do. I used to have it tied in a knot more oftet, but these days I realized I can wear them like that and I still like them! I just need to make sure they don't get into my eyes when I'm dealing with locks. Locks in my eyes doesn't go well with lock locking a chest. */
END
IF~~THEN REPLY @145 /* Wow. Was that supposed to be a pun? */ EXTERN L#2SDSKJ PID.06.01.01
IF~~THEN REPLY @146 /* I can imagine that being somehow... annoying. */ EXTERN L#2SDSKJ PID.06.01.02
IF~~THEN REPLY @147 /* Mhm. Anyway, I like them and the way you wear them today. */ EXTERN L#2SDSKJ PID.06.01.03

CHAIN L#2SDSKJ PID.06.01.01
@148 /* Uhm... no? I... erm... nevermind! You know, I may need to go and... uhm... clean my lockpicks. */
EXIT

CHAIN L#2SDSKJ PID.06.01.02
@149 /* Sure it is! Not just a bit, but A LOT. */
EXIT

CHAIN L#2SDSKJ PID.06.01.03
@150 /* Thank you! */
EXIT

CHAIN L#2SDSKJ PID.06.02.00
@151 /* Ah, finally someone realized that! I mean, I knew it ALL THE TIME, but people rarely think of it and... I know fighting monsters and saving people is important, but it's nice to smell nicely while doing all of that. */
==L#2SDSKJ @152 /* You may don't know, but the one I'm wearing to<DAYNIGHT> is called "Forwerling" and it's by Danielle C'Teel and... oh, she's so taltented! She also wrote a script for a play and... and a novel! And she's always so classy. Even if she's sterting to get these wrinkles, they look somehow... majestic on her. And that's a rare thing to say about wrinkles. */
==L#2SDSKJ @153 /* Anyway, they are really great. The perfumes. Not the wrinkles. Let's not... oversell them. */
END
IF~~THEN REPLY @154 /* They're nice. */ EXTERN L#2SDSKJ PID.06.02.01
IF~~THEN REPLY @155 /* I smelled better. */ EXTERN L#2SDSKJ PID.06.02.02
IF~Gender(Player1,MALE)~THEN REPLY @156 /* I smell better than them. */ EXTERN L#2SDSKJ PID.06.02.03M
IF~Gender(Player1,FEMALE)~THEN REPLY @157 /* Hmm, I smell better than them. */ EXTERN L#2SDSKJ PID.06.02.03F

CHAIN L#2SDSKJ PID.06.02.01
@158 /* Thank you! I'll let her know that the Hero of Baldur's Gate enjoyed them! If... I meet her any soon, that is... */
EXIT

CHAIN L#2SDSKJ PID.06.02.02
@159 /* Really? I mean... they're still very good. And they are quite lasting and that's an important thing when you know you'll be spending most of your day in the dungeons! */
EXIT

CHAIN L#2SDSKJ PID.06.02.03M
@160 /* Uhm... if you're wearing anything at all, I'd call the perfume "Musky Barbarian" or something like that. No offence! You still smell better than Eldoth. He would always smell of digested alcohol... */
EXIT

CHAIN L#2SDSKJ PID.06.02.03F
@161 /* Uhm... if you're wearing anything at all, I'd call the perfume "Working Woman" or something like that. No offence! You still smell better than Eldoth. He would always smell of digested alcohol... */
EXIT

CHAIN L#2SDSKJ PID.07.01.00
@162 /* I did many things in life and... I think I'm where I'm supposed to be, you know. I've done dancing and some other forms of art too. But I also always wanted to show people I can do other things that look good or create things. None of these things are worse, but... they're not equally appreciated. */
==L#2SDSKJ @163 /* It's... maybe if they see I can have my input in both these worlds... they will start to treath both these forms of activity more seriously? I don't know. */
==L#2SDSKJ @164 /* I can do many things and I guess all of them are... important. In a way. */
EXIT

CHAIN L#2SDSKJ PID.07.02.00
@165 /* Well, it all depends on orders! I don't like following dull and stupid orders, I guess.I can do great things and... polishing shields is not really exciting, you know. Such orders are so boring and... they waste the potential I have! I can do better, really! */
EXIT

CHAIN L#2SDSKJ PID.A1.01.00
@166 /* I... just knew I had to stay. We can do many great things together and—come on, we know eachother. And I think I can trust you and you can trust me, so I suppose my decision to stay was a good one. Fair one. */
==L#2SDSKJ @167 /* I just hope we'll also get a chance to relax on the way, every now and then! Eat some figs, taste new wines... But I know, I know: only when the time is right. */
==L#2SDSKJ @168 /* I hope such time will come too, though. But until then, let's do our best to be great. Or... remain great? Yep, that sounds about right. */
EXIT

CHAIN L#2SDSKJ PID.A2.01.00
@169 /* Well... you know I have my doubts, because I don't want to end up working with people like Eldoth. But you helped so many people and I REALLY trust you can do better than the drunk Kron always was. */
==L#2SDSKJ @170 /* So I kind hope you'll prove to be the leader to change this world for better. */
EXIT

CHAIN L#2SDSKJ PID.EL.01.00
@171 /* I kinda do... I know he's gone, but—he would always try to poison my mind and heart and make my confidence... fester! Ugh, not sure if that's the word, but you know what I mean. You met him. */
==L#2SDSKJ @172 /* I wanted to be free from my estate and see the world, so I trusted him. And... that feeling grew and grew, but it's was all like some evil gnomes wicked illussion! Now I know it. I wasn't free, not with him around. */
END
IF~~THEN REPLY @173 /* You were more free than while locked in your room. */ EXTERN L#2SDSKJ PID.EL.01.01
IF~~THEN REPLY @174 /* Well, you were to play a hostage to make him earn money, but... it looks like it wasn't just a trick to get some of the Silvershield money, but it was also to have you under his control. */ EXTERN L#2SDSKJ PID.EL.01.02

CHAIN L#2SDSKJ PID.EL.01.01
@175 /* Maybe... but while I could see the world, I would be dozed with his poison, these sweet words and pretended care! Agh! He was the worst! */
EXTERN L#2SDSKJ PID.EL.01.03

CHAIN L#2SDSKJ PID.EL.01.02
@176 /* Exactly! He would make sure he's in control. While he still needed me, of course. The more time have passed, the more obvious his reasons were. */
EXTERN L#2SDSKJ PID.EL.01.03

CHAIN L#2SDSKJ PID.EL.01.03
@177 /* The thing is... even after he's gone, I feel I should have been smarter, you know. Better. But... maybe I wasn't prepared. Or I wanted to see someone else in him and in this plans and doings. Does that make sense? */
END
IF~~THEN REPLY @178 /* It does. */ EXTERN L#2SDSKJ PID.EL.01.03x
IF~~THEN REPLY @179 /* I don't think so, Skie... */ EXTERN L#2SDSKJ PID.EL.01.04

CHAIN L#2SDSKJ PID.EL.01.03x
@180 /* Good. And... thank you. It's good to know you see it too! */
==L#2SDSKJ @181 /* Arh, you see?! This damn memories. They're like his poison and... it still works. But I really hope it's all going to fade away. And I'll feel better. */
==L#2SDSKJ @182 /* But I need to some time now. Excuse me, <CHARNAME>, but I think we should go. We can talk again, but... another time. */
EXIT

CHAIN L#2SDSKJ PID.EL.01.04
@183 /* Well, I though you'd understand, but it looks like I was wrong. */
DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",30)~ EXIT

CHAIN L#2SDSKJ PID.EL.02.00
@184 /* I'd like to tell you that I'm feeling better, but... I'm not sure. Yes, I was irritated and I still am and I am worried it's going to stay that way. So I'm trying to think about different things. About what we're doing here and counting the times he was wrong. */
END
IF~~THEN REPLY @185 /* Huh, he was wrong more than once! He would say something stupid all the time. */ EXTERN L#2SDSKJ PID.EL.02.01
IF~~THEN REPLY @186 /* Counting all those times may be hard. It's like counting the starts of grains of sand. */ EXTERN L#2SDSKJ PID.EL.02.01
IF~~THEN REPLY @187 /* You know what? I don't care. Perhaps we should just move on. */ EXTERN L#2SDSKJ PID.EL.02.02

CHAIN L#2SDSKJ PID.EL.02.01
@188 /* Hah! Well, yeah. It's kinda true. */ 
==L#2SDSKJ @189 /* Tell me, do you regret some of your decisions? Or things you believed? */
END
IF~~THEN REPLY @190 /* Everyone does, Skie. It's part of becoming someone better. First, you need to realize what you did wrong or what you could do better. */ EXTERN L#2SDSKJ PID.EL.02.03
IF~~THEN REPLY @191 /* No. All these decisions were mine and they were the best things I could do, they were the best options in that moment in time when I were making them. They were the best options I had. */ EXTERN L#2SDSKJ PID.EL.02.04
IF~~THEN REPLY @192 /* Well, maybe. It doesn't matter, we're not talking about me right now. */ EXTERN L#2SDSKJ PID.EL.02.05

CHAIN L#2SDSKJ PID.EL.02.03
@193 /* Hmm, that makes sense. */
==L#2SDSKJ @194 /* I suppose there were always some things I could learn and be somehow... better. */
==L#2SDSKJ @195 /* Thank you, <CHARNAME>, I think that's what I hoped to hear. */
==L#2SDSKJ @196 /* Come now. Let's get going. We can talk more some other time. */
EXIT

CHAIN L#2SDSKJ PID.EL.02.02
@197 /* Ugh... fine! */
DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",30)~ EXIT

CHAIN L#2SDSKJ PID.EL.02.04
@198 /* Hmm, so that's how you see those things. I'm... not sure I feel that convinced and... either we are good enough or we're not and that perspective you're speaking of... it feels somehow closed for improvements, as if we should just go with the flow? I'm not sure that's what I want life to be like. */
DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",30)~ EXIT

CHAIN L#2SDSKJ PID.EL.02.05
@199 /* We can do both. Talk about me and talk about you in the same time, right? */
END
IF~~THEN REPLY @200 /* Okay, I do regret some of my decisions, but... that's how you become better. Grow. But to be a better version of yourself, you need to learn what to change. */ EXTERN L#2SDSKJ PID.EL.02.03
IF~~THEN REPLY @201 /* Skie, all these decisions were mind and they were the best things I could do, they were the best options in that moment in time when I were making them. They were the best options I had. */ EXTERN L#2SDSKJ PID.EL.02.04
IF~~THEN REPLY @202 /* Sorry, girl, but you're asking about parts of my story I don't want to share with you. */ EXTERN L#2SDSKJ PID.EL.02.06

CHAIN L#2SDSKJ PID.EL.02.06
@203 /* Mhm. I get it. Nevermind, then... */
DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",30)~ EXIT

CHAIN L#2SDSKJ PID.EL.03.00
@204 /* Maybe...? It's not like I demand things to get fixed right away, I'm not THAT unreasonable. I'd be happy if it worked that way, but I suppose it doesn't, right? */
END
IF~~THEN REPLY @205 /* Right. */ EXTERN L#2SDSKJ PID.EL.03.01
IF~~THEN REPLY @206 /* I don't know, to be honest. I'd be happy to know the answer. Let me know if you find one. */ EXTERN L#2SDSKJ PID.EL.03.01
IF~~THEN REPLY @207 /* Perhaps it does. Just not in this situation. Maybe we're broken. */ EXTERN L#2SDSKJ PID.EL.03.02

CHAIN L#2SDSKJ PID.EL.03.01
@208 /* Mhm. Let me just nod to that... */
EXTERN L#2SDSKJ PID.EL.03.03

CHAIN L#2SDSKJ PID.EL.03.02
@209 /* I certainly hope we're not! Come on, we do great things, why would we be... broken, or something. */
EXTERN L#2SDSKJ PID.EL.03.03

CHAIN L#2SDSKJ PID.EL.03.03
@210 /* Dad and mom would always demand much from me, and in my brother's, Eddard's ambitions, so I suppose I got used to demanding much from myself. That's why I want things to change quickly and everything to go in the right direction and... ugh, I just realized how that sounds. */
END
IF~~THEN REPLY @211 /* Patience. Meanwhile, you said you want to focus on the good things we do and showing everyone what we're made of. You're doing that already, so perhaps focus on that. */ EXTERN L#2SDSKJ PID.EL.03.04
IF~~THEN REPLY @212 /* You know, I think I'm done talking. We don't have time for all your issues right now. */ EXTERN L#2SDSKJ PID.EL.03.05

CHAIN L#2SDSKJ PID.EL.03.04
@213 /* You're right! I'm doing that part already. */
==L#2SDSKJ @214 /* I need to figure out how to keep remembering abut that. */
==L#2SDSKJ @215 /* And... <CHARNAME>, remember you're doing great too. Even when things go hard, you are handling things better than most do. And you still find some time to talk to me and that's kinda sweet. You're a good friend. */
EXIT

CHAIN L#2SDSKJ PID.EL.03.05
@216 /* Hello? It's YOU who talked to ME. Anyway, I will bother you no longer. */
DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",30)~ EXIT

CHAIN L#2SDSKJ PID.EL.04.00
@217 /* Oh, right... That thing with Sarevok and... your dad. It's... well... I guess it takes much effort and strong back muscles to carry all that stuff. Yeah, I guess it must have been draining for you. Perhaps it still is. */
==L#2SDSKJ @218 /* ...and I have a feeling you're trying to cheer me up and make me learn from your experience. Is that what you're doing here, <PRO_SIRMAAM> I'll-Make-Things-Better? (smiles) */
END
IF~~THEN REPLY @219 /* You've got me. */ EXTERN L#2SDSKJ PID.EL.04.01
IF~~THEN REPLY @220 /* Hmm? No, I meant... I was about to ask if... you think I'm doing good, too. Because I too need to learn few things and that's not easy. And I guess it's a bit like what you're feeling. */ EXTERN L#2SDSKJ PID.EL.04.02

CHAIN L#2SDSKJ PID.EL.04.01
@221 /* Hah! I'm getting better at this! */
EXTERN L#2SDSKJ PID.EL.04.03

CHAIN L#2SDSKJ PID.EL.04.02
@222 /* Oh... sorry. And sure, I think you're doing great and I didn't even know that's how you feeling and that you need anyone confirm that. You saved many lives and, hey, I told you that already. And if it wasn't for you, I wouldn't be here. */
==L#2SDSKJ @223 /* But... I guess sometimes it's hard to realize how we're doing without changing a perspective, right? It's like with an outfit: sometimes you need someone to look at you from every angle so you knew exactly how it all fits and. I guess we can be that second pair of eyes for eachother. If that's what you want. */
EXTERN L#2SDSKJ PID.EL.04.03

CHAIN L#2SDSKJ PID.EL.04.03
@224 /* We do work well together, so... let's make this clear. If something goes wrong or we're worried or we're just gonna talk and let eachother know. I guess we're aready doing that, but I guess it's good to say such things aloud. */
END
IF~~THEN REPLY @225 /* Sure. I like that. */ EXTERN L#2SDSKJ PID.EL.04.04
IF~~THEN REPLY @226 /* Nah, that's not for me. Sorry. I don't want any obligations like that. */ EXTERN L#2SDSKJ PID.EL.04.05

CHAIN L#2SDSKJ PID.EL.04.04
@227 /* We have a deal, then! */
EXIT

CHAIN L#2SDSKJ PID.EL.04.05
@228 /* Okay... I get it. I guess. */ 
DO ~SetGlobal("L#SDSkiesNewSeries","GLOBAL",30)~ EXIT

CHAIN L#2SDSKJ PID.EL.05.00
@229 /* Hey, that's so nice to hear and... know that's how you see things. I must say I feel much better lately, I'm thinking less and less on you-know-who. The drunk that would drive me crazy. And... it all feels lighter. */
==L#2SDSKJ @230 /* But I don't think I'd be here without you. But... there's still much on your plate so from now on, I want to help you feel that way. I'm Skie Silvershield and I won't let you down. */
END
IF~OR(2) Global("L#2SDSkieWarns","GLOBAL",1) !Global("L#2SDSkieWarns","GLOBAL",1)~THEN REPLY @231 /* Thank you. I'm glad you're in this group. */ EXTERN L#2SDSKJ PID.EL.05.01
IF~~THEN REPLY @232 /* Whatever... */ EXTERN L#2SDSKJ PID.EL.05.02

CHAIN L#2SDSKJ PID.EL.05.01
@233 /* I suppose we're both glad, then. */
DO ~SetGlobal("L#2SDSkieWarns","GLOBAL",0)~ EXIT

CHAIN L#2SDSKJ PID.EL.05.02
@234 /* Hey! That wasn't very nice! */
EXIT

CHAIN L#2SDSKJ PID.S1.01.00
@235 /* I'm kinda worried for. But that's a normal thing to feel, I guess? Let's hope we can fix it somehow! There must be a way! */
EXIT

CHAIN L#2SDSKJ PID.U1.01.00
@236 /* It all feels so... dangerous out here! There's spikes, weird things, shadows and this echoed sounds. I don't like it here, but I suppose that a normal reaction for anyone from the Surface to all these things. */
==L#2SDSKJ @237 /* Let's just hope we won't stay here for long. */
EXIT

CHAIN L#2SDSKJ PID.U2.01.00
@238 /* I'm not sure if it's any better to other parts of the Underdark! And those spiders and the feeling that you may be stabbed in the back every single seconds. It's kinda tiresome... */
EXIT

CHAIN L#2SDSKJ PID.BL.01.00
@239 /* Hmm, I've been thinking about that and I've been observing you so... maybe I could indeed copy those pirouettes you make. And that would be SO useful during our adventure... let me try... */
DO ~StartCutSceneMode() Wait(1) FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(1) EndCutSceneMode() SetGlobal("L#SDSkieBladeSkills","GLOBAL",1) StartDialogueNoSet(Player1)~ EXIT

CHAIN L#2SDSKJ PID.BL.02.00
@240 /* Hmm, I've been thinking about that and I've been observing <PLAYER2> so... maybe I could indeed copy those pirouettes make. Just... give me a moment... */
DO ~StartCutSceneMode() Wait(1) FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(1) EndCutSceneMode() SetGlobal("L#SDSkieBladeSkills","GLOBAL",1) StartDialogueNoSet(Player1)~ EXIT

CHAIN L#2SDSKJ PID.BL.03.00
@241 /* Hmm, I've been thinking about that and I've been observing <PLAYER3> so... maybe I could indeed copy those pirouettes make. Just... give me a moment... */
DO ~StartCutSceneMode() Wait(1) FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(1) EndCutSceneMode() SetGlobal("L#SDSkieBladeSkills","GLOBAL",1) StartDialogueNoSet(Player1)~ EXIT

CHAIN L#2SDSKJ PID.BL.04.00
@242 /* Hmm, I've been thinking about that and I've been observing <PLAYER4> so... maybe I could indeed copy those pirouettes make. Just... give me a moment... */
DO ~StartCutSceneMode() Wait(1) FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(1) EndCutSceneMode() SetGlobal("L#SDSkieBladeSkills","GLOBAL",1) StartDialogueNoSet(Player1)~ EXIT

CHAIN L#2SDSKJ PID.BL.05.00
@243 /* Hmm, I've been thinking about that and I've been observing <PLAYER5> so... maybe I could indeed copy those pirouettes make. Just... give me a moment... */
DO ~StartCutSceneMode() Wait(1) FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(1) EndCutSceneMode() SetGlobal("L#SDSkieBladeSkills","GLOBAL",1) StartDialogueNoSet(Player1)~ EXIT

CHAIN L#2SDSKJ PID.BL.06.00
@244 /* Hmm, I've been thinking about that and I've been observing <PLAYER6> so... maybe I could indeed copy those pirouettes make. Just... give me a moment... */
DO ~StartCutSceneMode() Wait(1) FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(1) EndCutSceneMode() SetGlobal("L#SDSkieBladeSkills","GLOBAL",1) StartDialogueNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("L#SDSkieBladeSkills","GLOBAL",1)~ THEN L#2SDSKJ BLADE.PID.BL.06.0X
@245 /* Hey! It wasn't that hard! I think I can do it now! Thanks for encouraging me! */
DO ~SetGlobal("L#SDSkieBladeSkills","GLOBAL",2) AddSpecialAbility("SPCL521") AddSpecialAbility("SPCL522")~ EXIT

CHAIN L#2SDSKJ PID.BRS.01.00
@246 /* These... are really Eddard's bracers... */
==L#2SDSKJ @247 /* I think he used those during his final mission... Someone must have found them and sell. */
==L#2SDSKJ @248 /* I would be proud to wear them, unless... you want them. That would be great too: knowing they are used by the Hero of Baldoru's Gate. Eddard would like that. */
DO ~SetGlobal("L#2SDSkieBracPl","GLOBAL",1)~ EXIT

CHAIN L#2SDSKJ PID.BRS.00.00
@249 /* Ah... right. They look nice, I still think so, but... I think I'm bored with them. I think I would rather wear something else. Unless we don't have anything else, that is. */
EXIT

CHAIN L#2SDSKJ PID.RM.01.00
@250 /* Oh... wow. You're hitting on me, aren't you? */
END
IF~~THEN REPLY @251 /* Kinda. */ EXTERN L#2SDSKJ PID.RM.01.01
IF~~THEN REPLY @252 /* What? No! */ EXTERN L#2SDSKJ PID.RM.01.02

CHAIN L#2SDSKJ PID.RM.01.01
@253 /* Well... I see. Erm... */
EXTERN L#2SDSKJ PID.RM.01.03

CHAIN L#2SDSKJ PID.RM.01.02
@254 /* Oh. Urm. Good, I guess? */
EXTERN L#2SDSKJ PID.RM.01.03

CHAIN L#2SDSKJ PID.RM.01.03
@255 /* I've been through a lot lately and... I'm feeling I'm on my way of self-discovery right now! I need to re-learn what I like, dislike and how to be a heroine I want to be and to how to avoid, well, being killed. So while I think you're great and everything, I... I think I need to be alone for a while. Romantic-wise, I could still use a friend! If you're up for the position, that is. */
EXIT

CHAIN L#2SDSKJ PID.FIX.01.00
@256 /* That's unacceptable! */
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("L#2SDFIX")~ EXIT
