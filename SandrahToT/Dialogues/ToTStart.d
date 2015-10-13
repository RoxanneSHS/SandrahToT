APPEND CVSan25J

IF~Global("MystBio","RTF025",1)~THEN BEGIN WantTOTRe1
SAY~Do you feel like returning to Celestia already, <CHARNAME>?~
IF~~THEN REPLY~It's AO's verdict, or are you still in your rebellious mood?~ GOTO WantTOTRe3
IF~~THEN REPLY~Yes, let us return. I need a rest from all of this.~GOTO WantTOTRe2
IF~~THEN REPLY~That's a loaded question, isn't it. You have some proposal?~ GOTO WantTOTRe3
END

IF~~THEN BEGIN WantTOTRe2
SAY~So be it.~
IF~~THEN DO~SetGlobal("MystBio","RTF025",2) ~EXIT
END

IF~~THEN BEGIN WantTOTRe3
SAY~The Mistress of Mysteries is alive and in full power. We can do whatever we had always wished to do but never could before.~
IF~~THEN REPLY~If this is so, I'd like to spend a long vacation from all this hassle - just you and me.~GOTO WantTOTRe2
IF~~THEN REPLY~With the knowledge of all those Mystra's that were before you - I'd really want to know what really happened in those *Times of Trouble* when you and me were born.~GOTO WantTOTRe4
END

IF~~THEN BEGIN WantTOTRe4
SAY~(She looks at you for a moment, contemplating your request.)~
=~Mystra was killed by Helm during the events and later my grandmother Midnight took her cloak and portefolio. I have the knowledge of both but for your purpose the full story is in Midnight's part of the lore.~
IF~~THEN REPLY~The source is not important for me, as long as the story is the truth - for the first time.~ GOTO WantTOTRe5
END

IF~~THEN BEGIN WantTOTRe5
SAY~It will be the truth. And the source is of utmost importance as it is through her that you will learn about the events.~
=~Provided you are willing to pay for the fare.~
IF~~THEN REPLY~You sound as mysterious as always, Sandrah.~ GOTO WantTOTRe6
IF~~THEN REPLY~A price to pay. Is my goddess so greedy?~ GOTO WantTOTRe6
END

IF~~THEN BEGIN WantTOTRe6
SAY~The price will be giving up yourself, <CHARNAME>. It is only through Midnight's eyes and ears and feelings that I can let you experience the tale you want to know.~
IF~~THEN REPLY~I will never do that! I am who I am and I earned it! Forget about the whole thing.~GOTO WantTOTRe2
IF~~THEN REPLY~A high price but I trust you it will be worth it. I am ready for it.~DO~SetGlobal("SanRTFPlot5","GLOBAL",11) ~EXIT
END
END

BEGIN TOPELLIG
BEGIN ToAdon

CHAIN
IF~Global("ToPellJoin","RTF123",1)~THEN ToPellig BuildParty
~Done with your meditation, Midnight?~
=~*The way Pelligram looks at you makes you think for a second she knows everything that has just happened up there on the tower. But a moment later your impression is gone.*~
==ToKelem~I kept your ration save from those hungry beasts we call our companions, come over, have a seat with me, my dear.~
==TOCyric~(Chuckles) The ever caring Kelemvor, hihi. Don't you think our lady can very well care for herself. (Once she frees herself from your protective clutches - or I free her...)~
==ToAdon~While you take your meal, Cyric may as well tell you about the plan he has for us to move from here, now that we found Blackstaff Tower was a failure and we found not what we came here for.~
END
++~But I have the feeling I found something important here...Anyway, let's first eat.~DO~ SetGlobal("ToPellJoin","RTF123",2)ActionOverride("ToKelem",JoinParty()) ActionOverride("ToCyric",JoinParty()) ActionOverride("ToAdon",JoinParty()) ~EXIT
++~(You nod silently and move to your lover Kelemvor who holds your plate ready for you.)~DO~ SetGlobal("ToPellJoin","RTF123",2) ActionOverride("ToKelem",JoinParty()) ActionOverride("ToCyric",JoinParty()) ActionOverride("ToAdon",JoinParty()) ~EXIT

CHAIN
IF~Global("TotParty","RTF123",2)~ THEN CVSan25J Whatnow
~So, Cyric, what is it that you have proposed to the group as our next target.~
DO~SetGlobal("TotParty","RTF123",3)~
==TOCyric~We came here in search of the legendary sword that this halfling named Sneakabout has stolen from the dead corpse I was about to loot...~
==ToKelem~We know this...we also know that your informant stating the halflings gang would be here has erred.~
==ToAdon~He was probably just telling us any place that was far enough away to stop Cyric's *interogation*.~
==TOCyric~You mean that he lied to save his life...hihi, his life he didn't save - and believe me, I know he told the truth, I can see lies and truth in a dying man's eye like nobody else can.~
==ToKelem~Especially if you are the murderer of that man!~
==TOCyric~It was the interogation of a man who attacked us first, paladin, don't go to judging me - not you.~
==ToPellig~Let us come to the point, friends. Cyric is sure that the halflings are still here or they will return to this place soon. The cave we found is not deserted permanently.~
END
++~This mission has failed, Cyric, admit it or not. We will leave now to go to Nashkel nearby and re-stock our equipment.~EXIT
++~Let us go down to the caves and lay an ambush for their return.~EXIT
++~This was a failed trip from the beginning. I need a warm bath and some good food like we get it at Beregost.~EXIT

