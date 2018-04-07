BEGIN ToGorion
BEGIN Sendai8
BEGIN ToIsmad
BEGIN ToHomer

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
++~Cyric, you are right. This is madness and we will stop it today. No prophesy, no contingency, no triumph for Bhaal.~+MeetTot2
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
==ToPellig~It makes sense. Our friend Cyric may not be the only one who lusts for the portfolio of a slain god.~
==ToCyric~I always say it, Pelli-darling, you are a genius. That bloody Bhaal may try to grab Bane's lost herd. We need to prevent that - this is MY domain soon!~
END
++~We will certainly not fuel Cyric's mad ambitions. We will go to Waterdeep.~EXIT
++~The Bane temple is a logical option. Regardless of Cyric's agenda - we go there to find Bhaal not to feed a growing madness of the man I no longer know.~EXIT

CHAIN
IF~Global("Tosendai","ar60pb",2)~ THEN ToPellig ToBlahand2
~Followers of Bhaal and drow, what does that mean?~
DO~SetGlobal("Tosendai","ar60pb",3)~
==TODrizzt IF~InParty("Todrizzt")~THEN~ With Lolth ruling the Underdark, my kin should have no need for an additional god of murder.~
==Tolini IF~!InParty("Todrizzt")~THEN~ With Lolth ruling the Underdark, my kin should have no need for an additional god of murder.~
==Sendai8~Mother, we have unexpected visitors.~
==UDDrow36~Is that the privacy for our meeting you promised, Aschmaan? I sense betrayal.~
==NTAshma~They must have overrun the guards, they do not belong to our fellowship, Handmaiden.~
==Sendai8~Mother, let me show you what I have learned!~
==UDDrow36~I appreciate your enthusiasm, girl, but Bhaal has greater plans for you and so have I. We cannot risk your life today - hush.~
==NTAshma~*Urgumzen narl.* ~EXIT

CHAIN
IF~Global("Tosendai","ar60pb",12)~THEN Tolini ToBlahand3
~Bhaal spawns his progeny throughout all the races of Faerun it seems. He wants to make sure enough of his essence is available for his return.~
DO~SetGlobal("Tosendai","ar60pb",13) SetGlobal("ToBhaalhunt","Global",4)~
==ToCyric~We find his seed everywhere but we need the guy himself, damn.~
=~And he needs us, hihi! What is his wonderful contingency plan good for if we don't do him the favour to kill him first.~
==ToAdon~But Midnight is very strict that we keep his spawns alive - for whatever reason.~
==CVSan25J~Not all of them will become what their *father* wants them to be, which is fuel for his return. They have a godly spark in them that may be forged into something powerful. And once the Time of Troubles is ended, such power may be required to rebuild what was destroyed.~
==ToCyric~Don't be afraid, the new god of murder to follow slain Bhaal will take care of his predecessor's heritage, hihi.~
==ToPellig~We will see. First things first. Where is Bhaal?~
END
++~Harper intelligence may have traced him. The ones to know will be found in Waterdeep by now.~ EXIT
++~We should follow Gorion's trail to our son's house in Waterdeep.~EXIT

CHAIN
IF~Global("TotPeople","CVDre2",2)~THEN ToPellig ToThay2
~Gorion, Glarasteer, greetings again...~
DO~SetGlobal("TotPeople","CVDre2",3) SetGlobal("ToBhaalhunt","Global",5)~
==CVSan25J~...and of course Landrel. ~
==Narqmes~Mylady Midnight, I was warned about your knowledge of things yet untold. Yes, I am Landrel, majordomo of your son Elminster.~
==ToKapapa~Landrel, you may as well confess to our visitors that you are more like Elminster's counsellor and co-harper, no need for your usual disguise.~
==ToGorion~Your visit here today is just in time. You have not found Bhaal yet nor has he found this refuge.~
==TOPellig~A perfect summary of the situation.~
==ToCyric~We found his trail of the spawns he breeds with all races to preserve his essence once we tracked him down and eliminated him, but we have not seen the bastard in person.~
==ToGorion~It looks like we were mistaken. Khalindra does not appear to be his target.~
==ToKapapa~At least not at this moment, Gorion. I would not declare her and Elminster save yet.~
==ToAdon~Harpers have a wide net to catch information. What do you know?~
==NarQMes~Bhaal is looking for some artefact that opens a portal to Avernus.~
==ToPellig~He thinks he can escape to the Nine Hells?~
==TOLini~Where would such a portal exist?~
==ToGorion~It is well known that a sealed portal exists at Dragonspear Castle in the north. The problem is to unseal it, even for one like Bhaal in his mortal form, hence the need for the artefact.~ DO~EscapeAreaObject("WDTown")~
==ToKapapa~He has gone to the east, far east. The Thaymount, to be exact.~ DO~EscapeAreaObject("WDTown")~
==CVSan25J~Probably the old Citadel that is rumoured to be there since the time of Netheril's fall.~
==NarQMes~My lady, before you start such a journey, you should talk to Elminster. He is in the garden with his friends.~EXIT

