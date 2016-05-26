BEGIN ToGorion
BEGIN Sendai8

CHAIN
IF~Global("ToBhaalhunt","Global",1)~THEN ToGorion Meetbridge1
~Ho there, wanderers. Stay thy course a moment to indulge a follow traveller...~
DO~SetGlobal("ToBhaalhunt","Global",2)~
END
++~Gorion!!??~ + Meetbridge2
++~G...a harper...~ + Meetbridge2

CHAIN
IF~~THEN ToGorion Meetbridge2
~Indeed, even if I have to confess I am irritated how you should come to this knowledge.~
==ToPellig~Honestly, our meeting here may not be sheer coincidence.~
==ToAdon~Your travel and ours may have similar reason and destination.~
==ToGorion~Interesting. And what may any of those be?~
END
++~We are in search of a harper at this moment.~EXTERN ToCyric Meetbridge3

CHAIN
IF~~THEN ToCyric Meetbridge3
~Man, we helped one of your *brothers* or whatcha-call-them out of a messy mess recently, hihi, but the bloody fool is about to get himself and his beautiful daughter into an even bigger mess right now.~
==ToGorion~Can someone explain to me what this man is talking about?~
==ToPellig~Glarasteer and Khalindra of Innarlith...~
==ToGorion~I see - you are those who rescued them in Mornbryn's Shield. You must be Lady Midnight, who invited them to stay with Elminster.~
END
++~He is my son, mine and Cyric's.~EXTERN ToGorion Meetbridge4

CHAIN
IF~~THEN ToGorion Meetbridge4
~Yes, Cyric...it may explain the tension between father and son...Anyway, it is good we met today. It may save you the effort to travel to Athkatla.~
=~Yes, yes, explanation follows. Elminster has been invited to join our circle...~
==ToCyric~A harper? This damned fool misses no chance to prove his idiocy!~
==CVSan25J~You could share his mother's pride of such an invitation, Cyric, really. Please continue, Gorion.~
==ToGorion~Elminster left your house and has moved to Waterdeep while you followed your trail hunting Bane. It looks like the Bhaalists are specifically after him for some reason.~
==CVSan25J~The reason are us, his parents - and the fact that Bane is dead with our help while Bhaal himself is still on the run.~
==ToGorion~The Bhaalists beleaguer your home. They want you, your son, Glarasteer and Khalindra.~
==ToCyric~My wife thinks that Bhaal has a contingency plan. He knows that he will sooner or later fall by our hands.~
==ToGorion~I heard rumours of that Alaundo prophesy...~
==CVSan25J~(Mumbles) It is true...he still needs to inseminate Khalindra. (But...Sandrah is not even born yet...?)~
END
++~Where are Khalindra and her father?~ + Meetbridge5
++~Elminster seems to be save under your harper's protection, how about the others?~ + Meetbridge5

CHAIN
IF~~THEN ToGorion Meetbridge5
~Everybody is now at a relatively secluded and save house your son purchased in Waterdeep. Elminster has grown fast into a man to be counted.~
==ToCyric~Amongst harpers, hihi, as if that means something.~
==ToGorion~Ehem, more than harpers have found him interesting...~
==ToPellig~A certain young lady?~
==ToGorion~(Sighs) I am afraid that is true.~
==ToPellig~Poor Gorion.~
END
++~It appears to me there is nothing we can do for them at this moment. We should concentrate on Bhaal and the missing tablet.~ + Meetbridge6
++~Does harper intelligence have information about Bhaal and possible hideouts?~+ Meetbridge6

CHAIN
IF~~THEN ToGorion Meetbridge6
~The Bhaalists under the priestess Nyalee have recently overrun a temple of Mystra in the Forest of Mir south of Saradush taking advantage of the Lady of Mysteries' current absence.~
END
++~It would not astonish me if they used fire giants to accomplish it. We should go there.~DO ~AddJournalEntry(@051,QUEST)~EXIT
++~A good place to raise fire giants far away from prying eyes. We should go there.~DO ~AddJournalEntry(@051,QUEST)~EXIT

CHAIN
IF WEIGHT #-5~Global("Tomonst","ar5202",1)~THEN HGNya01 MeetTot
~Oh, yes! Nyalee has been waiting for you, and she knows why you come, she does!~
DO~SetGlobal("Tomonst","ar5202",2) SetGlobal("TalkedToNyalee","GLOBAL",1)~
==ToPellig~You know nothing, old hag, but you will live on in this darkness for another lifetime until your death will mercifully set you free. It will not be us to show you this mercy today.~
==HGNya01~A great cleric of Bhaal is Nyalee! But soon great Bhaal will be dead, and Nyalee will be forced to turn to the older arts to survive until a new Lord of Murder will be. ~
=~MY Yaga-Shura will raise to be the new Lord. Nyalee did see him for the spawn-child he was and stole him from the crib! Raise him here in this temple as her own she will! ~
==CVSan25J~Bhaal spawned this child with a fire giant. She will raise it as her own son.~
==Yaga02~No hurt mama!~
==ToAdon~She is mad beyond any help and still she sees with great clarity.~
==HGNya01~Nyalee know all the old tricks. Witch of the Glade, they calls me, for many good reasons. Hee hee!~
==ToLini~Do you want to leave Mystra's temple to the black cult, Midnight?~
==CVSan25J~It serves its purpose, my friend. Mystra herself would not want it any other way.~
==TOCyric~There's a lot of madness in this place today, hihi, but it's not me, not at all.~
END
++~Cyric, you are right. This is madness and we will stop it today. No prophesy, no contingeny, no triumph for Bhaal.~+MeetTot2
++~Cyric, you are right. This is madness but intervening today would produce endless chaos. There must be anti-climax before there can be catharsis.~+MeetTot3

