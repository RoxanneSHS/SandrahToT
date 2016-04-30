BEGIN ToDrizzt
BEGIN TONyssty
BEGIN TODrowL
BEGIN ToIren
BEGIN Tobodhi

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
~I am drow but I follow Eilistraee, not Llolth, that much you know already. Thus I was forced to leave Underdark and to live on the surface.~
=~(Sigh) Not everything drowish is despiteful and hateful for me. My kin has valuable smiths and inventors as well as capable mages.~
==TOCyric~You being one of them, if I may say, hihi.~
==Tolini~I could do much better if the drow on the surface could use their waponry and magical items up here in the sunlight.~
==TOAdon~I heard rumours of some artifact that could provide this. Is that where your tale will lead us to?~
==Tolini~You're right, Adon, there is such a thing and I was to acquire it for Eilistraee's followers. It is named Windwalker but it was stolen before I could get it, stolen by the Dragon's Hoard.~
==TOCyric~Let me guess, hihi, our mind blowing beautiful young companion will now ask us to face this organisation for her - and we will say yes and get rich, famous, even if the price is to help such goody good doers like followers of Eilistraee.~
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
==TOPellig~For once mad Cyric is right, Midnight. There is a risk, but Eilistraee's followers are very close to those of your own goddess Mystra, it is almost as if you were tasked by her.~
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
IF~ Global("TOLiriquest","Global",6)~THEN TODrowL Found1
~Why have you come to this place? Any other reason then to search your doom?~
DO~SetGlobal("TOLiriquest","Global",7)~
==Tolini~All signs we followed have indicated that we may find the Dragon's Hoard right here.~
==TODrowL~And if it were true, wouldn't it mean just the same - your doom?~
==ToAdon~We will not pretend we came as new recruits for your gang, so much is true.~
==TOCyric~Old spoilsport, hihi, we could've tried to pretend just that. Just to see their astonished faces when they woke up with their throats slit, hihi.~
==TODrowL~Fine, you are no new recruits and we don't hire anyway. The knowledge about this place is already enough reason to kill you. But the boss may want to question you still about your reason for coming.~
==TOCyric~Ha, who would've guessed it's SOOO easy to get an audience with Nisstyre, hihi.~
==TODrowL~It's not so much an audience but rather a trial. Few survive it with Nisstyre. It's better you follow me now - there is no way back for you anymore.~DO~MoveToPoint([1734.58]) Wait(2) MoveBetweenAreas("tot002",[1188.439],7)~EXIT

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

CHAIN
IF~ Global("TOLiriquest","Global",7)~THEN TONyssty Found2
~Visitors or voluntary additions to my petrified pet collectiion?~
DO~SetGlobal("TOLiriquest","Global",8)~
==TOCyric~Ha, have you ever heard that - a humourous drow, hihi. Liriel-baby, that's worth the price of admission alone!~
==TONyssty~Liriel-baby?~
=~Liriel?~
=~Baenre?~
==Tolini~The very same. You did not expect me?~
==TONyssty~I had reports that the problem was solved. Wasn't that what you said, Tsabrak?~
==TODrowL ~She was on the caravan that left for the mines near Blackstaff tower some while ago.~
==TONyssty~Now she is here. I doubt that some suicidal imposter would use that name, do you agree, Tsabrak?~
==TODrowL~Those adventurers must have helped her escape. She must have persuaded them to assist her in the foolish attempt to gain Windwalker.~
==TONyssty~Tstststs...you see Windwalker, Liriel? Right here, my new favourite pet wears it. Another renegade drow, just like you.~
=~Hm, that would look wonderful - you and him, a pair of fools, side by side in stone. Yes, I think that's how we do it.~
=~Ready, Tsabrak?~
==TODrowL~Just give us the sign, master.~DO~Enemy()~
==TONyssty~NOW!~DO~ForceSpell(Player1,HELL_BUFFET) Wait(4) ForceSpell(Myself,DO_SOME_EFFECTS) CreateVisualEffectObject("SPFIREPI",Myself) Enemy()~EXIT