CHAIN
IF~Global("TotPeople","CVDre1",1)~THEN Sanwinth Wintr1
~(You recognize the harper and future innkeeper of Candlekeep.)~
DO~SetGlobal("TotPeople","CVDre1",2)~
==ToIsmad~...can be really charming, Winthrop.~
==Sanwinth~Few people ever said that about me, it must be your presence, Ismanelda.~
==ToIsmad~Your face...(grins)...the colour...(grins brighter)...you try to match my clothes, dontcha?~
==Sanwinth~You mean I'm as pink as all the things you wear?~
==ToIsmad~Don't disappoint me now and say that pink isn't the bestest colour of them all.~
==Sanwinth~You would look magnificent in just any colour, Ismanelda...~
==ToIsmad~Gosh, of course NOT, it's gotta be pink...heya, you there.~
=~Eh, of course excuse me, my lady, you must be - eh - the lady of the house so to say, right? Master Elminster's mother.~
==CVSan25J~Ismanelda...Imoen's mother...~
==Sanwinth~You...you are mother already, my dear...??~
==ToIsmad~Pfff, no, of course not, Winnie! That's Elminster's mother, she - eh - she knows such things, like things that happen in the future, ya know...they say she reads people's minds and stuff.~
==Sanwinth~You mean, if you would have a daughter one day, you would call her Imoen?~
==ToIsmad~Yeah and I never did ever tell anybody about it before - still she knows. And now you know it, too.~
==Sanwinth~It gives me some responsibility, doesn't it?~
==ToIsmad~Come, Winnie - excuse us, lady, we've got some...household stuff to do...~ DO~EscapeAreaObject("toTemple")~
==Sanwinth~Yes, nice to have met you...~DO~EscapeAreaObject("toTemple")~EXIT

CHAIN
IF~Global("TotPeople","CVDre1",2) ~THEN Sankaba Pregn1
~There come your parents, Elminster.~
DO~SetGlobal("TotPeople","CVDre1",3)~
==ToElmi~Khalindra, of course thou already met them in Mornbryn's Shield. Still...mother, father, I want to introduce thee again to Khalindra of Innarlith, the future mistress of my little household I will establish here in Waterdeep.~
==ToCyric~You want to marry that girl, hihi? Son, I'm about to forgive you all your weirdness, looks like you finally come to your senses.~
==CVSan25J~Our blessings, Elminster, Khalindra, to you and your daughter.~
==Sankaba~You know about that already, Midnight? Yes, it is true - Elminster, I brought you out here to tell you about it today. Your mother...how do you know it will be a daughter?~
END
++~It was just wishful thinking, probably...anyway a grandson will be just as welcome.~EXTERN ToElmi Pregn2
++~Since Mystra's death I seem to know such things, I cannot explain it.~ EXTERN ToElmi Pregn2

CHAIN
IF~~THEN ToElmi Pregn2
~We hath agreed that the father wouldst name the son while the mother giveth the girl the name.~
==CVSan25J~(Whispers, so only Khalindra can hear) Sandrah.~
==Sankaba~(Nods) I will not tell until a girl is really born and I will not ask Elminster about his choice before not a son is here.~
==ToElmi~So be it.~
==ToCyric~I'm not feeling old enough yet to be grandfather...hihi, guess nobody will ask me for approval anyway...~DO~StartCutSceneMode() Wait(2) FadeToColor([20.0],0) Wait(2) TextScreen("TotKhal") Wait(2) StartCutScene("CVcut403") ~EXIT

