BEGIN ToGoWa02
BEGIN ToMalar
BEGIN ToWaukee
BEGIN ToMyst
BEGIN ToSune
BEGIN Orc04
BEGIN Toaliann
BEGIN Tosarevm
BEGIN ToHelm
BEGIN ToInnke
BEGIN ToBhaal
BEGIN ToAlaun
BEGIN ToDragBa
BEGIN ToBane
BEGIN ToMyrkul
BEGIN ToElmi

CHAIN
IF WEIGHT #-5~GlobalGT("TOLiriquest","Global",8) Global("TOKelemQuest","Global",0)~ THEN              Portal  warnpon1
~Dark times are coming...they say that gods have been seen to walk the Prime in their mortal avatars.~
DO~SetGlobal("TOKelemQuest","Global",1)~
END
++~That has happened from time to time, no need to worry.~ + warnpon2
++~And how do *they* know such a thing - how do you know you see a GOD if he is in his MORTAL avatar?~+ warnpon2

CHAIN
IF~~THEN Portal warnpon2
~You will soon see the truth of my words, unbelievers.~DO~ EscapeAreaDestroy(40)~EXIT

CHAIN
IF WEIGHT #-5~GlobalGT("TOLiriquest","Global",8) Global("warnjop","tot003",0)~THEN Bently2 warnjop1
~They say that gods have been seen to walk the Prime in their mortal avatars these days.~
DO~SetGlobal("warnjop","tot003",1)~
=~I say, fools, how would you know it's Helm walking in through the door or just some thirsty paladin looking for a pint...nay...they don't drink.~
END
++~Maybe if he looks like a paladin and orders a mug of beer, you will know he is actually a god and you ask him for an autograph.~EXIT

CHAIN
IF~Global("TOKelemQuest","Global",2)~THEN ToKelem Whatwrong1
~Some of your reactions in the elven city were really disturbing, my love. You seem to know more than...how can I say...it is like you were a fortune teller.~
DO~SetGlobal("TOKelemQuest","Global",3) AddJournalEntry(@024,QUEST) RealSetGlobalTimer("ToGodsearchT","Global",600)~
==CVSan25J~These things appear like some deja vu at times, like I met people before whom I have never seen.~
==ToKelem~This Bodhi and her brother Irenicus?~
==CVSan25J~They play a role in my life, and they are dangerous, more I cannot say.~
==ToKelem~I am concerned - not just about you and your confusion but about those confusing things we hear these days. Gods walking in their avatars among us, they say. Was there one atop of Blackstaff tower, is it this what has changed you?~
END
++~There was nobody but me, really, Kelemvor. You worry too much about me when we should really be worried about you.~ + Whatwrong2
++~There are times of trouble ahead for Faerun and we will be playing a role in it. Dangerous times, my dear, and we will have to fight for our lives.~ + Whatwrong12

CHAIN
IF~~THEN ToKelem Whatwrong2
~Yes, the curse of my family. Were you scared?~
==CVSan25J~Not by you, I felt I was not in danger.~
=~I was concerned for you, you are a fighter with a lot of overview who restrains himself in battle, you keep a cool head and do not act foolishly. That beast was not acting like you do, more like you went beserk. You could have been badly wounded or worse.~
==ToKelem~You are right, I had little control in that state. On the other hand, it never happened in any battle unless some family member of mine was involved.~
END
++~Maybe we find out about some cure by visiting a temple.~ + Whatwrong3
++~Those gods walking among us, could one of them provide a cure?~+ Whatwrong3

CHAIN
IF~~THEN ToKelem Whatwrong12
~You mean that we may not all survive this *Time of Trouble*?~
==CVSan25J~(Try to smile.) We are adventurers, we live a dangerous life from day to day.~
==ToKelem~You were never bothered about that in the way you are now.~
==CVSan25J~Gods in their avatars are still powerful beings, even when mortal. Chances are that people like us will cross their path.~
==ToKelem~There are evil ones among them, so much is sure. I wonder why they should have come, not one on an occasional visit but obviously some of them.~
END
++~Maybe we find out more by visiting a temple.~ + Whatwrong4
++~Maybe we find out more by visiting Mystra's temple in Waterdeep.~ + Whatwrong4
++~Maybe they will find us before we need to worry about finding them.~+  Whatwrong4

CHAIN
IF~~THEN  ToKelem Whatwrong4
~Which brings me to the topic of the Lyonsbane's curse and what is known about it.~
=~My great-grandfather was a sorcerer of quite some skills. He spent a lot of time with research about curses and cases like ours.~
END
++~Did he find a clue - obviously he did not find the cure itself?~ +  Whatwrong5

CHAIN
IF~~THEN ToKelem Whatwrong3
~My great-grandfather was a sorcerer of quite some skills. He spent a lot of time with research about curses and cases like ours.~
END
++~Did he find a clue - obviously he did not find the cure itself.~ +  Whatwrong5

CHAIN
IF~~THEN ToKelem Whatwrong5
~What he found was not encouraging. The source of the curse was the greed of my anchestor who left his mistress to die from her wounds. The sorceress who cursed Kyle was drawing her powers from The Black Hand.~
==CVSan25J~Bane, the malicious god, Lord of Darkness whom his worshippers call the Black Hand.~
==ToKelem~I may bear this curse but I will not deal with the Black Lord to get rid of it, never!~
==CVSan25J~Do you want to give it to your children rather?~
==ToKelem~Oh, my love...my children...our children - forgive me my selfishness.~
==CVSan25J~Do not be hasty, Kelemvor. I have not sworn to be the mother of your children, at least not yet. What I see is a slight chance only, some gods walk Faerun as mortals they say. What if Bane was among them and what if we could *convince* him to remove the curse?.~
==ToKelem~In the end it all leads to the same conclusion - we need to find out more about those rumours.~EXIT

