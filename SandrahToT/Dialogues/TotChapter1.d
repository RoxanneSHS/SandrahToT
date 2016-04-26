CHAIN
IF~Global("ToSleep","Global",1)~THEN CVSan25J Sleepkel1
~*At first you shudder as a body enters your bedroll as you just started to doze off. But then - your body seems to automatically respond to the man's nearness.*~
==ToKelem~You are irritated by something today, my love, I have sensed it from the moment you climbed up alone onto the pinacle of Blackstaff Tower. Too tired to talk?~
END
++~Yes, it has been a long eventful day. No need to worry, Kelemvor,...and thanks for caring.~DO~SetGlobal("ToSleep","Global",2)~+ Sleepkel2
++~I cannot explain it, Kelemvor, I just feel that great and dangerous things are awaiting us not too far in the future.~DO~SetGlobal("ToSleep","Global",2)~EXTERN Tokelem Sleepkel3

CHAIN
IF~~THEN CVSan25J Sleepkel2
~You feel save and assured an Kelemvor's strong arms that hold you embraced. He is the man you love and who shares your bed every night. Your strange thoughts that haunted you all day vanish gradually.~
==ToKelem~Goodnight, Midnight.~
END
++~Goodnight, my love.~DO~RestParty()~EXIT
++~Forget my moods, Kelemvor, we know how you can improve them, oh, yes, I know you can!~DO~RestParty()~EXIT

CHAIN
IF~~THEN ToKelem Sleepkel3
~We have a good company assembled, my dear. Even if at times there seem to be some tension between us, over all we work good and effective and one guards the other one's back if we are under common pressure.~
END
++~Or stab it if you are not careful...I hope you get not careless, I'd hate to loose you. Enough of my doomsaying, let us sleep now.~DO~RestParty()~EXIT
++~Forget my moods, Kelemvor, we know how you can improve them, oh, yes, I know you can!~DO~RestParty()~EXIT

CHAIN
IF~Global("Tolini","BG4100",8)~THEN ToAdon Mine1
~The mine site those slaves were bound for is quite near, we should see if more of those bastards are around waiting for our swords to pierce them.~
DO~SetGlobal("Tolini","BG4100",9)~
==ToCyric~Hihi, my new sword is ready to strike, a marvelous weapon.~
==ToLini~Be careful friends, from what I have seen these slavers are no easy prey.~
==ToKelem~Let's finish what we begun.~
==TOPellig~We do not want them on our back, so let us rather face them before they find their dead companions.~
END
++~Enough bloodshed for one day, I say.~EXIT
++~I hate unfinished business, let us pay them a visit.~EXIT

//Liriel' Quest
CHAIN
IF~Global("ToSleep","Global",3)~THEN Tolini TOLiniQuest1
~So, Midnight, you are more or less famous adventurers from what I heard from our comrades so far?~
==TOCyric~It's sometimes not too desireable to be too famous, my dark beauty, hihi. (oh, these drow women...they are really up to their reputation, at least this specimen.)~
==Tolini~You mean as a thief? Well, you may be right. Unless you are so famous that your possible employers deem you capable to steal just about everything.~
==TOAdon~Liriel, I have the feeling this is not a hypothetical discussion at all.~
==TOKelem~There are those organised thiefs that make their fortune because they are well known and people hire them for a lot of gold to get them the artifacts they desire.~
END
++~Like the Bregan D'aerthe of your kin, Liriel?~DO~SetGlobal("ToSleep","Global",4) SetGlobal("TOLiriquest","Global",1)~ + TOLiniQuest2
++~Like the shadow thieves of Athkatla?~DO~SetGlobal("ToSleep","Global",4) SetGlobal("TOLiriquest","Global",1)~ + TOLiniQuest2

