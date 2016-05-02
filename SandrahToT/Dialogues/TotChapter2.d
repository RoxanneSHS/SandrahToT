BEGIN ToGoWa02
BEGIN ToMalar
BEGIN ToWaukee

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
~You mean that we may not all survive those *Times of Trouble*?~
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
==CVWDWauk~Are you trying to imply thatWaukeen has sought shelter with those demons? ~
==ToCyric~Business is business, isn't it. Looks like she made a deal. You may pray that she did not buy a one-way ticket.~
==Tolini~Pray, Cyric? It looks like in these *Times of Trouble* as we now may very well call them, there is nobody left to send prayers, too.~
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