CHAIN
IF~Global("TOKelemQuest","Global",4)~THEN ToAdon SeeSune1
~Midnight, I have considered those rumours we heard about gods having come to Faerun, being mortal, and being vulnerable.~
DO~SetGlobal("TOKelemQuest","Global",5)RealSetGlobalTimer("ToGodsearchT","Global",900)~
==CVSan25J~You want to meet your goddess, beautiful Sune?~
==ToAdon~I have not seen it under this aspect, (laughs), oh, Midnight sometimes you can be so...flippant. Truth is that I feel I need to find out if the rumour is true and also whether my goddess is involved.~
=~The Lady Firehair is the deity of beauty, love and passion, and even if those can be found all over Faerun, our Prime is as well a plane full of evil and danger. There are gods with far more dangerous powers than Sune has.~
==CVSan25J~I had never considered a goddess to be a being needing protection, but you may well be right. If your goddess is vulnerable on the Prime she better not cross the wrong mortals or even one of her evil competitors. What do you propose?~
==ToAdon~There is a Sune temple in the north of Waterdeep. I suggest to go there to gain information. I have no plan yet laid out, it is too early for that. We should just try to gather the facts about the whole situation.~
END
++~A valid proposal, we may as well check for my goddess as well.~DO~AddJournalEntry(@024,QUEST)~EXIT
++~I was considering Waterdeep already to inquire at Mystra's temple - we put Sune's on our list for visiting.~DO~AddJournalEntry(@024,QUEST)~EXIT

CHAIN
IF~Global("ToGodwalk","Global",1)~THEN ToGoWa02 Umber1
~See what she's done! My comrads turned to stone!~
DO~SetGlobal("ToGodwalk","Global",2)~
==ToAdon~Whoever *she* was, she seems to have done the right thing, scum.~
==TOCyric~I like *her* handywork, a nice collection, hihi.~
==ToPellig~Did *she* leave any name, this is not the deed of some minor magic user, actually it seems that no magic was involved here at all, sheer celestial presence I would say.~
==ToGoWa02~Celestial presence, never heard one use such an expression, but then...never saw one do such a thing before. And, by the way, she claimed to be Umberlee.~
==ToKelem~It would make sense for the Bitch Queen of the Depths to punish pirates this way. The first good deed I ever saw from that evil goddess.~
==ToGoWa02~It looks like it makes no sense to ask people like you for a little help.~
==TOCyric~Hihi, Godsbane is always willing to help bastards like you out of the mysery of their wretched existance.~
==ToPellig~Cyric, please, keep your energy for worthier foe.~
==TOCyric~For you, Pelli-baby, always willing to please you.~
END
++~Enough, let us not waste time with those, they received the punishment they deserved.~EXIT
++~We can do a little but I am not wasting resources on scum.~DO~ReallyForceSpellRES("CVHealh","ToGoWa02")~EXIT
++~So it is all kinds of gods roaming Faerun now. Maybe we have some scrolls and spells to help you and your companions. Nobody deserves to be turned into stone.~ DO~ReallyForceSpellRES("CVHealh","ToGoWa02")~EXIT

CHAIN
IF WEIGHT #-8~Global("ToGodwalk","Global",3)~THEN Prihel NotHel1
~...and Helm is the only one who remained immortal. He is to guard the Celestial Stairs so that no other god can pass without AO allowing it.~
DO~SetGlobal("ToGodwalk","Global",4)~
==ToPellig~Excuse me, priest, we came too late to hear all of your report. Are you saying that AO banned some gods to the Prime?~
==Prihel~Hm, I see priests among you, seems you have been in the wilderness and have not yet received the news.~
=~AO has indeed cast ALL gods out of Celestia and banned to the Prime to dwell here as mortals. Not only that, they are not just avatars while their immortal essence stayed at home, no, they are now vulnerable though still devastatingly powerful.~
==ToAdon~Does anyone know why such a thing happened?~
==Prihel~There was a theft, the Tablets of Fate are gone and the gods are relegated by angry AO until the thieves are found and the clay tablets returned.~
==ToPellig~The only reason for such a deed can be one or more deities trying to gain power outside their portefolio which are chiseled onto those steles.~
==Prihel~Only the Unsleeping Eye, my master Helm, remains in full power to prevent any of the others to return.~
==CVSan25J~Absurd to assume that Mystra would do such a deed.~
==TOAdon~Or fair Sune. This is the deed of some evil gods for sure.~ 
==TOCyric~Hihi, there may pretty soon be some casualties and some vacant posts in Celestia.~
==ToPellig~Cyric, however you did it, I have to admit this is a valid analysis.~
=~The competition among the gods for more power will now be played out here in Faerun. I am afraid the casualties will not be limited to their ranks or those of their followers but all the mortals are in danger of becoming victims when those titans clash.~
==TOCyric~Will you hold my hand, my dear, while we watch that spectacle?~
==ToPellig~No, but I may continue to endure your company if you - like the rest of our group - embark on the quest to find the culprits and retrieve the tablets.~
END
++~Pelligram is right, it is the only way to get those overpowered nursery childs back to where they belong and where they can do only limited harm to the mortals.~DO~AddJournalEntry(@025,QUEST)~ EXIT
++~Not only would we do the Prime a favour, we may gain ourselves significantly in the process.~ DO~AddJournalEntry(@025,QUEST)~ EXIT
++~Apart from AO's gratitude we may even get the chance to eliminate some evil bastards while they are vulnerable.~DO~AddJournalEntry(@025,QUEST)~ EXIT