CHAIN
IF~~THEN Tolini TOLiniQuest2
~I know nothing of those, Midnight. The organisation that troubles me calls themself the Dragon's Hoard.~
==TOCyric~A quite boastful name, hihi, they must be either dwarves or...drow.~
==TOKelem~They are indeed drow, silly thief, you should know that. At least it's drow that lead them, even if other scum is in their ranks as well.~
==TOAdon~Like those red wizards we defeated to free you, Liriel.~
END
++~Is there some connection to your captivity?~+ TOLiniQuest3
++~You best start to tell us the truth - starting at the beginning.~ + TOLiniQuest3

CHAIN
IF~~THEN Tolini TOLiniQuest3
~I am drow but I follow Eilestrae, not Llolth, that much you know already. Thus I was forced to leave Underdark and to live on the surface.~
=~(Sigh) Not everything drowish is despiteful and hateful for me. My kin has valuable smiths and inventors as well as capable mages.~
==TOCyric~You being one of them, if I may say, hihi.~
==Tolini~I could do much better if the drow on the surface could use their waponry and magical items up here in the sunlight.~
==TOAdon~I heard rumours of some artifact that could provide this. Is that where your tale will lead us to?~
==Tolini~You're right, Adon, there is such a thing and I was to acquire it for Eilestrae's followers. It is named Windwalker but it was stolen before I could get it, stolen by the Dragon's Hoard.~
==TOCyric~Let me guess, hihi, our mind blowing beautiful young companion will now ask us to face this organisation for her - and we will say yes and get rich, famous, even if the price is to help such goody good doers like followers of Eilestrae.~
==Tolini~I am one of them, Cyric.~
==TOCyric~None of us is perfect, hihi, my otherwise nearly perfect beauty. (Ouch, that might have backfired...)~
==Tolini~If Cyric would let me continue, please...~
=~...the Dragon's Hoard are an organisation specialised in assassination, slave trade and the retrieval of otherwise unachievable artifacts. They are led by a drow wizard named Nisstyre. They are rumored to have strongholds at Skullport and High Forest. And that, my friends, is about all I know about them. ~
=~Ah, and yes, they have Windwalker and they knew I was after it, that is why they captured me and tried to force me into slavery in their new mine.~
END
++~Provided we take up that quest, the place to start investigating would be Waterdeep. Skullport would be somewhere within Undermountain.~DO~AddJournalEntry(@015,QUEST) AddexperienceParty(6000) RestParty()~EXIT
++~The High Forest is out of question without any further hints. That would be searching a needle in a haystack. Skullport is unaccessible they say...Or shall I say *it was* because WE never tried until now.~DO~AddJournalEntry(@015,QUEST) AddexperienceParty(7000) RestParty()~EXIT
++~I am not sure we should embark on this quest.~DO~IncrementGlobal("Sanpoints","Global",-1) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~ EXTERN Tocyric TOLiniQuest4

CHAIN
IF~~THEN Tocyric TOLiniQuest4
~I'd call everyone aside our beloved Midnight a coward for such words, hihi, but maybe our heroine is just a bit too cautious today. My dear, no risk no fun!~
==TOPellig~For once mad Cyric is right, Midnight. There is a risk, but Eilestrae's followers are very close to those of your own goddess Mystra, it is almost as if you were tasked by her.~
END
++~So be it. Let us go to Waterdeep.~DO~AddJournalEntry(@015,QUEST) RestParty()~EXIT
++~This may really be a quest for Mystra, so be it.~DO~AddJournalEntry(@015,QUEST) RestParty()~EXIT

CHAIN
IF~Global("TOLiriquest","Global",4)~THEN Tolini TOLiniQuest10
~This may not make our task easier. I had the slight hope that my escape from the slavers may remain unnoticed here in Waterdeep.~
DO~SetGlobal("TOLiriquest","Global",5)~
==TOPellig~Do you think they know you will come to finish your task?~
==Tolini~If they had doubts before, they will soon know we are here.~
==Tocyric~They will count 2 and 2 together and see why we came, hihi.~
==Tokelem~THEY may even come up with some reasonable result in their calculation, thief.~
==TOPellig~Waterdeep is a big city. We should focus on finding access to Undermountain.~
END
++~I know it. There is an old graveyard east of Mystra's temple. The entrance to one part of the cave system is there.~EXIT
++~I will lead on from here. I have been to my goddess temple here in town. We once sealed the entrance to some caves in a graveyard east of the temple. It is said these caves have a connection to Undermountain.~EXIT