CHAIN
IF ~Global("TotThay","Global",1)~ THEN TOCyric TotThay1
~I like Thay, honestly, hihi, so depressing and ugly and dangerous...~
DO~SetGlobal("TotThay","Global",2)~
==ToPellig~A society built on slavery and expansion wars, trading drugs and oppressing others. Cyric, if it would not exist already, either you or the drow would invent it.~
==ToLini~You err, Pelligram, the Underdark is at least beautiful by itself despite some of its inhabitants while Thay is not.~
==ToAdon~We are not here to enjoy the sightseeing.~
==CVSan25J~Last time, in Tantras, Bhaal was in league with Mask's followers. There is a Mask temple around here, or at least a thieves' league.~
==ToCyric~We should seek out either that or the nearest inn. Standing in the street makes me nervous.~
END
++~Let us head to Sharkey's inn over there.~EXIT
++~Let us go to the Mask temple.~EXIT
++~Let us visit the library for some insight.~EXIT

CHAIN
IF~Global("TotPeople","RTF510",1) GlobalLT("TotThay","Global",4)~ THEN RTMask TotThay2
~Whom do we have here, intruders, friends, fools, or a combination of such?~
DO~SetGlobal("TotPeople","RTF510",2) IncrementGlobal("TotThay","Global",1)~
==ToCyric~Pale lady, hihi, living in the shadow too long.~
==RTMask~YOU, you carry that weapon...the power of my master radiates strong from it, who are you?~
==ToCyric~Godsbane? It's mine, mine alone! It belongs to the future god of murder, it belongs to me, pale shadow thief.~
==RTMask~Future god of murder? Yes, this sword is said to be the key to his throne. But Bhaal is pretty much alive.~
==ToCyric~Still - but not for long, be assured. That is why we are here. Are you trying to stand in our way?~
==RTMask~Ha, not one moment. And there is no need to rage on like that, bearer of Godsbane. Mask and all who follow him want Bhaal dead. Do it and we will be forever thankful.~
==ToCyric~Really? Is this a trap? Last time I saw him, he seemed to be good friends with Mask.~
==RTMask~That must have been before Bhaal betrayed first Myrkul and finally even Bane to save his own hide while at the same time trying to seize all of Jergal's former dominion.~
==ToCyric~I see, the slayer bit off more than he can chew. So, pale darling, where is he?~
==RTMask~Mh...mh, do you expect me to give that information for free?~
==ToCyric~Not at all, my dear. I give you a very high price and a nearly invaluable advice in addition: I grant you your life and I warn you to EVER anger the new god of murder again.~
==RTMask~Were it not for this sword, you would not be able to speak like that. But I feel it is my Lord Mask's will that you find Bhaal. Seek him in the slave quarters in the eastern harbour of town, nobody counts his victims there. Or visit his temple if you dare, fools.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~Global("Totshark","RTF056",1)GlobalLT("TotThay","Global",4) ~THEN RTAuct Totthay3
~...end of our business here in Bezanthur.~
DO~SetGlobal("Totshark","RTF056",2)IncrementGlobal("TotThay","Global",1)~
==RTShark~How can a slave auctioneer get bankrupt in this town? Is hell freezing over?~
==RTAuct~Nobody bids against the Bhaalists, I can assure you. And their master's hunger for slaves is insatable.~
==ToAdon~Why should Bhaal have need for slaves, does he plan to run a plantation?~
==RTAuct~He needs their soul essence for his own power, he consumes them as fuel.~
==Tolini~A holocaust to feed the god of murder?~
==RTAuct~That's what I heard. It will be our ruin. The city must get rid of this uninvited guest.~
==TOCyric~Uninvited? There is a large amount of worshippers of the Slayer here in Thay, hihi.~
==RTShark~A number of them changed their minds since the guy is here, he was hailed while not on this plane but having him next door is something else.~
==RTAuct IF~GlobalLT("TotThay","Global",4)~ THEN~You can ask those at Mask's temple, if you need further details.~ DO~EscapeArea()~
==Tolini IF~GlobalGT("TotThay","Global",3)~ THEN~Mask's guild was telling a similar tale. He has a talent to gain friends.~ EXIT