CHAIN
IF WEIGHT #-2~Global("ToGodwalk","Global",5)~THEN CVPotngi Malar
~Give me a minute please, mighty adventurers.~
DO~SetGlobal("ToGodwalk","Global",6)~
==ToPellig~Sure, I can see you are a healer.~
==CVPotngi~Not really, although I try to support them best I can with the herbs I collect.~
=~Which brings me right to the topic.~
==ToCyric~Hihi, helping gnomish herb collectors, is there anything we NOT do to prove ourselves fools? ~
==ToAdon~You proof yourself a fool each time you open your mouth, thief.~
==CVSan25J~Let the girl speak and then we decide if it is foolish or not, boys.~
==CVPotngi~I was collecting Aescalus herb leaves in the Larswood. They grow particularly rich near the old druid circles there. But I just escaped with life hanging on a thread this time.~
==ToCyric~Fine, some bandits for Godsbane to slaughter, let's go, hihi.~
==CVPotngi~Oh, no, I can take care of bandits, they don't get to see a small one like me in the woods. There is greater danger out there these days. Druids and beasts, I think they were werewolves - and a new leader, I heard the name *Maller*.~
END
++~Gods walk Faerun now, you heard correctly, it must be Malar, the Beastlord.~ + Malar2
++~We may look into this, from your description the new leader may be Malar himself.~+ Malar2

CHAIN
IF~~THEN CVPotngi Malar2
~These gathered forces may be some challenge even for you, friends. You should get some silver weapons for this task. And you may have use of these potions if you decide to face them.~DO~GiveItemCreate("potn55",Player1,3,0,0) AddJournalEntry(@026,QUEST) EscapeAreaDestroy(60)~EXIT

CHAIN
IF~Global("ToGodwalk","Global",7)~THEN Tomalar Malar3
~Unbelievers are approaching. (Sniff) Hateful Mystra...(Sniff) Stinking Sune...~
DO~SetGlobal("ToGodwalk","Global",8)~
==ToPellig~A nice gathering, Beastlord.~
==ToCyric~Hihi, this pelt looks like it makes a nice cloak for you, Pelli-babe.~
==ToPellig~You will never get the smell of its evil former owner out of it, Cyric. It is something to be left in their beloved nature to rot and feed the worms.~
==ToCyric~I understand you perfectly, the endless cycle of nature and so on and blah and blah.~
==CVSan25J~You still have a chance to leave these woods peacefully, Malar.~
==ToMalar~And who are you to demand such? (Sniff) This is MY domain now, the forests of Faerun return to the regime of the beasts.~ DO~Enemy()~
==TOAdon~There is nothing natural in lycanthropy, it is a desease to be stopped from spreading further.~EXIT

CHAIN
IF WEIGHT #-3~Global("ToWaukGo","Global",1)~THEN CVWDWauk WauGo1
~Assault...help!! Help!! There are demons in the Temple of Splendor.~
DO~SetGlobal("ToWaukGo","Global",2)~
==ToCyric~What could they seek there, they want to go shopping, hihi?~
==CVWDWauk~We need help...our goddess...~
==CVSan25J~Your goddess is in there too, is it so? The demons are after her?~
==CVWDWauk~...yes...We need help... ~ DO~EscapeAreaDestroy(50)~
END
++~With Waukeen, everything has a price. We will help you. Do not forget to pay afterwards.~EXIT
++~Demons do not scare us and the Golden Lady will surely reward us.~EXIT
++~(Sigh) Another day, another battle, let us go, friends.~EXIT

CHAIN
IF~Global("ToWaukGo","Global",3) ~THEN ToWaukee WauEscape
~You have indeed come as you promised thus the first step for the deal is done.~
DO~SetGlobal("ToWaukGo","Global",4)~
==Grazzt02~Toril has become a dangerous place, I have witnessed it myself during my short stay here.~
==TOWaukee~You know about my identity, so how about introducing yourself to me.~
==Grazzt02~I am Graz'zt, a great demon prince of Hell. The name may strike a chord as will other enemies of mine like Orcus and Demogorgon. Your ambassadors assured me that you are open minded and you patronise the merchant as well as the smuggler. My reputation should not be a hinderance for our deal.~
==ToWaukee~Celestia is closed and Toril not safe. Logic tells me that your domain is safe - provided our agreement is solid.~
==Grazzt02~I have nothing to gain by betraying you, Waukeen. We both will be winners once this struggle with AO is over and we can restore you as the figurehead of our alliance whom the mortals can see and worship.~
=~The portal is ready for your use.~
==ToCyric~Hihi, not an ambush like those priests were made to believe but a clever escape plan. My respect, Waukeen.~
==ToAdon~This kidnapping obviously is a business case of a quite perculiar nature...~
==Grazzt02~Step through the portal, fair Golden Lady, I will take care of these unexpected intruders.~DO~AddJournalEntry(@027,QUEST) ClearAllActions() StartCutsceneMode() StartCutScene("ToWaEsc")~EXIT