CHAIN
IF~~THEN HGNya01 MeetTot2
~ Hee hee! See your own madness! As you attack me you kill your own future.~
DO~Enemy()ActionOverride("Yagaspir",Enemy()) ActionOverride("CVSandr",Attack("HGNya01"))~EXIT

CHAIN
IF~~THEN HGNya01 MeetTot3
~ Hee hee! Nyalee will bring Yaga-Shura son to safety now.~ DO~ActionOverride("Yagaspir",EscapeAreaObject("Exitwmp")) EscapeAreaObject("Exitwmp")~EXIT

CHAIN
IF~Global("Tomonst","ar5202",4)~ THEN TOCyric Sparenya1
~Your decisions become more and more confusing, my dear. What do you know that the rest of us does not know?~
DO~SetGlobal("Tomonst","ar5202",5)~
==CVSan25J~Cyric, we must be very careful not to intervene with things that have a long term effect.~
==TOCyric~Like the not-killing of Bhaal's spawns? You spared the dragon and now the fire giant, hihi. There is a logic in it but no purpose.~
==ToPellig~These spawns must live to set something into motion.~
==ToLini~Is it this prophesy that Bhaal gave the wise Alaundo to spread?~
END
++~It may sound strange, but yes it is. The seed must grow - not to create a new God of murder but to enable Mystra to return.~ + Sparenya2
++~We cannot prevent a certain future to evolve or we will risk that there may be no future at all.~ + Sparenya2

CHAIN
IF~~THEN TOCyric Sparenya2
~Listen, my girl, listen very carefully.~
=~Bhaal will die and he will stay dead. He will die because WE kill him. And he will stay dead because there will be a new god of murder and a new Mystra, yes.~
=~And if you say that keeping those spawns alive will help us, so be it. Maybe the new god of murder will later need their essence that Bhaal gave them, hihi.~
END
++~(You nod silently) You understood just too well, Cyric.~ EXIT
++~All those called mad seem to have a day of great clarity today.~EXIT

CHAIN
IF~Global("Tomonst","ar5202",6) ~THEN ToPellig ToBlahand
~We now can either search another Bhaal temple for our slayer or visit Elminster's new home at Waterdeep.~
DO~SetGlobal("Tomonst","ar5202",7) SetGlobal("ToBhaalhunt","Global",3)~
==TODrizzt IF~InParty("Todrizzt")~THEN~ I would prefer to be active and search for Bhaal rather than to wait for him to appear in search of Khalindra. Do we know of another place he may have gone to?~
==Tolini IF~!InParty("Todrizzt")~THEN~ I would prefer to be active and search for Bhaal rather than to wait for him to appear in search of Khalindra. Do we know of another place he may have gone to?~
==ToAdon~We can assume he will be in the western regions of Faerun. There is a hidden temple of the Black Hand in the Wood of Sharp Teeth.~
==ToPellig~It makes sense. Our friend Cyric may not be the only one who lusts for the portefolio of a slain god.~
==ToCyric~I always say it, Pelli-babe, you are a genius. That bloody Bhaal may try to grab Bane's lost herd. We need to prevent that - this is MY domain soon!~
END
++~We will certainly not fuel Cyric's mad ambitions. We will go to Waterdeep.~EXIT
++~The Bane temple is a logical option. Regardless of Cyric's agenda - we go there to find Bhaal not to feed a growing madness of the man I know longer know.~EXIT

CHAIN
IF~Global("Tosendai","ar60pb",2)~ THEN ToPellig ToBlahand2
~Followers of Bhaal and drow, what does that mean?~
DO~SetGlobal("Tosendai","ar60pb",3)~
==TODrizzt IF~InParty("Todrizzt")~THEN~ With Lolth ruling the Underdark, my kin have no need of an additional god of murder.~
==Tolini IF~!InParty("Todrizzt")~THEN~ With Lolth ruling the Underdark, my kin have no need of an additional god of murder.~
==Sendai8~Mother, we have additional visitors.~
==UDDrow36~Is that the privacy for our meeting you promised, Aschmaan? I sense betrayal.~
==NTAshma~They must have overrun the guards, they do not belong to our fellowship, Handmaiden.~
==Sendai8~Mother, let me show you what I have learned!~
==UDDrow36~I appreciate your enthusiasm, girl, but Bhaal has greater plans for you and so have I. We cannot risk your life today - hush.~
==NTAshma~*Urgumzen narl.* ~EXIT