CHAIN
IF~ Global("TotThay","Global",5)~ THEN ToAdon Totthay4
~Any idea of how to stop Bhaal here, Midnight?~
DO~SetGlobal("TotThay","Global",6)~
==CVSan25J~We need to get access to Bhaal's temple in Bezantur. This is where they would sacrifice those slaves to the Lord of Murder in their bloody rituals.~
==ToCyric~I haven't seen any sign of his temple yet, hihi.~
==ToPellig~Most of those ritual places are below the surface, Cyric.~
==CVSan25J~Right, the one we search is below the Odesseiron estate. I have been there before...~
==ToCyric~You have...? I didn't know you ever were in Thay before.~
==ToPellig~Looks like you do not know as much as you think you know about her, Cyric.~
==ToCyric~Does one ever know women, Pelli-darling? So where is that Oddododdo estate?~
==CVSan25J~A little out of town, to the north. The temple has as well access to an ancient transportation system from the founders of the Thaymount Citadel. I hope that Bhaal does not have means to activate it.~EXIT

CHAIN
IF~Global("TotThay","Global",6)~THEN ToHomer Totthay4
~More intruders? Edwin, boy, come here behind me.~
DO~SetGlobal("TotThay","Global",7)~
==CVSan25J~Homer Odesseiron and his nephew Edwin, I presume.~
==RTEdwin~Those unwashed Sword Coasters are just as uncivilized as you described them to me, uncle. (However, the girls outshine anything in Thay, hm.)~
==ToHomer~What do you want here?~
==ToCyric~Step aside, red robe, we have no issue with you - unless you are in league with the Bhaalists that are around here.~
==RTEdwin~The scum may be of use to us other than to trample the grass (Let the chimpanzees do the dirty work for us.)~
==ToHomer~The Bhaal fanatics are as unwelcome here as you are. Still, if you are here to fight them, I will not object you. You will find them in the south-east of the estate. Make sure to eliminate them all.~
==ToCyric~Too bad, I had hoped for more resistance from you, Odesseiron, yes, yes, run for your life, hihi.~
==ToHomer~Come, Edwin, let the mercenaries do their job, we have better things to do.~DO~EscapeAreaObject("Estate")~
==RTEdwin~(That black beauty sure looked like a treat, hm.)~DO~EscapeAreaObject("Estate")~EXIT

CHAIN
IF~Global("TotThay","Global",8)~THEN ToCyric GotRelithay1
~Looks like we found our *man*. Has he got the relict already?~
DO~SetGlobal("TotThay","Global",9) SetGlobal("ToBhaalhunt","Global",6) ~
==ToBhaal~Worry not, little thiefling, I finished my mission in Thay without your intervention and I'm ready for the next step on my agenda.~
==ToAdon~And what may that be? Creating more spawns?~
==ToBhaal~Only one more is needed, the one to prevent Mystra to spoil my plan.~
==ToCyric~What??~
==CVSan25J~Cyric!! He wants to rape Khalindra to place a spawn right next to Sandrah.~
==ToBhaal~Sandrah?~
==ToCyric~Sandrah?~
==CVSan25J~Elminster's and Khalindra's first-born - she may just have arrived by now. The heiress of the long line...~
==ToPellig~Midnight! You may give the Lord of Murder an idea he did not yet have.~
==ToBhaal~Worry not, Simbul - oh, yes, I know who you are...~
=~Worry not, the dice has been cast, what will be will be, neither you nor your protege Midnight can prevent it any more.~ DO~EscapeAreaObject("Downa")~
END
++~Let him go - we do not even want to prevent it. Yes, the dice has been cast but when it ends its roll, it will not show the number he expects.~ EXIT
++~Let us follow him downstairs - we need to prevent his return to Waterdeep. Bhaal must find his end here and now!~DO~SetGlobal("TotThay","Global",10)~EXIT