CHAIN
IF WEIGHT #-4~Global("ToWaukGo","Global",6)~THEN CVWDWauk WauGo2
~What has happened. I was unconsciuos, it seems.~
DO~SetGlobal("ToWaukGo","Global",7)~
==ToCyric~You missed the best part of the play, hihi.~
==Tolini~Your goddess is obviously one who knows no scruples when it comes to business associates.~
==CVWDWauk~What do you mean by that, where is she now?~
==ToCyric~Waukeen has just left the building, as they say.~
==TOPellig~Waukeen has just left Toril, this is what you intended to say, Cyric.~
==ToKelem~She figured that the Prime was not a save place for her during these troubled times.~
==CVWDWauk~Are you trying to suggest that Waukeen has sought shelter with those demons? ~
==ToCyric~Business is business, isn't it. Looks like she made a deal. You may pray that she did not buy a one-way ticket.~
==Tolini~Pray, Cyric? It looks like in this *Time of Trouble* as we now may very well call them, there is nobody left to send prayers, too.~
END
++~What Liriel just said expresses well the situation we are in now. We are on our own in this trouble. Or we could say, the Prime is now fully ours, the plane of the mortals.~EXTERN Tokelem Waukgo3

CHAIN
IF~~THEN Tokelem Waukgo3
~I object to this statement, Midnight. We cannot ignore the presence of the gods even if they are mortal now. They are - at least some of them are - the most powerful and dangerous beings on the Prime.~
==TOAdon~Right, Kelemvor, and we see that any of them may be just around the corner.~
==ToCyric~Ha, you sissies, don't you see the opportunities? Just tell me - who will gain their portefolio should we meet one and defeat him or her?~
==ToLini~That will be decided by AO, or not?~
==ToCyric~Oh, my dark beauty, how you err...I tell you, the winner takes all, the strongest will survive - kill one and take what you need.~
==TOKelem~Madman, are you proposing to hunt down gods and grab their domains or what?~
==ToPellig~Friends, I am afraid that Cyric's vision is not so totally absurd as it may sound. There will be casualties sooner or later, and - just as Cyric already stated, there will be vacancies. ~
=~At one point this situation will end. There will be a vacuum of power in some domains and it must be filled to prevent further chaos.~
==ToCyric~Pellig-babe, I knew you'd understand...I have to make up my mind about which portefolio I should go for.~
==CVSan25J~How about murder, your specialty - or take strife...Cyric, Cyric...~
==ToCyric~Splendid ideas, girls, you are great inspirations, really. But why chose - why not take both and maybe even...~
==TOKelem~Stop it. madman!! And you, Pelligram, Midnight, what do you think you do? You put fuel to that idiot's fire! Just imagine he really starts to believe in such stuff. He's dangerous enough already.~
==TOAdon~Come. let us move before this gets out of hand.~EXIT

CHAIN
IF~Global("ToTablet1","Global",1)~THEN ToMyst Tab1Start1
~Greetings, it is good that you finally found your way to us.~
DO~ SetGlobal("ToTablet1","Global",2)~
==Tosune~We knew you would come. I greet you, adventurers - Adon of Arabel, it is good you are now here.~
==TOAdon~My lady Sune, you are as beautiful as I ever dreamt you were.~
==ToPellig~Mystra, we have seen already a number of events giving us an initial impression about the current situation. With both of you being present here, our worst fears are confirmed.~
==CVSan25J~Lady Mystra, my goddess, it is true that it was really you who gave me your attention in my student days. Each time I saw you in my dreams, I found that spells, which I had labored over for weeks, would suddenly work without any problem. ~
==Tosune~Our power is limited on the Prime and we have joined our forces to call you to this place. Mystra protects me as good as she can, as she is partly one with the Weave and not even AO can fully separate the two.~
==ToPellig~I have recognised that our spells are still intact even though followers of other gods seem to be limited in their use of magic.~
==ToMyst~If you see spellcasters using their magic you can easily tell that the avatar of their god must be within some distance. Only in this case they can participate from the power of their celestial guardian.~
=~Midnight, Pelligram, all of you, listen. We need your help. The Prime is your plane and your joint powers can almost match those of a cast out god. We need to return to Celestia and this is only by way of finding the stolen tablets.~
==ToCyric~You know who has them, do you, hihi?~
==ToSune~Not exactly, we just have some suspicion.~
==CVSan25J~Obviously it is the deed of an evil power and maybe more than one god is required to face AO in that manner.~
==ToMyst~Midnight, our thoughts are aligned in this...also we think it must be some gods who are still struggling with their role and trying to establish themselves.~
==CVSan25J~The dead three...~
==ToKelem~I never heard this expression.~
==Tolini~Who would that be?~
==CVSan25J~Eh...I mean...they are not dead - yet. Probably soon, when we find them. Actually I meant those three gods that put Jergal to death and divided his portilolio among each other.~
==ToCyric~Clever deduction, that makes sense, the soon-to-be-dead three, Jergal's heirs...~
==ToSune~Myrkul, Bane and Bhaal.~
==ToPellig~They worked together in the past to gain immortality. They do it again to enrich their portefolios.~
==ToCyric~And we eliminate them and acquire their power, wonderful, hihi.~
==Tomyst~We will see about that last part. With the first half, to hunt and eliminate them, we can agree.~
==ToSune~We are sure from our divinations that at least one of them and one of the tablets are in these parts of the Realms.~
==ToPellig~I know of two places where we might start an investigation.~
==CVSan25J~One may be a Bhaal temple somewhere in the vicinity of Boareskyr Bridge, Pelligram. Which is the other?~
==ToPellig~Myrkul is worshipped by the Clan Orcs. In the Northern Woods between Secomber and Elturel there should be a stone cycle of his priests.~
==ToMyst~Valid places to start an investigation. We trust you in this. Sooner or later those three may become aware of your pursuit. You may be lucky - or unlucky - in that they may as well try to find and get rid of you. We can only assist you in a limited way.~
=~Pelligram, I will entrust you with this item which will grant your company some direct access to the Weave and your spells even now.~
==ToPellig~The Simbul - I will be its guardian, mylady.~DO~AddJournalEntry(@030,QUEST) GiveItemCreate("Simbul","ToPellig",0,0,0) TextScreen("Tablete")~EXIT