CHAIN
IF~ Global("TOLiriquest","Global",8)~THEN TODrizzt Found3
~And so a drow comes to release me from the stone prison a drow confined me to?~
DO~SetGlobal("TOLiriquest","Global",9)~
==Tolini~I am...YOU are Drizzt! Drizzt Do'Urden!!~
==TODrizzt~I was, at least last time I could move my limbs.~
==Tolini~Liriel Baenre, and you have nothing to fear from us, myself I am a follower of Eilistraee.~
=~This is Midnight, priestess of Mystra, and those are Pelligram, Cyric, Adon and Kelemvor.~
==TODrizzt~Well met, and thank you for my rescue. However I assume you did not come here to rescue a drow who just has escaped the Underdark.~
==CVSan25J~You are correct, Drizzt. We came to help Liriel to retrieve an artefact, actually the very amulet your capturer used to decorate you with.~
==TODrizzt~It is not mine and I am happy to give it to you in gratitude for my rescue. I am just curious what it is that it makes you face such an opponent.~
==Tolini~I do not seek it for myself but for the benefit of all of us who have fled the Underdark. The Windwalker may allow drow to use their items and magic on the surface.~
==TODrizzt~My own swords are not depending on the Faerzress, the Underdark radiation required by our magic. But I imagine, such a thing is of great value for those who follow your goddess.~DO~GiveItem("Toliamu","Tolini")~
==CVSan25J~Thank you, Drizzt. The way we came is cleared. If you follow our path, you eventually will come to the surface in a town called Waterdeep. Not far from where you come out of the Undermountain is a temple of Mystra. Tell them that Ariel Manx of Deepingdale sends you and you will have an initial shelter on the surface.~
==TODrizzt~I will do that, Ariel, who calls herself Midnight. ~DO~MoveBetweenAreas("CVelm3",[352.380],12) ~EXIT

CHAIN
IF~ Global("TOLiriquest","Global",10)~THEN TOCyric Found4
~And, my drow beauty, what is it we do with that thingy that made us come here? (Ah, it would grace your beautiful neck just so splendid...)~
DO~SetGlobal("TOLiriquest","Global",11)~
==Tolini~It has to be brought to the right location to expell its power from there all over Faerun.~
==ToAdon~Huh, and this place may by any chance not be just around the corner.~
==ToPellig~One quest starts where another just finished - the life of an adventurer.~
==ToKelem~When I look into Liriel's face, I see despair. There may be some difficulty expected with that place we seek.~
==Tolini~There may or maybe not. (Sigh) Maybe in your company we have a chance. The place is in the High Forest of Tethir.~
==CVSan25J~Elven territory, not the best place for a drow to visit.~
==Tolini~You hit the spot, Midnight. We need to go to a clearing just outside of Suldanessalar. It is not to be expected that we can go there unnoticed by my surface brothers. I can just hope, they give a dark elf the chance to declare her alignment before they perforate me with arrows.~DO~AddexperienceParty(12200) AddJournalEntry(@020,QUEST)~EXIT

