CHAIN IF WEIGHT #200 ~IsGabber(Player1) CombatCounter(0)~ THEN L#2ED25J PID.00.00.00
@0 /* Hmm? Do you need something from me, <CHARNAME>? */
END
IF~RandomNum(3,1)~THEN REPLY @1 /* I thought I'd ask you if you're feeling alright. */ EXTERN L#2ED25J PID.01.01.00
IF~RandomNum(3,2)~THEN REPLY @2 /* I thought I'd ask you if you're okay. */ EXTERN L#2ED25J PID.01.02.00
IF~RandomNum(3,3)~THEN REPLY @3 /* I thought I'd ask you if you need something. */ EXTERN L#2ED25J PID.01.03.00
IF~PartyHasItem("L#2EDDOG")~THEN REPLY @4 /* Are you still happy that you brought Master Barkshield with us? */ EXTERN L#2ED25J PID.BS.03.00
IF~RandomNum(3,1)~THEN REPLY @5 /* What's your favorite color? */ EXTERN L#2ED25J PID.02.01.00
IF~RandomNum(3,2)~THEN REPLY @6 /* What's your fondest memory? */ EXTERN L#2ED25J PID.02.02.00
IF~RandomNum(3,3)~THEN REPLY @7 /* What's your favorite food? */ EXTERN L#2ED25J PID.02.03.00
IF~RandomNum(3,1)~THEN REPLY @8 /* Vully's betrayal must have damaged your ability to trust people. */ EXTERN L#2ED25J PID.03.01.00
IF~RandomNum(3,2)~THEN REPLY @9 /* I suppose freedom is the sweetest when regain after such time and... */ EXTERN L#2ED25J PID.03.02.00
IF~RandomNum(3,3)~THEN REPLY @10 /* I'm wondering if Vully's loyalty was ever doubted before... */ EXTERN L#2ED25J PID.03.03.00
IF~RandomNum(3,1)~THEN REPLY @11 /* It looks like you're a person that tooks well care of his body. */ EXTERN L#2ED25J PID.04.01.00
IF~RandomNum(3,2)~THEN REPLY @12 /* What was your puberty like, Eddard? Kids do all kind of things whne they grow up. */ EXTERN L#2ED25J PID.04.02.00
IF~RandomNum(3,3)~THEN REPLY @13 /* Did you have some... significant other in Baldur's Gate? */ EXTERN L#2ED25J PID.04.03.00
IF~Global("L#2EddardHairCut","GLOBAL",0)~THEN REPLY @14 /* Is that your usual hair cut?? */ EXTERN L#2ED25J PID.0H.00.00
IF~~THEN REPLY @15 /* How do you feel after saving Suldanesselar? */ EXTERN L#2ED25J PID.SUL.00.00
IF~~THEN REPLY @16 /* I thought we'd have some more free time after defeating Irencus in Hell... */ EXTERN L#2ED25J PID.IRE.00.00
IF~RandomNum(3,1)~THEN REPLY @17 /* I rarely meet bards skilled in using greatswords like you do. */ EXTERN L#2ED25J PID.05.01.00
IF~RandomNum(3,2)~THEN REPLY @18 /* What kind of classes you had to attend to back in Baldur's Gate? */ EXTERN L#2ED25J PID.05.02.00
IF~RandomNum(3,3)~THEN REPLY @19 /* Do you have some kind of mentor? Or did you have one before? */ EXTERN L#2ED25J PID.05.03.00
IF~RandomNum(3,1)~THEN REPLY @20 /* Is there something you did and you know regret? */ EXTERN L#2ED25J PID.06.01.00
IF~RandomNum(3,2)~THEN REPLY @21 /* Is there some kind of old habit you're ashamed of? */ EXTERN L#2ED25J PID.06.02.00
IF~RandomNum(3,3)~THEN REPLY @22 /* What do you like to do to relax? */ EXTERN L#2ED25J PID.06.03.00
IF~InParty("L#2SDSkie")~THEN REPLY @23 /* Just between us: how does it feel to work with Skie? */ EXTERN L#2ED25J PID.SKIE.00.00
IF~Global("L#2EddardRomanceActive","GLOBAL",1)~THEN REPLY @24 /* What do you think about our relations? */ EXTERN L#2ED25J PID.RR.01.00
IF~Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @24 /* What do you think about our relations? */ EXTERN L#2ED25J PID.RR.02.00
IF~Global("L#2EddardRomanceActive","GLOBAL",3)~THEN REPLY @24 /* What do you think about our relations? */ EXTERN L#2ED25J PID.RR.03.00
IF~RandomNum(3,1) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @25 /* I like the way you look. */ EXTERN L#2ED25J PID.R1.01.00
IF~RandomNum(3,2) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @26 /* I must say you're a very handsome man. */ EXTERN L#2ED25J PID.R1.02.00
IF~RandomNum(3,3) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @27 /* I suppose I'd look at you if you passed me on the street. You have that... something in the way you look and walk. */ EXTERN L#2ED25J PID.R1.03.00
IF~RandomNum(3,1) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @28 /* So, what do you find attractive? */ EXTERN L#2ED25J PID.R2.01.00
IF~RandomNum(3,2) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @29 /* I think there's something on your beard, some speck of dust. Let me take it off... */ EXTERN L#2ED25J PID.R2.02.00
IF~RandomNum(3,3) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @30 /* You look very well in that outfit of yours. But you could show a bit more of that chest of yours. (wink) */ EXTERN L#2ED25J PID.R2.03.00
IF~RandomNum(3,1) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @31 /* Do I look well, Eddard? What would you say? */ EXTERN L#2ED25J PID.R3.01.00
IF~RandomNum(3,2) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @32 /* So, would you say a skilled <PRO_RACE> <PRO_MANWOMAN> is perhaps your type? */ EXTERN L#2ED25J PID.R3.02.00
IF~RandomNum(3,3) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @33 /* What's more important: a fine body or a keen mind? Hmm? */ EXTERN L#2ED25J PID.R3.03.00
IF~RandomNum(2,1) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @34 /* How do you know that someone is your type? (smile) */ EXTERN L#2ED25J PID.R4.01.00
IF~RandomNum(2,2) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @35 /* So, is it easy to break your heart? (wink) */ EXTERN L#2ED25J PID.R4.02.00
IF~RandomNum(3,1) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @36 /* I feel so much safer with you around. */ EXTERN L#2ED25J PID.R5.01.00
IF~RandomNum(3,2) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @37 /* I like that you're both sensitive, but also strong. */ EXTERN L#2ED25J PID.R5.02.00
IF~RandomNum(3,3) OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @38 /* I like what kind of man you are, Eddard. */ EXTERN L#2ED25J PID.R5.03.00
IF~RandomNum(3,1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @39 /* What would you say for a kiss? */ EXTERN L#2ED25J PID.RR1.01.00
IF~RandomNum(3,2) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @40 /* Would you mind if I kissed you? */ EXTERN L#2ED25J PID.RR1.02.00
IF~RandomNum(3,3) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @41 /* Your lips are hard to resist, Eddard. */ EXTERN L#2ED25J PID.RR1.03.00
IF~RandomNum(2,1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @42 /* I like to feel your scent on me, Eddard. It's quite sexy. */ EXTERN L#2ED25J PID.RR2.01.00
IF~RandomNum(2,2) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @43 /* I like the way you smell. */ EXTERN L#2ED25J PID.RR2.02.00
IF~RandomNum(2,1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @44 /* Would you mind holding my hand? */ EXTERN L#2ED25J PID.RRY.01.00
IF~RandomNum(2,2) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @45 /* I like your arms. They're quite manly. */ EXTERN L#2ED25J PID.RRY.02.00
IF~RandomNum(2,1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @46 /* Have anyone ever told you you're quite good at sex? */ EXTERN L#2ED25J PID.RR3.01.00
IF~RandomNum(2,2) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @47 /* You were very good last time we... spent some time together. (smile) */ EXTERN L#2ED25J PID.RR3.02.00
IF~RandomNum(2,1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @48 /* I think there are this tricks I always though I'd like to try in bed. */ EXTERN L#2ED25J PID.RR4.01.00
IF~RandomNum(2,2) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @49 /* What would you say if I asked you to undress for me next time we stop? As a kind of... foreplay. */ EXTERN L#2ED25J PID.RR4.02.00
IF~RandomNum(2,1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @50 /* I like that I can be myself when I'm with you. */ EXTERN L#2ED25J PID.RR5.01.00
IF~RandomNum(2,2) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @51 /* I like the way you look at me, Eddard. */ EXTERN L#2ED25J PID.RR5.02.00
IF~OR(2) Global("L#2EddardRomanceActive","GLOBAL",1) Global("L#2EddardRomanceActive","GLOBAL",2)~THEN REPLY @52 /* Eddard, we should make our relationship stricktly professional. */ EXTERN L#2ED25J PID.ROMKILL.00.00
IF~~THEN REPLY @53 /* You sound a bit strange. Can we fix that? */ EXTERN L#2ED25J PID.FIX.00.00
IF~~THEN REPLY @54 /* It's nothing, we should move on. */ EXIT

////////////////////////////////////////
////////////////////////////////////////

CHAIN L#2ED25J PID.01.01.00
@55 /* Fine. Way better than I used to, but I suppose that's obvious considering how I were locked away from normal life. */
==L#2ED25J @56 /* But thank you for asking, <CHARNAME>. I appreciate! */
EXIT

CHAIN L#2ED25J PID.01.02.00
@57 /* I could use a bath, we've been working pretty hard to<DAYNIGHT>, but I suppose it's going to happen when we're done here and when we can afford a small break from the most serious of tasks. */
==L#2ED25J @58 /* Phew, who would have thought we'd have so much work! */
EXIT

CHAIN L#2ED25J PID.01.03.00
@59 /* I wouldn't say no to a pint of ale, but... that's when we are done for to<DAYNIGHT> and when we'll know all we're going to do is sleep. */
==L#2ED25J @60 /* You know what they say: drink reponsibly, do sword-play after alcohol. We wouldn't want to end up with cut off finger or pointless cuts. */
END
IF~~THEN REPLY @61 /* Hah. True. */ EXTERN L#2ED25J PID.01.03.01
IF~~THEN REPLY @62 /* Come on, it wouldn't be that bad! */ EXTERN L#2ED25J PID.01.03.02

CHAIN L#2ED25J PID.01.03.01
@63 /* Perhaps when we stop, then. (smile) */
EXIT

CHAIN L#2ED25J PID.01.03.02
@64 /* Who knows? Better safe than sorry... and with a missing limb. */
EXIT

CHAIN L#2ED25J PID.02.01.00
@65 /* Hmm, I'm not sure I ever asked myself that question. I'd say I have two such colors: gold and black. */
==L#2ED25J @66 /* I don't know why, and no: not because gold is the color of, well, gold. I can feel it's something else. Perhaps... because it feel both strong and light? I don't know. */
EXIT

CHAIN L#2ED25J PID.02.02.00
@67 /* The one when Skie and I were little and we would play at the mansion. We felt our stories and games were real... and perhaps to us they were indeed real, on some leve. They made us laugh. Smile. They were exciting. */
==L#2ED25J @68 /* Feeling all this emotions today is just... different. Then, they were vivid and we could paint the world with them. */
EXIT

CHAIN L#2ED25J PID.02.03.00
@69 /* Pork chops, I suppose. Depending on the mood, you could make them with chanterelles or with herbs or smoked pepper. */
==L#2ED25J @70 /* ...and I'm hungry now. */
END
IF~~THEN REPLY @71 /* Sorry! */ EXTERN L#2ED25J PID.02.03.01
IF~~THEN REPLY @72 /* Well, you made me hungry too... */ EXTERN L#2ED25J PID.02.03.01
IF~~THEN REPLY @73 /* Hmm, that doesn't sound like my kind of dinner. Sorry. */ EXTERN L#2ED25J PID.02.03.01
IF~~THEN REPLY @74 /* I suppose I could try something like that... */ EXTERN L#2ED25J PID.02.03.01

CHAIN L#2ED25J PID.02.03.01
@75 /* Well, I'm not a very picky, when it comes to food. But there's something I really dislike: small portions of food. Really, when I eat, I want to eat, not just taste and remain with an half-empty stomach. */
EXIT

CHAIN L#2ED25J PID.03.01.00
@76 /* Maybe. But... I don't want to see all people like if they had the same feature Vully had. He might have been a two-faced man, but not everyone is. */
==L#2ED25J @77 /* I also tried to understand him, forgive him, but that's not as easy as I'd like. */
END
IF~~THEN REPLY @78 /* What he did is unforgivable. */ EXTERN L#2ED25J PID.03.01.01
IF~~THEN REPLY @79 /* Perhaps one day you'll be able to do that. */ EXTERN L#2ED25J PID.03.01.02

CHAIN L#2ED25J PID.03.01.01
@80 /* That's more or less what I feel about his doings. */
EXIT

CHAIN L#2ED25J PID.03.01.02
@81 /* Maybe. But I still need time. A lot of time. */
EXIT

CHAIN L#2ED25J PID.03.02.00
@82 /* Yes. I suppose it's how is with things you though you'd always have and suddenly, someone take is and... you feel strange. Humiliated. */
==L#2ED25J @83 /* But I'm better now. And I'd like it to stay that way. */
EXIT

CHAIN L#2ED25J PID.03.03.00
@84 /* No, not really. */
==L#2ED25J @85 /* Father worked with him for year. So did the Flaming Fist and Duke Liia. He would never make us doubt in his strength and loyalty. */
==L#2ED25J @86 /* Even during the work itself: we would joke. Play cards. */
==L#2ED25J @87 /* Then he became this other version of himself. He became Vully the Traitor. Someone I could no longer recognize. */
EXIT

CHAIN L#2ED25J PID.04.01.00
@88 /* I suppose I am. I like to feel strong and in control. Not in some... unhealthy way, but I like to feel I am responsible for how I look. And... heh, it's always good to feel that I can be considered handsome. */
==L#2ED25J @89 /* Some could say I'm vain... maybe a bit, but I don't think the look is the most important part. It's just to build the confidence, and a structure that will help to handle problems that may, at some point, pop out. */
==L#2ED25J @90 /* Perhaps if I were weaker, of worse condition, they... would just kill me on the spot. That's what they did to others that day. Except Vully, of course. */
END
IF~~THEN REPLY @91 /* Maybe. */ EXTERN L#2ED25J PID.04.01.01
IF~~THEN REPLY @92 /* Maybe they saw you as someone of greater... value. */ EXTERN L#2ED25J PID.04.01.01
IF~~THEN REPLY @93 /* I think it was just just a coincidence, all of it. */ EXTERN L#2ED25J PID.04.01.01
IF~~THEN REPLY @94 /* That could be it, yes. */ EXTERN L#2ED25J PID.04.01.01

CHAIN L#2ED25J PID.04.01.01
@95 /* Mhm. Well, anyway, thank you for your kind words. I suppose they were nice, after all. */
EXIT

CHAIN L#2ED25J PID.04.02.00
@96 /* It was like that of many boys, hah. A bit... hairy. */
==L#2ED25J @97 /* But I guess you mean how did it feel to change and become someone stronger and with greater interest in... many things, all that happening in the Silvershield estate. */
==L#2ED25J @98 /* It might have been a bit different when compared to growing up in a normal house and normal family. But I do not know other perspetives. I just knew the reality I grew up with and... I suppose it was fine. I know many are less fortunate and have to face poverty. I was spared most of that. */
EXIT

CHAIN L#2ED25J PID.04.03.00
@99 /* No. Well... it's not like... I never... hanged out with anyone. But it was more complicated considering I'm one of the Silvershields. But no, there's no such person that would await me. */
==L#2ED25J @100 /* Just family, few tutors, maybe two or three friends. But perhaps that's not "just", because it already feels like much. But I don't think that's what you meant. */
EXIT

CHAIN L#2ED25J PID.0H.00.00
@101 /* They got a bit longer than usually. I suppose I like them, though. I can keep it, but... I was thinking of cutting them. More than just a bit. Perhaps most of them, as then they may be a bit easier to handle during work and all the travelling. I could like it. */
==L#2ED25J @102 /* What do you think? Should I keep them as they are, or should I just get rid of them? What would look better on me? */
END
IF~~THEN REPLY @103 /* I think you should keep your hair as they are now. They suit you. */ EXTERN L#2ED25J PID.0H.00.01
IF~~THEN REPLY @104 /* I think you should get rid of them. You'll look good and you'll find working without them easier. You'll avoid hair falling into your eyes or having them wet with sweat and dirt. */ EXTERN L#2ED25J PID.0H.00.02
IF~~THEN REPLY @105 /* You should be the one to decide. I'll leave that to you. */ EXTERN L#2ED25J PID.0H.00.03

CHAIN L#2ED25J PID.0H.00.01
@106 /* You think so? Well, thank you for your honesty. They should stay that way, then. */
EXIT

CHAIN L#2ED25J PID.0H.00.02
@107 /* True. Fine. Let me just think another while about it, and... maybe I should indeed change them. */
DO ~SetGlobal("L#2EddardHairCut","GLOBAL",1)~ EXIT

CHAIN L#2ED25J PID.0H.00.03
@108 /* Perhaps I'll keep them as they are now, then. I think they look rather fine. */
EXIT

CHAIN L#2ED25J PID.05.01.00
@109 /* Hah! Well, there was this master of greatsword at Baldur's Gate at some point and it would be a grave mistake if we didn't use the opportunity. He taught me for a while and my father paide him well for it. */
EXIT

CHAIN L#2ED25J PID.05.02.00
@110 /* Dyplomacy, fencing, politics... my mother's friend told me few things about magic. I liked history or art, so I read a book on it. */
==L#2ED25J @111 /* I was taught few more things and, despite what I thought when I was younger, I do use these bits of knowledge I got. Not everything, no, but these bits helped me a couple of times. */
EXIT

CHAIN L#2ED25J PID.05.03.00
@112 /* Hmm Ghenaglash, perhaps. I mean... he was one of my teachers. Not for a long time, but he really help me to learn how to fight properly, without loosing cold blood. */
==L#2ED25J @113 /* His techniques helped me to beat some of the bandits, before I went on that mission that... didn't go too well. */
==L#2ED25J @114 /* Perhaps I'll be as good as he is... or was. I haven't heard from him for a while. */
END
IF~~THEN REPLY @115 /* I don't know him, but I know you can be even better. You have some great potential. Your strong grip and coordination. These things matter. */ EXTERN L#2ED25J PID.05.03.01
IF~~THEN REPLY @116 /* You need to be persistent and keep working out. And even then, there is a chance you just won't become someone you'd like to be. */ EXTERN L#2ED25J PID.05.03.02

CHAIN L#2ED25J PID.05.03.01
@117 /* Thank you. It's quite... encouraging of you! */
EXIT

CHAIN L#2ED25J PID.05.03.02
@118 /* Wow. You should teach how to motivate other people... Seriously. */
EXIT

CHAIN L#2ED25J PID.06.01.00
@119 /* I... think everyone has something he or she regret doing of feeling. That's what being a person is like. */
EXIT

CHAIN L#2ED25J PID.06.02.00
@120 /* I'd eat raisins from the cake, even from pieces that did not belong to me. */
==L#2ED25J @121 /* I remember how I took I took sme prom Eltan's plate. We would have this... scheme. He hated them and I loved them, so he would put them aside and when no one was looking, I'd take them from his plate. */
==L#2ED25J @122 /* We did that until I was fourteen. I know, perhaps it's not exactly what you expected, but... */
==L#2ED25J @123 /* But I don't do it anymore. People noticed it once and people started gossiping that Eltan is my real father. People would also tell these weird stories. */
EXIT

CHAIN L#2ED25J PID.06.03.00
@124 /* I like reading. When I'm confuse or need to focus, I'd do some pushups. */
==L#2ED25J @125 /* I like many things, but these two help me the most. */
EXIT

CHAIN L#2ED25J PID.SKIE.00.00
@126 /* Hah! She's changed. And yes, I am glad we're working together now. */
==L#2ED25J @127 /* She may act like a spoiled kid every now and then, but... her life wasn't awlays easy. She was expected to stay in the estate most of the time and while I was encouraged to train all kinds of things, her options were more limited. And... I know she may feel that at some point father was more interested in my education or in introducing me to some of his duties. */
==L#2ED25J @128 /* She might have felt somehow... rejected. Now, I want to show them I respect her and who she became. */
==L#2ED25J @129 /* And I love her. And how we would play every now and then when we were kids. */
END
IF~~THEN REPLY @130 /* So, Silvershield siblings stick together, hmm? */ EXTERN L#2ED25J PID.SKIE.00.01
IF~~THEN REPLY @131 /* Actually I think you are both spoiled, not just her. */ EXTERN L#2ED25J PID.SKIE.00.02

CHAIN L#2ED25J PID.SKIE.00.01
@132 /* It wasn't like that all the time, but I want it to be like this from now on so... yes. I'd rather we stick together. */
EXIT

CHAIN L#2ED25J PID.SKIE.00.02
@133 /* Huh, honest to the bone? Believe what you want, <CHARNAME>. I know we were more lucky than most, but it doesn't mean we're somehow broken, and what you said, sounds as if that's what you though. */
EXIT

CHAIN L#2ED25J PID.RR.01.00
@134 /* I like it how we're learning thing about eachother. Let's see where it's going to take us. */
EXIT

CHAIN L#2ED25J PID.RR.02.00
@135 /* I care about you and... what we became. A sort of an... item. I am happy to support you and I'm feeling you're supporting me too. */
==L#2ED25J @136 /* Who would have thought that you wouldn't only free me, but also make me that happy... */
EXIT

CHAIN L#2ED25J PID.RR.03.00
@137 /* Hmm? Sorry to put it that bluntly, but... I'm not sure if there's much to talk about. */
EXIT

CHAIN L#2ED25J PID.R1.01.00
@138 /* Heh, thank you. I suppose that's a good sign. Also considering that... I too like the way you look, <CHARNAME>. */
EXIT

CHAIN L#2ED25J PID.R1.02.00
@139 /* Really? (Smile) */
==L#2ED25J @140 /* And what exactly makes me handsome? */
END
IF~~THEN REPLY @141 /* Oh, stop fishing for compliments! */ EXTERN L#2ED25J PID.R1.02.01
IF~~THEN REPLY @142 /* The way you look. Your shape, strong arms, fine legs... */ EXTERN L#2ED25J PID.R1.02.02
IF~~THEN REPLY @143 /* Your heart and soul. You certainly have that... warmth I needed. */ EXTERN L#2ED25J PID.R1.02.02
IF~~THEN REPLY @144 /* Your mind. I like it and... I'm glad you're around. */ EXTERN L#2ED25J PID.R1.02.02
IF~~THEN REPLY @145 /* Many things. You're... a complex being, I think you're handsome with all your features and limitations. */ EXTERN L#2ED25J PID.R1.02.02
IF~~THEN REPLY @146 /* Your right elbow! It's just PERFECTLY SPLENDID. */ EXTERN L#2ED25J PID.R1.02.03

CHAIN L#2ED25J PID.R1.02.01
@147 /* Fine, fine... they just feel so good when said by you, hehe. */
EXIT

CHAIN L#2ED25J PID.R1.02.02
@148 /* Mmm. Well, these words certainly feel good. Thank you, <CHARNAME>. Jokes aside, I think you're a wonderful person yourself. Physcially and mentally. */
EXIT

CHAIN L#2ED25J PID.R1.02.03
@149 /* Hah! Yes, I'm SO proud of my right elbow. It's like piece of ART! */
==L#2ED25J @150 /* But... jokes aside, I think you're a good looking and interesting <PRO_MANWOMAN> yourself. */
EXIT

CHAIN L#2ED25J PID.R1.03.00
@151 /* Well, you certainly know how to give a man a compliment. Heh. */
EXIT

CHAIN L#2ED25J PID.R2.01.00
@152 /* It depends on specific person. But I like when someone is active and... it looks like you're doing much yourself. You rarely sit back and wait. */
==L#2ED25J @153 /* But I also like when someone is open to all kind of experiences and who's far from evil and... I don't know what else I can tell you. However, if you're just making a list and comparing it with yourself, know that you have nothing to be worried about. */
==L#2ED25J @154 /* Come! We should be going! */
EXIT

CHAIN L#2ED25J PID.R2.02.00
@155 /* Hmm, thank you. It's nice of you and... I like it when someone touches my beard, so... erm. Heh... You know what, perhaps let's just move on. I think I said it too loud, I just couldn't control myself. (wink) */
EXIT

CHAIN L#2ED25J PID.R2.03.00
@156 /* Well, well! It looks like I now know what you like to look at. */
END
IF~~THEN REPLY @157 /* Hmm, guilty. Yep. */ EXTERN L#2ED25J PID.R2.03.01
IF~~THEN REPLY @158 /* You can't blame me for liking to look at good looking things. */ EXTERN L#2ED25J PID.R2.03.01
IF~~THEN REPLY @159 /* I just like the person that owns that chest. */ EXTERN L#2ED25J PID.R2.03.02
IF~~THEN REPLY @160 /* Uhm, nevermind. */ EXTERN L#2ED25J PID.R2.03.03

CHAIN L#2ED25J PID.R2.03.01
@161 /* It's good that you're honest. Heh. Perhaps I'll just let you watch next time I work out, if you like that kind of view. */
EXIT

CHAIN L#2ED25J PID.R2.03.02
@162 /* Thank you. (smiles) I'm quite happy to hear that. */
EXIT

CHAIN L#2ED25J PID.R2.03.03
@163 /* Heh, sure. Let's get moving. */
EXIT

CHAIN L#2ED25J PID.R3.01.00
@164 /* Of course you do. */
==L#2ED25J @165 /* Not just now, but... In general. Hope you don't mind me saying that. (winks) */
EXIT

CHAIN L#2ED25J PID.R3.02.00
@166 /* I... suppose it is. (smiles shyly) But the one <PRO_RACE> I'm looking at is quite unique and I'm happy it's no other <PRO_RACE>, but that specific person. */
==L#2ED25J @167 /* I'm glad that... you are... you. */
END
IF~~THEN REPLY @168 /* (Smile at him) */ EXTERN L#2ED25J PID.R3.02.01
IF~~THEN REPLY @169 /* Hah, I'm glad I'm not someone else, too! */ EXTERN L#2ED25J PID.R3.02.02
IF~~THEN REPLY @170 /* I'm glad you think I'm good enough... */ EXTERN L#2ED25J PID.R3.02.03

CHAIN L#2ED25J PID.R3.02.01
@171 /* (He smiles back and loos into your eyes before the two of you starts to walk again.) */
EXIT

CHAIN L#2ED25J PID.R3.02.02
@172 /* Good! So we agree on that! (smiles) */
EXIT

CHAIN L#2ED25J PID.R3.02.03
@173 /* You are way more than "good enough". You are <CHARNAME>. The good person that's just... full. Complete. Beautiful. Someone I honestly like. */
EXIT

CHAIN L#2ED25J PID.R3.03.00
@174 /* Hmm... I suppose both. But the most importnt thing is who does this body and mind belong to. (smiles playfully) */
EXIT

CHAIN L#2ED25J PID.R4.01.00
@175 /* I suppose it's something I know. Let's say I'm looking at you and... I'm just feeling it. The way you smile and talk and walk. I just know I want to be around you. */
==L#2ED25J @176 /* And... as we can see, I'm standing right here, next to you, so... that may mean something. (winks) */
EXIT

CHAIN L#2ED25J PID.R4.02.00
@177 /* I suppose it depends... But please, don't do that to me. It's damn hard to put it back together. (Wink) And it would be a pity to end something that makes me feel so... alive. */
==L#2ED25J @178 /* I hope you're feeling the same way. */
EXIT

CHAIN L#2ED25J PID.R5.01.00
@179 /* Mmm, I'm feeling the same way about you, actually. */
END
IF~~THEN REPLY @180 /* So it's mutual! */ EXTERN L#2ED25J PID.R5.01.01
IF~~THEN REPLY @181 /* Good to know. */ EXTERN L#2ED25J PID.R5.01.02
IF~~THEN REPLY @182 /* Safe? With me? I'm a walking chaos. */ EXTERN L#2ED25J PID.R5.01.03

CHAIN L#2ED25J PID.R5.01.01
@183 /* Indeed, it is. */
EXIT

CHAIN L#2ED25J PID.R5.01.02
@184 /* Heh. So it's clear now. */
EXIT

CHAIN L#2ED25J PID.R5.01.03
@185 /* And yet that's how I feel! It seems we have a paradox here! (looks at you playfully and starts walking) */
EXIT

CHAIN L#2ED25J PID.R5.02.00
@186 /* You think I'm both these things? Well... thank you. It just feels... right. */
EXIT

CHAIN L#2ED25J PID.R5.03.00
@187 /* And I like what kind of <PRO_MANWOMAN> you are, <CHARNAME>! And I'm being really honest right now. */
EXIT

CHAIN L#2ED25J PID.RR1.01.00
@188 /* What would I say, hmm... I suppose I'd ask why are you still standing there, rather than few step closer. */
==L#2ED25J @189 /* (He comes closer and kisses you. The kiss is slow at first, but after the first two seconds, you can feel how this situation gives him a breath of life, providing him both energy and optimism.) */
==L#2ED25J @190 /* Mmm, these are the lips I'd like to always remember. But... I wouldn't mind if you reminded me how they taste every now and then. (winks) */
EXIT

CHAIN L#2ED25J PID.RR1.02.00
@191 /* Why would I mind? Come, <CHARNAME>. */
END
IF~~THEN REPLY @192 /* (Come closer to him) */ EXTERN L#2ED25J PID.RR1.02.01
IF~~THEN REPLY @193 /* Erm, I'm asking in general. I think we should move on now. */ EXTERN L#2ED25J PID.RR1.02.02

CHAIN L#2ED25J PID.RR1.02.01
@194 /* (He embraces you, putting his hands on your waist. He's so close, you can feel warmth of his body. Then he kisses you, with passion. With being so close, you can feel how the kiss arouses him.) */
==L#2ED25J @195 /* Now, well... we may need to walk, so... I could cool down a bit. You really know how to give me that... rush. */
EXIT

CHAIN L#2ED25J PID.RR1.02.02
@196 /* Ah, right. Well, don't be afraid to come to me once you need to talk or... just be close. */
EXIT

CHAIN L#2ED25J PID.RR1.03.00
@197 /* Heh, good! Everything's according to the plan, then! */
==L#2ED25J @198 /* But... I must say yours are more or less just as tempting. */
EXIT

CHAIN L#2ED25J PID.RR2.01.00
@199 /* Well, that's quite... sexy. I mean, I don't want to sound primitive, it's just... Heh, the idea of knowing you can feel me on yourself is somehow, to put it bluntly, like a turn on. */
==L#2ED25J @200 /* Gods, perhaps I should have bit my tongue and... perhaps that's not something I should speak plainly of. */
END
IF~~THEN REPLY @201 /* It's fine. I'm the one who started. */ EXTERN L#2ED25J PID.RR2.01.01
IF~~THEN REPLY @202 /* Speaking plainly of such things is completely fine. And it's not like we just kissed for the first time, it's been a while. */ EXTERN L#2ED25J PID.RR2.01.01
IF~~THEN REPLY @203 /* Uhm, indeed, perhaps that's a bit too much. */ EXTERN L#2ED25J PID.RR2.01.02

CHAIN L#2ED25J PID.RR2.01.01
@204 /* Heh. It's good to be with someone honest and... open minded. */
EXIT

CHAIN L#2ED25J PID.RR2.01.02
@205 /* Of course. I'm sorry. */
EXIT

CHAIN L#2ED25J PID.RR2.02.00
@206 /* Some people say it's how you know two peaople match eachother. That the way they are, smell, taste is somehow... intriguing, not repelling. */
==L#2ED25J @207 /* So that's how I'm going to treat it. As a good sign. That we do not get fed up with eachother. And that it's all working well. */
EXIT

CHAIN L#2ED25J PID.RRY.01.00
@208 /* Of course not. I'd need to be really stupid to not allow that. And... I'll gladly walk with you, <CHARNAME>. (smile) */
EXIT

CHAIN L#2ED25J PID.RRY.02.00
@209 /* Mmm, thank you. Well, I do not mind you holding it. I... I've been working out for some time, so... perhaps you'll like them. */
==L#2ED25J @210 /* It would be a great reward for all the hard work, if you did. (smile) */
EXIT

CHAIN L#2ED25J PID.RR3.01.00
@211 /* Erm, no. Not really! So... I'm good? */
END
IF~~THEN REPLY @212 /* Of course you are! */ EXTERN L#2ED25J PID.RR3.01.01
IF~~THEN REPLY @213 /* Well, you're surely better than my previous lover. */ EXTERN L#2ED25J PID.RR3.01.02
IF~~THEN REPLY @214 /* Quite good. But there's always some room for improvement! We... could learn thing together. Or try new things. */ EXTERN L#2ED25J PID.RR3.01.03
IF~~THEN REPLY @215 /* I was just joking. */ EXTERN L#2ED25J PID.RR3.01.04

CHAIN L#2ED25J PID.RR3.01.01
@216 /* Mmm. Well, heh. I didn't know such compliments make you feel that good. */
==L#2ED25J @217 /* Perhaps it's also because of who's saying it! */
EXIT

CHAIN L#2ED25J PID.RR3.01.02
@218 /* Oh. Right. That's... good? I guess it is. */
EXIT

CHAIN L#2ED25J PID.RR3.01.03
@219 /* Mmm. I suppose I'd like that! Let me know once you know what you'd like to try. */
EXIT

CHAIN L#2ED25J PID.RR3.01.04
@220 /* Oh... */
EXIT

CHAIN L#2ED25J PID.RR3.02.00
@221 /* Well, I'm glad. I wouldn't want to... disappoint you, in some way. */
END
IF~~THEN REPLY @222 /* It's not about being disappointed or not. It's about feeling fine and safe together. */ EXTERN L#2ED25J PID.RR3.02.01
IF~~THEN REPLY @223 /* I'm no disappointed. As long as it is the two of us who's doing it, enjoying eachother. */ EXTERN L#2ED25J PID.RR3.02.01
IF~~THEN REPLY @224 /* Come here. (kiss him) */ EXTERN L#2ED25J PID.RR3.02.02

CHAIN L#2ED25J PID.RR3.02.01
@225 /* I'm quite happy you see it that way. */
EXIT

CHAIN L#2ED25J PID.RR3.02.02
@226 /* Mmm. Gods, you're so... addictive! (smiles) */ 
EXIT

CHAIN L#2ED25J PID.RR4.01.00
@227 /* I guess I'm in. I always try to be open-minded. */
EXIT

CHAIN L#2ED25J PID.RR4.02.00
@228 /* So... you want me to stip for me. */
END
IF~~THEN REPLY @229 /* Kinda. */ EXTERN L#2ED25J PID.RR4.02.01
IF~~THEN REPLY @230 /* I think it would be nice, am I wrong? */ EXTERN L#2ED25J PID.RR4.02.01
IF~~THEN REPLY @231 /* No, I mean... nevermind. Sorry. */ EXTERN L#2ED25J PID.RR4.02.02

CHAIN L#2ED25J PID.RR4.02.01
@232 /* Hmm, that may be something we can organize. (wink) But I may need some help to take off some final piece of clothing. I hope that's something you could help with. (smiles playfully) */
EXIT

CHAIN L#2ED25J PID.RR4.02.02
@233 /* No, no, it's fine! */
EXTERN L#2ED25J PID.RR4.02.01

CHAIN L#2ED25J PID.RR5.01.00
@234 /* I, with pure confidence, can return these same words to you, <CHARNAME>. */
EXIT

CHAIN L#2ED25J PID.RR5.02.00
@235 /* I look at you the way I feel, my love. */
EXIT

CHAIN L#2ED25J PID.ROMKILL.00.00
@236 /* Just... just like that? I mean... of course. It's just... so unexpected. */
==L#2ED25J @237 /* I'll do as you want, though. */
EXIT

CHAIN L#2ED25J PID.SUL.00.00
@238 /* I think we did a great thing. And we should keep helping people like that. */
==L#2ED25J @239 /* I believe deeds like that truly matter. */
EXIT

CHAIN L#2ED25J PID.IRE.00.00
@240 /* I wish that ended our problems, but... it looks like our work never ends. Heh. */
==L#2ED25J @241 /* But I also think we should continue what we're doing best: saving Toril. And keeping boredom at bay. */
EXIT

CHAIN L#2ED25J PID.BS.03.00
@242 /* Of course! Master Barkshield is, from what I have noticed, a skilled pup. And I think he can learn much from us and... we're his chance to survive and growing up to be an even more skilled dog. */
==L#2ED25J @243 /* So yes, I'm happy I took him with us. */
EXIT

CHAIN L#2ED25J PID.FIX.00.00
@244 /* Let's fix that, then. */
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("L#2EDFIX")~ EXIT

///////////////////////////////////////////////
//PORTRAIT

CHAIN IF WEIGHT #-2 ~Global("L#2EddardHairCut","GLOBAL",2)~ THEN L#2ED25J PORTRAITCHANGE.00
@245 /* Just as we talked, I cut my hair. It indeed feels more convenient. Perhaps a bit cold, but... Not bad, I guess. What do you think? */
END
IF~~THEN REPLY @246 /* I like it. You should keep that haircut. */ EXTERN L#2ED25J PORTRAITCHANGE.01
IF~~THEN REPLY @247 /* You know what? I think your old haircut was somehow better. */ EXTERN L#2ED25J PORTRAITCHANGE.02

CHAIN L#2ED25J PORTRAITCHANGE.01
@248 /* You think so? Heh. Well, I should trust you then! */
DO ~SetGlobal("L#2EddardHairCut","GLOBAL",3)~ EXIT

CHAIN L#2ED25J PORTRAITCHANGE.02
@249 /* You think so? Well... it's going to take a while for them to grow back, but... at least I don't need to wonder how would I look in short hair. */
DO ~SetGlobal("L#2EddardHairCut","GLOBAL",4) SetGlobalTimer("L#2EddardGrowBack","GLOBAL",THIRTY_DAYS)~ EXIT

//PORTRAIT 2

CHAIN IF WEIGHT #-2 ~Global("L#2EddardHairCut","GLOBAL",5)~ THEN L#2ED25J PORTRAITCHANGE.20
@250 /* It took a while, but my hair is back to what it looked like before I cut them. */
DO ~SetGlobal("L#2EddardHairCut","GLOBAL",6)~ EXIT