CHAIN
IF~Global("ToOrcActive","ar01pb",2) ~THEN CVShPri InTot1
~So says the Lord of Bones: *Know me and fear me. My embrace is for all and is patient but sure. The dead can always find you. My hand is everywhere - there is no door I cannot pass, nor guardian who can withstand me.* ~
DO~SetGlobal("ToOrcActive","ar01pb",3)~
==Orc04~Hail Lord Myrkul!~
==CVShPri~Hail The Reaper. And...death to the intruders I sense near. Get them.~ DO~ ActionOverride("ToAdon",JumpToPoint([5000.3700])) ActionOverride(Player1,MoveViewObject(Myself,INSTANT)) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("ToBhaalActive","bd7230",1)~THEN Tosarevm Mothers1
~You seek for our Lord Bhaal in vain here, intruders.~
DO~SetGlobal("ToBhaalActive","bd7230",2)~
==SarMel01~You are bloodhounds, hunters, I see it. You are so arrogant as to chase gods.~
==ToKelem~Woman, if there ever was a bloodhound worse than any other than it's the god of murder.~
==Toaliann~Our beloved Lord has seen you coming but he will not die.~
==ToCyric~He will have a hard time withstanding Godsbane.~
==ToPellig~Cyric, I sometimes think you have the gift to see the future...~
==ToCyric~You need no prophet for that, hihi, that guy's portefolio just would suit me too well, Pelli-babe.~
==Tosarevm~Blasphemer...no one will take Lord Bhaal's place.~
==CVSan25J~(Whispers almost like in a trance) Bhaal will not die, some bhaalspawns are already seeded...~
==SarMel01~WHAT? Who are you, woman? How come you to know anything about our Lord's plans?~
==ToCyric~Seems someone else sees the future as well, hihi.~
==TOLini~Some of these women indeed seem to be pregnant.~
==ToAdon~If they carry Bhaal's seed they must die!~
==Tosarevm~No, you murderer! Mellisan, do something. Nobody shall hurt my little Sarevok.~
==CVSan25J~We cannot do that, Adon. We are not like them. We cannot kill mothers with their innocent children.~
==ToKelem~Innocent children? They are Bhaal's spawns!~
==ToPellig~Midnight is right - they are innocent. Their blood does not define who they will be in later life.~
==CVSan25J IF~Global("Sanrompath","Global",1)~THEN~Alianna, your son may one day become the God of Love and Hope despite his heritage.~
==CVSan25J IF~Global("Sanrompath","Global",2)~THEN~Alianna, your daughter may one day become the Goddess of Love and Hope despite her heritage.~
==Toaliann~Let the unborn live, we beg of you. I will give you what you are searching, take it and leave.~DO~GiveItemCreate("ToScrl2","ToPellig",0,0,0)~
END
++~We will leave, your life is doomed and there is no hope for any of you. Your children have the right to decide on their own fate, and I swear they will.~EXIT
++~We will leave but others will come to end this. Bhaal will die soon and he will never return.~EXIT

CHAIN
IF~Global("ToTablet1","Global",5)~THEN ToPellig Tab1Start2
~So we have learned a bit about what is going on by now.~
DO~ SetGlobal("ToTablet1","Global",6)~
==ToCyric~Oh, Pelli-babe, I so adore your intelligence, hihi. Just - what is it that we have learned?~
==CVSan25J~Some B and B and M are working on a plan to find a better place to hide the tablets we search.~
==ToAdon~B,B and M proofs our initial suspicion about the not-yet-dead-three.~
==TOlini~I wonder what Tiamat has to do with those three, she is the Dragon Queen.~
==ToPellig~The dragon is not part of AO's pantheon of Celestia - thus she is not subject to the overall crisis, hm.~
==ToCyric~They lack your genius, admireable Pelli, maybe they don't know that. And maybe a little dragon breath can solve our problem with those goons.~
==ToKelem~Hardly imaginable, madman. How would they not know about Tiamat?~
==CVSan25J~What if the riddle is much easier - *With her blood spilled the access to the hideout for the tablets will be ours.* They need a bit of her blood to open the gate to where they want to secure the tablets.~
==ToAdon~Not a bad analysis, I dare say. So what kind of gate is it that can be opened with dragon's blood only?~
==ToCyric~??~
==TOKelem~??~
==ToPellig~Why not ask the Mistress of Mysteries?~
END
++~We may first try to consult a library of Oghma. Candlekeep comes to my mind here.~EXIT
++~Yes, let us consult Mystra and Sune, the joint wisdom of two goddesses may help.~EXIT