CHAIN
IF~Global("TOHaiass","Global",1) ~THEN Tocyric TOHaiCit
~This wolf is abnormal in his way to follow you, Pelli-darling.~
DO~SetGlobal("TOHaiass","Global",2) ~
==ToPellig~Haiass is loyal to me ever since we met. But maybe *loyalty* is not a word you are too familiar with.~
==Tocyric~I just hope you won't get us in trouble, hihi, walking city streets accompanied by a beast.~
==CVSan25J~Are you now talking about Haiass or about yourself?~
==ToPellig~A beast like you can get us in trouble much easier than my animal companion. I trust him more than I trust you.~
==Tocyric~Uh? Our girls are easily upset these days, hihi. Let's find an inn and raise a glass to friendship and loyalty.~
END
++~The first decent words I heard from you today, Cyric.~EXIT
++~Ha, and I will have Adon lecture you about those two words you just issued without even getting red in the face.~EXIT
++~Oh, yes, I need a drink, I need to get some really weird thoughts out of my mind quickly.~EXIT


//_______________________________________________________________________
CHAIN
IF WEIGHT #-2~Global("TOLiriquest","Global",2)~THEN Ammerc07 Linisee
~News travels faster than you, drow. Quite stupid to return.~
DO~SetGlobal("TOLiriquest","Global",3) ~
==Tolini~My capturer again. Thank you for coming, it spares us the trouble to seek for you.~
==Tocyric~Fool, can't you see our drow beauty is not alone this time, hihi. Pleeease, do us a favour and try to touch her, so we have reason to kill you, pleeease.~
==TOAdon~The gallantry of a madman, Cyric. Whatever your motif, the outcome is the same. Try to touch her, so we have reason to kill you.~
==Ammerc07~I've orders to discuss nothing. You will be laid in chains - and while we're at it, those others will bring a nice extra price, I guess.~ DO~Enemy()~EXIT

CHAIN
IF WEIGHT #-2~Global("TOLiriquest","Global",5)~THEN Ammerc07 Linisee2
~The drow and her bunch are stupid enough to persue the Dragon's Hoard, it seems.~
DO~SetGlobal("TOLiriquest","Global",6) ~
==CVSan25J~Has anyone doubted that we came to the right place?~
==ToPellig~No doubt, Midnight. Only too bad they await us.~
==ToCyric~Yeah, some sneak attack would've been easier, hihi.~
==Tolini~Friends, we are not turning away just because of some hirelings standing in our path?~
==ToCyric~Drow baby, watcha think of us, the fun is just starting (oh, those sparkling eyes when she gets angry...)~
==Ammerc07~What a pathetic bunch of fools. You seem to have no idea whom that they are facing.~DO~ENEMY()~
END
++~We are on this quest with you, Liriel, no doubt.~EXIT
++~This just gets more interesting with every new step.~EXIT

CHAIN
IF WEIGHT #-41~Global("SanTotStart","Global",1) ~THEN SaMystp1 InTot
~We swear allegiance to the Lady, Mistress of the Mysteries, Mystra.~
=~ Greetings, Mylady Midnight. It is a pleasure to greet the most talented disciple of the Deepingdale temple as our guest today.~
END
++ ~ Chosen Priestess Rhathona, we greet you but we have no need for the Temple's services today.~EXIT
++~ Thank you for the warm welcome, Chosen Priestess Rhathona, what does your house offer to us?~ DO ~ StartStore("CVMystem",LastTalkedToBy(Myself))~ EXIT

CHAIN
IF WEIGHT #-4~Global("SanTotStart","Global",1) ~THEN SAMYSTP2  InTot2
~We swear allegiance to the Lady, Mistress of the Mysteries, Mystra.~
=~Welcome, be our guests.~EXIT