CHAIN
IF WEIGHT #-7~ Global("TOLiriquest","Global",12)~THEN C6Elhan2 Found5
~STAND, intruders, do not move a hand and state your purpose!~
DO~SetGlobal("TOLiriquest","Global",13)~
==ToAdon~Greetings, elf, we come in peace.~
==Warsage~True, they do not carry harm in their hearts.~
==C6Elhan2~My diviners will evaluate your words and find truth and lies in your words with no doubt. Lie and die.~
==ToCyric~Oooh, a loveable society.~
==Warsage~Neither true nor false, these words are without value.~
==C6Elhan2~You come on some purpose I assume. I give you one minute to justify the presence of the DROW before I give my archers the command to fire.~
==CVSan25J~The drow - her name is Liriel Baenre - is the reason we came.~
==Warsage~True, their feelings for the drow female are friendly.~
==Tolini~Judge not by colour alone, elf. The friendship with my comrads is possible because I do not follow the ways of my kin and the ways of Lloth. I swear my allegiance to Eillestraee.~
==Warsage~True, completely true.~
==C6Elhan2~Fine - the minute is over and my archers will not fire. The Dark Lady is better than the Spider Queen and we have not seen harm done by her followers. You will live but I see no reason yet to let you transgress further into our city.~
==Tolini~We have not come to visit the city and you may only have to endure our unwanted presence for a short while. Our destination is a small clearing to the northeast of the city.~
==Warsage~True, true they only want access to the clearing.~
==ToCyric~Oh, shut up already!! You know we tell the truth and your elven pomp is of no interest to us.~
==Warsage~True...~
==TOCyric~I warned you, this blade is quick and deadly, you nag!~
==Warsage~Tr...ah, your words are of no importance.~
==C6Elhan2~Why should the clearing be of interest to you. It is an old mystical place even if nobody knows of the origin of the powers that reside there.~
==Tolini~Maybe nobody remembers them anymore - they may be very ancient, probably from the time before your and mine kin separated.~
==C6Elhan2~You are no imminent danger to us, so much is clear. The issues you come for are beyond a soldier's competence. For this you need to see our Queen and her advisor. I will send a messenger ahead as you will not enter the palace or the Tree of Life.~
=~Ellesime and Jon Irenicus will meet you outside of the palace gate's in the nortwest of the city.~
==CVSan25J~Jon Irenicus! Beware of that man!~
==C6Elhan2~What is your reason the discredit the Queen's mage, advisor...and lover, stranger?~
END
++~Nothing, general, it was an error...I...I misunderstood the name. It is nothing.~ + Found6
++~The man will betray Ellesime and your town and will bring harm and destruction over the Realms.~ DO~IncrementGlobal("Sanpoints","Global",-1) ScreenShake([4408.3222],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~ + Found7

CHAIN
IF~~THEN C6Elhan2 Found6
~Fine, make haste to see the queen. I will tolerate the *good* drow's presence in this city only as long as it is absolutely necessary.~EXIT

CHAIN
IF~~THEN C6Elhan2 Found7
~I hope Ellesime will forgive you such outburtst, stranger. Make haste to see her. I will tolerate the *good* drow's presence and your own in this city only as long as it is absolutely necessary.~EXIT

CHAIN
IF ~Global("ToMeetBo","ar2800",1)~THEN Tobodhi novamp
~Ssssh, the visitors I heard talking about.~
DO~SetGlobal("ToMeetBo","ar2800",2)~
==CVSan25J~Irenicus's sister Bodhi?~
==Tobodhi~How come you to know? Yes, I am.~
=~(She sneaks up to Liriel and touches the astonished drow's face with her fingertips.)~
=~Sssssh, this is how our dark sisters feel to the touch, interesting, not much different from us, I dare to say...~
==CVSan25J~Beware, Liriel, watch your throat, she's a vampire...~
==ToPellig~(Pelligram gives you a sharp glance.) Midnight!~
==Tobodhi~A vampire, ssssh, an interesting idea. An elf's life is long - but a vampire's non-life is forever...an eternity to use the power we are gaining.~
==CVSan25J~(All of a sudden you shudder - have you just planted a wild idea into a wild woman's mind which may have some terrible consequences?)~
==Tocyric~Isn't she lovely? - I'd even adore you as a vampire, darling.~
==Centeo~Come, Bodhi, we kept them long enough, we have a thing to do, don't forget.~
==Tobodhi~Right, Centeol, it was fun to meet some outsiders, it always is.~
=~My brother and his dumb do-good queenie wait for you outside the palace.~
==Centeo~He really deserves a better woman than her, your wonderful brother.~DO~MoveToPoint([2068.3188]) EscapeAreaDestroy(55)~
==Tobodhi~He deserves you. (sigh) Come, Centeol.~DO~MoveToPoint([2068.3188]) EscapeAreaDestroy(55)~EXIT

CHAIN
IF ~ Global("TOLiriquest","Global",13)~THEN Toiren FoundJ
~Ha, the outsider scum approaches, my queen.~
DO~SetGlobal("TOLiriquest","Global",14)~
==RTElles~Let us greet them, Joneleth. I heard the drow is a follower of Eilestrsee.~
==Toiren~Pfft, that makes her even more pathetic than her kin usually is.~
==Tolini~I greet you queen Ellesime and I thank you for hearing me out. It is just a little thing I came to ask you for and we will leave your city as soon a possible again.~
==Toiren~As if you had any choice, *drow*. You will do as you are told or feel our wraith.~
==ToPellig~There is no need for threats or hostility, Irenicus. All we ask for is a one time access to the clearing in the northeast of the city.~
==Toiren~A drow and her bunch of miserable companions want to visit a clearing. Are you joking? Are we fools to listen to such ramblings, my queen?~
==RTElles~Joneleth, dear, they will have a reason. They are fearless enough to come into an elven city knowing they would not be welcome to ask for a passage to a clearing. Liriel, that was the name the messenger mentioned, right?~
==Tolini~Liriel Baenre, mylady. The clearing we seek is a magical location, my companion Midnight, a priestess of Mystra, assumes that it may be as old as the times when our races were still one.~
==RTElles~Your Midnight is correct in this, the place was sacred even before Rillifane blessed this settlement. In a way that gives even a drow that is not hostile towards us a right to go there.~
==Toiren~To do what, my queen? Surely not to contemplate on the landscape. What treachery is in your dark mind?~
==TOCyric~Hihi, I like the guy, how he plays the bad bad protector of his goody-good queen...~
==Tolini~We have gained an old item that needs the magic of the old sanctum. From that location it can enable Eilestraee's followers to use their magic and items on the surface.~
==Toiren~Bah, treachery! Not only any follower of your goddess but ANY DROW would be able to use their items and magic on the surface - AGAINST US!~
==RTElles~As much as I understand your request, Liriel, but here Joneleth is correct. Any drow item could be used with your device, regardless of who uses it.~
==ToPellig~Queen Ellesime, would it not be possible that your most potent mage, the man you trust most of all, can help us with this?~
==Toiren~That would be me? What do you propose, strange woman?~
==ToPellig~Your powerful magic should be able to conjure a restrictive ban on the use of Windwalker's power to limit it to good aligned drow. The item will be right here under your direct control - you could easily destroy it when you find it misused.~
==TOCyric~Pelli-baby, how I admire your wisdom...(if it would only extend to your choice of men...)~
==RTElles~What do you say, Joneleth?~
==Toiren~Hm.~
=~Yes, my power is such that I can do it. Try to betray me and you will suffer the consequences. ~
=~Give me the item, drow, I will do the modification.~ DO~ClearAllActions() StartCutSceneMode() Wait(2) TakePartyItem("ToLiAmu") SmallWait(5) ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) SmallWait(5) ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) SmallWait(5) GiveItemCreate("ToLiAm2","Tolini",1,1,0) Wait(2) EndCutSceneMode()ActionOverride("RTElles",MoveToPoint([500.500])) ActionOverride("RTElles",EscapeAreaDestroy(70)~EXIT

CHAIN
IF WEIGHT #-11~AreaCheck("ar2807") Global("adalon","ar2807",1) !PartyHasItem("ToLiAm2")~THEN Udsilver  WrongIt
~The presence of a powerful item in your possession has caught my attention.~
DO~SetGlobal("TOLiriquest","Global",15) SetGlobal("adalon","ar2807",2)~
==Tolini~It is Windwalker, an item that from this location will allow the followers of my goddess Eilestraee to use the magic and items of my race on the surface.~
==Udsilver~Yes, it will do that. You are a follower of a good goddess unlike the majority of your kin.~
=~Ever since the dark elves descended down to the First City, my task has been to prevent an invasion of one elven race against the other. Your intention may be good but it is causing this stability to be broken.~
==Tolini~But why?~
==Udsilver~Your item will allow ALL drow to use their power on the surface. Those not following your goddess will soon use this feature to their advantage. You know them well, you are one of them. It will be a bloody slaughter.~
=~I cannot allow that!~DO~Enemy() ~EXIT

CHAIN
IF WEIGHT #-11~AreaCheck("ar2807") Global("adalon","ar2807",1) PartyHasItem("ToLiAm2")~THEN Udsilver  RightIt
~The presence of a powerful item in your possession has caught my attention.~
DO~SetGlobal("TOLiriquest","Global",15) SetGlobal("adalon","ar2807",4)~
==Tolini~It is Windwalker, an item that from this location will allow the followers of my goddess Eilestraee to use the magic and items of my race on the surface.~
==Udsilver~Yes, it will do that. You are a follower of a good goddess unlike the majority of your kin.~
=~Ever since the dark elves descended down to the First City, my task has been to prevent an invasion of one elven race against the other. ~
==Tolini~The mage Irenicus has modified the item to prevent its use by all that are of evil nature. It will give me and my friends a chance to survive on the surface but grant no advantage to the slaves of Lolth.~
==Udsilver~What you say is the truth. Give me the item, I will be its guardian to preserve the balance between the dark and the surface elves. All that forsake the Spider Queen will walk the surface with the support of Windwalker from now on.~DO~TakePartyItem("ToLiAm2") Wait(2) DestroySelf()~ EXIT

CHAIN
IF~AreaCheck("ar2800")Global("SanTotStart","Global",1)~THEN RTElles InToT1
~Here they are, as announced.~
END
++~Greetins, Ellesime~ EXTERN TOIren FoundJ

CHAIN
IF WEIGHT #-9~Global("TOLiriquest","Global",16)~THEN Sudemin Killjon1
~On a word among friends, please, strangers.~
DO~SetGlobal("TOLiriquest","Global",17)~
==ToCyric~How would you know we are friends when we are strangers to you, hihi?~
==Sudemin~I have overheard both your conversation with Elhan and Ellesime, so I know about your suspicion concerning Irenicus.~
=~I am Demin, high priestess of Rillifane Rallathil who founded Suldanessalar. I am also protector of the Tree of Life, the source of our existance.~
==ToPellig~Even if Midnight's and your suspicions are correct when it comes to your Queen's protege, we are nothing but outsiders passing through.~
==Sudemin~This makes you valuable as you can act where my friends and me cannot. Irenicus is the most powerful mage we have ever had, but he and his sister Bodhi are fuelled by hunger and greed for ever more power. Ellesime is blind to all warnings and lets Irenicus do *experiments* on the Tree of Life itself.~
==CVSan25J~History books are full of that story - the mage getting more and more power until he thinks he can even challenge the gods.~
==Sudemin~I see that you understand, my friend. It may be just a matter of time until Bodhi will drive her brother to commence some sacrilege on the Tree and raise the anger of the Seldarine.~
==ToCyric~Hihi, a little backstabbing may remove your problems.~
==TOLini~Those are suspicions only. We have met Irenicus and he has helped me with his magic to do my work for Eilistraee. I admit, he is arrogant and has quite some influence on Ellesime but we cannot interfere in foreign affairs in such a way.~
==ToAdon~We are no assassins. Your accusations may just be jealousy as the queen listens more to him than to her priests but those are internal affairs.~
==ToKelem~Our standing in this city is flimsy. We were tolerated just for a single passage, we will not risk a civil war here.~
==Sudemin~I understand your reservations, and it was a mistake to ask you. My arguments are thin and I am afraid that more harm needs to befall our city before the truth is revealed...~DO~EscapeAreaDestroy(65)~
==TOPellig~Sometimes a thunderstorm must come to clear the air. Often it requires destruction in order to re-build. Even if many must suffer for it.~
END
++~Yes, many must suffer for it, I know it - I am - I will be - one ot them...we must act here and now. Irenicus must die.~ EXIT
++~Yes, many must suffer for it, I know it - I am - I will be - one ot them...but it is unavoidable in the great scheme of things. Acting now will end in an even greater catastrophe.~ EXIT
++~I am sorry, but your suspicion, even my own, is too weak to make a case. ~EXIT