CHAIN
IF~ Global("ToTablet1","Global",6)~THEN ToSune Tab1Start3
~You return with good or bad news, friends?~
DO~ SetGlobal("ToTablet1","Global",7)~
==Tomyst~Any news is welcome, I would say.~
==ToCyric~Don't blame the messengers, hihi. Those soon-to-be the *Dead Three* are involved, just like we had already suspected.~
==ToPellig~We have some correspondence between B and B and M concerning the tablets. Those renegades seek a better hiding place for their booty, if we read those scribbles correctly.~
==ToAdon~They want to hide it in a place requiring Tiamat's blood to access.~
==ToMyst~Not so dumb of them - the horde of the Dragon goddess is shielded from any scrutiny, be it by mortal or mortal god or even immortal AO.~
==ToKelem~We have no idea where such a place would be found.~
==ToSune~Hm...~
==CVSan25J~I had the idea that a library of Oghma may have such information.~
==ToMyst~In deed - even I have no such lore but the ancient scrolls and books may tell you.~
END
++~We will try to enter Candlekeep further south on the Coast, it is the nearest place to hold such knowledge.~EXIT
++~We found some additional disturbing evidence concerning Bhaal. He prepares for his eventual return already for the case he may not survive the current avatar crisis.~EXTERN ToMyst Bhaalwarn1

CHAIN
IF~~THEN ToMyst Bhaalwarn1
~How could that be accomplished? Hm, he would need to secure his celestial essence somehow to later reclaim it. Anyway it would weaken him while he walks the Prime.~
==ToKelem~He seeds children with different mothers, probably each of them inheriting some of his essence...~
==ToAdon~But - would he not need to have these children killed to regain their essence when he needs it?~
==ToCyric~Hihi, that's no problem for the guy, hey, he's the god of murder, after all!~
==ToPellig~His loyal followers would happily sacrifice those children once the crisis is over and their lord and master is ready to return.~
==ToMyst~First things first, friends. At the moment all of the three renegades are still alive and the tablets are our initial priority.~
==CVSan25J~So our next step is Candlekeep and then we will see what hints we get there.~EXIT

CHAIN
IF~True()~THEN ToInnke sell
~We got ale, we got armor, we got... Ah hell, this is old hat. Ye know what it is we all got.~DO~StartStore("Inn2616",LastTalkedToBy(Myself))~EXIT

CHAIN
IF~ Global("ToTablet1","Global",7)~THEN ToBhaal Alaun1
~YOU WILL NOT CHANGE A SINGLE SILABLE OF THIS DICTATE, OGHMA'S SLAVE!~
DO~ SetGlobal("ToTablet1","Global",8)~
==ToAlaun~I...I have noted down every word as you spoke it, my-my L-Lord.~
==ToBhaal~This - YOUR PROPHESY - will be spread through the Realms from here, this is my command. Beginning exactly one mortal year from this day, the text will be recited each noon within the walls of Candlekeep - OR Candlekeep will be destroyed down to its catacombs. This is my will.~
==ToAlaun~The recitations and the copies will be done as you have commanded, I-i h-have seen your power, L-Lord. No more murders, w-we do as told.~
=~May O-Oghma forgive me.~
==ToBhaal~Spare me your babbling, your fear makes you a mad but useful instrument. As long as you play my tune, I will spare your pathetic Candlekeep.~DO~Polymorph(SLAYER) Wait(4) MoveToPoint([1108.788]) Wait(4) DestroySelf()~EXIT

CHAIN
IF~ Global("ToTablet1","Global",8)~THEN ToAlaun Alaun2
~(The eyes of the monk are wide with fear, his stare is mad from the encounter he just survived.)~
DO~ SetGlobal("ToTablet1","Global",9)~
==ToKelem~Who was that visitor, did he murder those monks?~
==ToAlaun~The Lord of Murder shall perish
But in his doom he shall spawn a score of mortal progeny...~
==CVSan25J~...Chaos will be sown from their passing
So sayeth the wise Alaundo.~
==ToAlaun~These and the other words that were revealed to me will be sung in the garden each day at noon or Candlekeep will be destroyed.~
==ToPellig~This is what your visitor has demanded and he promised to let you and your remaining brothers of Oghma stay alive for it.~
==ToLini~What else did he give you to *prohesy*?~
==ToAlaun~The spawn of the Lord of Murder are fated to come into their inheritance through bloodshed and misery. It is the hope of their father that only one shall remain alive to inherit his legacy. I foresee that the children of Bhaal shall kill each other in a bloody massacre.~
==CVSan25J~It seems that we interrupted your guest before he could finish his sermon.~
=~Write:
*During the days of the Avatars, the Lord of Murder will spawn a score of mortal progeny. These offspring will be aligned good and evil, but chaos will flow through them all. When the Beast's bastard children come of age, they will bring havoc to the lands of the Sword Coast. One of these children must rise above the rest and claim their father's legacy. This inheritor will shape the history of the Sword Coast for centuries to come.~
==ToAlaun~Are we finished now...? I-I must rest.~DO~ApplySpellRES("BGSLEEP","ToAlaun")~
==CVSan25J~Yes, that is all.~
==ToCyric~Hihi, Midnight, I must admit you're really good at that - I have the feeling you know who that scary guy was?~
==ToKelem~This is madness, Midnight, what game do you play here?~
==CVSan25J~This creature was Bhaal himself and he planted another seed of his contingency plan here today.~
==ToKelem~And you help him with that?~
==CVSan25J~Not at all, I gave the turning wheel a little extra spin. When the roulette finally will stop, Bhaal will find himself the loser in his own game.~EXIT