BEGIN TOSneak

CHAIN
IF~Global("TotParty","RTF123",4)~THEN ToSneak Intrud
~What have we here, friends, well equipped delivery boys bringing us new booty right to our doorstep, hohoho!~
==TOCyric~You have a short memory *dwarf*, hihi, wasn't it you who stole what rightfully belongs to me?~
==TOSneak~Bah, I robbed a thief who was too bloody dumb to collect his booty in time, *half-orc*.~
==TOCyric~This time I am not alone and not unprepared, halfling.~
==TOSneak~This time my men and me get two beautiful adventuring girls on top of the valuables you all carry, hohoho!~
=~Men!! That's worth the fight, isn't it?~DO~SetGlobal("TotParty","RTF123",5) Enemy()~EXIT

CHAIN
IF~Global("TOHasBane","Global",1)~THEN TOCyric hasBane1
~It's mine, finally mine!!~
==CVSan25J~Cyric? What has gotten into you?~
==TOCyric~We have the sword, Godsbane, it is mine now, mine!~
==CVSan25J~*All of a sudden some memory you cannot recall to have ever had flashes up - this is the sword to kill the god Bhaal. You tremble but do not know why. The evil god Bhaal means nothing to you - and who would attempt to kill gods? This feeling you had earlier today returns - something has happened up there on the tower.* ~
==TOPellig~Midnight? You are pale. *Her hand on your shoulder keeps you from swaying.*~
=~This sword means something to you, something you had no idea about when we set out to find it for Cyric, something you know about...since you came down from the tower earlier today...~
==TOCyric~The sword is mine, mine. Stop your bickering about it, you two. It means nothing to you, it's mine.~
==TOPellig~Oh, shut up already, lousy thief.~
=~*As Cyric moves away and out of hearing distance, she continues.*~
=~You saw a piece of your future - or shall I say of OUR future, is that so?~
==CVSan25J~It is different. I had the feeling I remembered my past...~
==TOPellig~*She remains silent for a moment contemplating your words.~
=~If it was your past you saw, be careful with your decisions. You cannot alter your own past without changing your future. Do nothing that makes your future impossible, you will destroy yourself - and maybe much more.~
END
++~(You shout after him) Cyric, keep that damned sword and guard it with your life, guard it with your life!~DO~SetGlobal("TOHasBane","Global",2)~EXIT
++~Cyric!! That sword is not yours, it is party possession, give it back immediately! (But he is already too far away to hear you.)~DO~SetGlobal("TOHasBane","Global",2) IncrementGlobal("Sanpoints","Global",-1) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXIT
++~I have to think about all that, Pelligram, thank you for your care.~DO~SetGlobal("TOHasBane","Global",2)~EXIT

CHAIN
IF~Global("KelSpeak","RTF123",1)~THEN TOKelem Prop1
~It is time to leave this wilderness, there is nothing for us to do here anymore.~
==ToAdon~There was some talk about slavers having overtaken a mine nearby. We should look into that on our way to Nashkel.~
==ToCyric~And free slaves?? A paladin's suggestion, hihi, but not very profitable.~
==TOPellig~A chance to try out your new sword in a battle, Cyric. And nobody will miss those slavers you can slay.~
==ToCyric~That's the spirit I like in you, Pelli-darling, always the practical advisor, hihi.~
==CVSan25J~The Nashkel mines in slaver's hands, you say?~
==ToAdon~I am not sure it were the Nashkel mines they were referring to. There is another minesite right to the north of here, if we follow the bear river for a while.~
END
++~Let us go north, it is probably the mine that may have opened a bit too close to the old Kozah temple north of here.~DO~SetGlobal("KelSpeak","RTF123",2)~ EXIT
++~The Nashkel mine lies on our way back to civilization and shops anyway, let's go there first.~ DO~SetGlobal("KelSpeak","RTF123",2)~ EXIT
++~The nearest way to a bathtub and a mug is on my agenda, friends. All else can wait until later.~ DO~SetGlobal("KelSpeak","RTF123",2)~ EXIT
++~Let us explore this area thoroughly first, before I decide on one of those minesites to visit.~ DO~SetGlobal("KelSpeak","RTF123",2)~ EXIT