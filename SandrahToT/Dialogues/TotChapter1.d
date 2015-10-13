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
IF~Global("ToSleep","Global",3)~THEN Tolini TOLiniQuest1
~So, Midnight, you are more or less famous adventurers from what I heard from our comrades so far?~
==TOCyric~It's sometimes not too desireable to be too famous, my dark beauty, hihi. (oh, these drow women...they are really up to their reputation, at least this specimen.)~
==Tolini~You mean as a thief? Well, you may be right. Unless you are so famous that your possible employers deem you capable to steal just about everything.~
==TOAdon~Liriel, I have the feeling this is not a hypothetical discussion at all.~
==TOKelem~There are those organised thiefs that make their fortune because they are well known and people hire them for a lot of gold to get them the artifacts they desire.~
END
++~Like the Bregan D'aerthe of your kin?~DO~SetGlobal("ToSleep","Global",4) SetGlobal("TOLiriquest","Global",1)~ + TOLiniQuest2
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
++~Provided we take up that quest, the place to start investigating would be Waterdeep. Skullport would be somewhere within Undermountain.~DO~AddexperienceParty(6000) RestParty()~EXIT
++~The High Forest is out of question without any further hints. That would be searching a needle in a haystack. Skullport is unaccessible they say...Or shall I say *it was* because WE never tried until now.~DO~AddexperienceParty(7000) RestParty()~EXIT
++~I am not sure we should embark on this quest.~DO~IncrementGlobal("Sanpoints","Global",-1) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~ EXTERN Tocyric TOLiniQuest4

CHAIN
IF~~THEN Tocyric TOLiniQuest4
~I'd call everone aside our beloved Midnight a coward for such words, hihi, but maybe our heroine is just a bit too cautious today. My dear, no risk no fun!~
==TOAdon~For once mad Cyric is right, Midnight. There is a risk, but Eilestrae's followers are very close to those of your own goddess Mystra, it is almost as if you were tasked by her.~
END
++~So be it. Let us go to Waterdeep.~DO~RestParty()~EXIT
++~This may really be a quest for Mystra, so be it.~DO~RestParty()~EXIT
