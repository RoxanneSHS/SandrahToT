BEGIN ToGoWa02

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
DO~SetGlobal("TOKelemQuest","Global",3) RealSetGlobalTimer("ToGodsearchT","Global",600)~
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
++~Did he find a clue - obviously he did not find the cure itself.~ +  Whatwrong5

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
==ToAdon~There is a Sune temple in the north of Waterdeep. I suggest to go there to gain information. I have no plan yet laid out, it is too eraly for that. We should just try to gather the facts about the whole situation.~
END
++~A valid proposal, we may as well check for my goddess as well.~EXIT
++~I was considering Waterdeep already to inquire at Mystra's temple - we put Sune's on our list for visiting.~DO~AddJournalEntry(@024,QUEST)~EXIT

CHAIN
IF~Global("ToGodwalk","Global",1)~THEN ToGoWa02 Umber1
~See what she's done! my comrads!~
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
=~AO has indeed cast ALL gods out of Celestia and banned to the Prime to dwell here as mortals. Not just that, they are not just avatars while their immortal essence stayed at home, no, they are now vulnerable though still devastatingly powerful.~
==ToAdon~Does anyone know why such a thing happened.~
==Prihel~There was a theft, the Tablets of Fate are gone and the gods are relegated by angry AO until the thieves are found and the clay tablets returened.~
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