CHAIN
IF~Global("CVTiamal","AR6000",3)~THEN CVTiamal  Intrud1
~One bunch of intruders after the other today.~
DO~SetGlobal("CVTiamal","AR6000",4)~
==ToPellig~We are not like the previous ones, Tiamat. You are injured, let me heal you with a spell, majesty.~
==CVTiamal~It is nothing, it is healing fast. They just took me by surprise, those have-been gods. You are indeed different - you know who I am.~
==ToPellig~We came to prevent what has now been done already, we are persuing the three fallen gods.~
==ToCyric~The soon-to-be "Dead Three", hihi.~
==CVTiamal~Be careful and not too proud, mortals. Those three are still powerful and dangerous and they act precise and quick.~
==ToCyric~That describes our own style just as well. They just scratched you a bit to draw some blood but did not stay to fight. Where did they go?~
==CVTiamal~You're clever, mortal. They needed the blood to open my lair.~
==ToKelem~They want to hide their theft from the scrutiny of other gods in there.~
==CVTiamal~Their theft? I'd call it their monstrosity.~
==CVSan25J~They brought a dragon with them?~
==CVTiamal~Some enslaved brown dragon and its halfbred abnormity.~
END
++~(Mumble) Abazigal is already born...~+ Intrud2
++~We will follow them quickly and see what can be saved still.~ + Intrud2
++~You and your kin will be revenged, this is our promise.~ + Intrud2

CHAIN
IF~~THEN CVTiamal  Intrud2
~I will leave them to you. My lair in this region is defiled. This is no place for the Dragon Queen anymore.~DO~EscapeAreaDestroy(55)~EXIT

CHAIN
IF~GlobalGT("CVabaz","AR6005",1)~THEN ToDragBa Breed2
~The brown dragon stares at you with glazed eyes only.~EXIT

CHAIN
IF~Global("CVabaz","AR6005",1)~THEN ToDragBa Breed1
~The brown dragon stares at you with glazed eyes only.~
DO~SetGlobal("CVabaz","AR6005",2)~
==ToLini~Look! It has a small one.~
==ToAdon~This apathy is not from brooding. It looks like a creature under a geas.~
==ToCyric~Hihi, someone has the power to put a mighty dragon into such a state to make him hatch an egg...that must be our guys. Wonder what's this all about.~
==CVSan25J~A bhaalspawn. We best leave those creatures alone.~
==ToKelem~We--best--leave--a--dragon--nursing--a--bhaalspawn--alone?~
==ToCyric~Hihi, that's exactly what our beloved Midnight said. Look at her, she seems to be under that spell as well.~
END
++~I am not! Let us forget the dragon, we need to make haste to find the renegades.~EXIT
++~The dragon is not our enemy but another victim of the beasts we chase - and they will escape if we do not move on.~EXIT
++~The creatures are helpless, there is no honour in slaying them.~EXIT

CHAIN
IF~Global("ToTablet1","Global",9)~THEN ToBane Abalair
~Mortals dare to intrude HERE? How is that?~
DO~SetGlobal("ToTablet1","Global",10) SetGlobal("CVabaz","AR6005",4)~
==ToBhaal~Persistent little maggots, didn't I see them when I taught those Oghma monks their new tune?~ DO~MoveToPoint([779.495]) EscapeAreaDestroy(45)~
==ToMyrkul~You saw them once already? Are they persuing us, you mean?~
==ToBane~What kind of *god of murder* are you, Bhaal, to keep them alive?~
==ToCyric~Aren't they like little boys bickering in the playground, our soon-to-be "Dead Three", hihi.~
==ToMyrkul~We have no time to waste it with a bunch of over confident adventurers.~
==ToBane~We need to do what friend Bhaal forgot while sputtering his stupid godly essence around. ~DO~Enemy()~
==TOMyrkul~Finish them up, Myrkul, we meet you at Blackstaff Tower.~DO~EscapeAreaDestroy(45)~EXIT

CHAIN
IF~Global("ToMyrkFi","RTF123",2) ~THEN ToAdon MyrkSig
~There he is, there is Myrkul!~
DO~SetGlobal("ToMyrkFi","RTF123",3)~
==ToPellig~He seems to be alone, where are the others.~
==ToCyric~Hihi, Bhaal's probably visiting some future mothers still.~
==ToLini~Bane may not have been as fast as we have been...wait...I can see him, look over there to the south - he's running...~
==ToAdon~He's running away...he knows he has to fear us.~
==ToCyric~He's running away from us, bah, Godsbane will get him.~
==ToKelem~Not if I get him first, Cyric, I owe him something still.~
==ToCyric~Try to outrun me if you dare, winner kills a god.~
END
++~No, stay together, Kelemvor...!~ DO~ClearAllActions() StartCutSceneMode() StartCutScene("ToBlaSt1")~EXIT
++~Be careful, do not risk too much. We take on Myrkul meanwhile.~ DO~ClearAllActions() StartCutSceneMode() StartCutScene("ToBlaSt1")~EXIT

CHAIN
IF~Global("ToMyrkFi","RTF123",7)~THEN ToCyric Kelded1
~Kelemvor?~
=~The fool is dead.~
=~MIDNIGHT!!~DO~SetGlobal("ToMyrkFi","RTF123",8)~EXIT

CHAIN
IF~Global("ToTablet1","Global",11)~THEN ToAdon Scar1
~My goddess, I am ashamed to appear in your presence in this horrible condition.~
DO~SetGlobal("ToTablet1","Global",12)~
==ToSune~These are troubled times, Adon, without Mystra near anymore, my own abilities are not enough to restore your features. This will have to wait.~
==ToAdon~But...how can I serve beauty this way...~
==ToSune~Hush, you can and you do still, do not worry. We have more urgent tasks at hand now.~
==CVSan25J~Where is Mystra? Why is she not here? We have one of the Tablets of Fate.~
==ToSune~She went ahead with the news about the identity of the thieves you had discovered. She would not leave the Weave unattended for much longer.~
==TOlini~What do you mean by *went ahead*?~
==ToSune~She went to the Celestial Stairs guarded by Helm. The bottom step is just to the southeast from here. We should make haste to go there, too, now that you have the Tablet.~
==ToCyric~She rushed ahead without the tablet...oh, these women!! Does she think she can convince a dumb tin head like Helm to let her through just because of her honest face.~
==ToPellig~We must indeed hurry to bring her the Tablet. Helm is Duty and there is no way to argue with blind obedience, Mystra may be in danger with her limited powers and her unlimited temper, I know her just to well.~
==ToSune~I'll show you the way.~DO~ClearAllActions()
StartCutSceneMode() 
Wait(2)
MoveViewPoint([2522.2061],VERY_FAST) 
ActionOverride("ToAdon",MoveToObjectFollow("Tosune"))
ActionOverride("ToPellig",MoveToObjectFollow("Tosune"))
ActionOverride("CVSandr",MoveToObjectFollow("Tosune"))
ActionOverride("ToLini",MoveToObjectFollow("Tosune"))
ActionOverride("ToCyric",MoveToObjectFollow("Tosune"))
MoveToPointNoInterrupt([2522.2061]) 
Wait(4) 
EndCutSceneMode() 
DestroySelf()
~EXIT

CHAIN
IF~Global("ToTablet1","Global",13)~THEN ToHelm helmmyst1
~No trespassing the Celestial Stairs.~
DO~SetGlobal("ToTablet1","Global",14)~
==ToMyst~Helm, we have no time for that now. I have urgent news for AO himself.~
==ToHelm~No trespassing the Celestial Stairs, Mystra, there are no exceptions.~
==ToMyst~Listen, Helm, this news must be brought to AO. I know who has stolen the Tablets of Fate.~
==ToHelm~Is that so? Anyway, my orders are precise, no trespassing for any of you until the tablets are recovered.~
==ToMyst~Tin head, did you not listen, I KNOW who has them. We need to tell AO and then we can retrieve them. I can no longer leave the Weave unattended.~
==ToHelm~It is you who does not listen, Mystra. I have my orders, no tablets - no passing.~
==ToMyst~You start to make me angry, brainless golem, this news must be brought to AO with or without your consent!~
==CVSan25J~WAIT!! WE HAVE THE TABLET!!! ~
==ToPellig~*Midnight's shout echoes through the vast void of the Celestial Stairs but you are not sure if it can be heard at the other end.*~
==ToHelm~You will not pass. I have my orders. Stop it, Mystra.~
==TOMyst~Then I need to do it without your approval, fool.~
==ToHelm~No trespassing the Celestial Stairs. I have my orders. This is the law.~
DO~StartCutSceneMode() Wait(2) StartCutScene("ToMysCu2")~EXIT

CHAIN
IF~Global("ToTablet1","Global",14)~THEN ToHelm helmmyst2
~No trespassing the Celestial Stairs. Who are you?~
DO~SetGlobal("ToTablet1","Global",15)~
==CVSan25J~What have you done, you bloody stupid fool, murderer!~
==ToHelm~She broke the law, she tried to violate AO's verdict.~
==CVSan25J~SHE tried to save your whole worthless pantheon and bring back the order while you stand there in your glorious righteousness and not only do nothing - no, you even stand in the way of those who act in this crisis.~
==ToCyric~*Once again it is Cyric's steady hand that brings you back out of your rage*.~
=~Do not waste time and energy on this strawheaded dummy. It will help neither us nor Mystra.~
==ToAdon~I get so fed up with the ignorance and stupidity of those so-called gods. Who do they think they are.~
==ToHelm~These are the Celestial Stairs, blasphemous mortals, I will not allow any more of your words here nor your presence.~
==CVSan25J~ HERE, YOU TIN HEADED EPITOME OF IGNORANCE.~
=~*She hauls the tablet you have gained at Helm who has no other chance than to catch it, less it would have falled into the nothingness around the Stairs.*~
==ToPellig~Let us leave while we still can. There is nothing we can do here anymore.~
=~And you, Helm, be a good doggie and retrieve the tablet to your master, he may give you an extra treat today for killing the Guardian of the Weave.~
==ToHelm~Mortals, I warned you...~ DO~StartCutSceneMode() Wait(1) ScreenShake([2033.1900],40) Wait(2) FadeToColor([20.0],0) Wait(4) TextScreen("Tomyste") Wait(4) SetGlobal("Chapter","Global",34) StartCutScene("ToMoveAt")~ EXIT

