BEGIN ToCyric
IF~InParty(Myself) IsGabber("CVsandr")~THEN BEGIN Pid
SAY~Midnight, your interest graces me, my beauty.~
IF~~THEN REPLY~Tell me about Zhentil Keep.~GOTO Cyrzent
IF~~THEN REPLY~I just needed to check your sanity, that's all.~EXIT
IF~Global("TOHasBane","Global",2) Global("Cyrwarn","LOCALS",0) !Dead("Tokelem")~THEN REPLY~I must warn you, Cyric, now that you have Godsbane, leave Kelemvor alone.~DO~SetGlobal("Cyrwarn","LOCALS",1)~GOTO Cyrwarn1
IF~Dead("Tokelem") GlobalLT("Chapter","Global",35)~THEN REPLY~I am really grateful for everything you did after I lost Kelemvor. I always wanted to tell you this.~GOTO Kelemhelp
END

IF~~THEN BEGIN Kelemhelp
SAY~You needed a man to keep you from breaking apart...What else could I do?...I always adored and loved you for your strength and confidence but at that time you were in need of a caring heart yourself.~
IF~~THEN REPLY~And you were there for me, yes.~EXIT
IF~~THEN REPLY~I could not have gone on without your help - and your love...~EXIT
IF~~THEN REPLY~Without that loss, I would probably never have discovered the real Cyric I begun to love.~EXIT
IF~~THEN REPLY~And you seized your chance and stole my heart...forever the thief (sigh).~EXIT
IF~~THEN REPLY~And you seized your chance and stole my heart...forever the thief (smile).~EXIT
END

IF~~THEN BEGIN Cyrzent
SAY~I'd rather show it to you someday, just you and me.~
IF~~THEN REPLY~Oh, you charmer.~EXIT
IF~~THEN REPLY~Oh, you idiot.~EXIT
IF~~THEN REPLY~Oh, you liar.~EXIT
END

IF~~THEN BEGIN  Cyrwarn1
SAY~I don't know how this utter fool crept into your heart, hihi. Mine is always open for you, should you come to your senses (you will sooner or later, oh yes, you will!)~
IF~~THEN REPLY~You have to accept my choice, Cyric, waste your energy elsewhere, it's wasted on me.~EXIT
IF~~THEN REPLY~I KNOW you will murder him, I know it, but I will not let it happen!~DO~IncrementGlobal("Sanpoints","Global",-3) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXIT
END

CHAIN
IF~Global("ToKelemcurse","Global",6)~THEN TOCyric App1
~Say, my good Midnight, do you appreciate the completely animalistic passion of your companion during your nights together, hihi?~
DO~SetGlobal("ToKelemcurse","Global",7)~
==CVSan25J~Is that your sensitive attempt to ask me about Kelemvor's transformation?~
==TOCyric~I know some women like that, the sweat, strength, power of the bull, the lion, yeah, the panther. That's what they seek in a man. Female instinct, take the strongest to protect yourself and your children.~
==CVSan25J~Cyric, I have no children, I can quite well defend myself...and, by the way, Kelemvor's curse may rather been seen as a weakness than an advantage.~
==TOCyric~Hihi, and this, my beloved heroine, is exactly my point - why should a woman like you need him?~
END
++~Cyric, your knowledge of women is as thin as your jokes. Good night.~EXIT
++~The last person in the multiverse to discuss my heart's affairs with is a mad and jealous thief, bugger off.~EXIT
++~A good question, Cyric. However one I contemplate alone and surely nothing I would discuss with you.~EXIT

CHAIN
IF~Global("SanPelcyr1","bg2608",1)~THEN ToPellig Madcyr1Pel
~(While Cyric is busy inspecting the bookshelves for something valuable to steal, Pelligram takes you aside.)~
DO~SetGlobal("SanPelcyr1","bg2608",2)~
=~Did you observe the negative changes in Cyric's behaviour ever since he carries Godsbane?~
==CVSan25J~Cyric is...Cyric. He can be charming or ambitious, a bit mad now and then. What do you think the sword has to do with it, *Pelli-darling*?~
==ToPellig~(Smiles) I agree with those observations, Midnight, and they do not concern me. It is more his increasing lust for bloodshed and killing. ~
END
++~Our situation as a whole has changed since we found Godsbane. It coincided with the current crisis that started at that time. We all shed more blood in this *Time of Troubles*.~+ Madcyr2Pel
++~You are right, Pelligram, but I have not considered yet the sword as a source for that change, rather our current situation as a whole.~+ Madcyr2Pel
++~Does he go on your nerves or why do you try to discredit our thief?~+ Madcyr2Pel

CHAIN
IF~~THEN ToPellig Madcyr2Pel
~It is far from me to discredit a companion. In case my observation is true, he is not to blame but maybe can be considered a victim rather. There are weapons that have some effects on the bearer and may change his or her personality - and I know you know that, my friend.~
=~There are weapons and armours that rather possess the bearer than the bearer possesses them.~
END
++~Trust me, Pelligram. I KNOW we need Godsbane for our success - and only Cyric can handle the sword for us.~EXIT
++~There is a risk here but we need to accept it. Trust my leadership, my kind advisor.~EXIT
++~Even if you were right, we will have no chance to separate Cyric from his new weapon. At least not a peaceful way.~EXIT 

CHAIN
IF~Global("CVTiamal","AR6000",5)~THEN ToCyric Drag1
~This was sheer madness, wasn't it, and none of you ever call ME mad again.~
DO~SetGlobal("CVTiamal","AR6000",6)~
==ToAdon~We had Bane cornered and begging on his knees. The Sword Coast would already be a better place at this very moment.~
==Tolini~The well-being of the majority must have priority over the fate of a single one.~
==Tokelem~Already I regret my selfishness. I should have lived with that curse and freed Faerun from that disease which calls himself a *god*.~
==ToCyric~Blah, blah, old hypocrite, you should've been man enough inside that cave and don't give us this could-have-should-have nonsense now.~
==ToPellig~Cyric, take it as an additional challenge - and digest what we have learned, those gods are quite vulnerable right now.~
==ToCyric~Pelli-darling, if you were only a bit more responsive, you and me could go along so splendidly together, hihi. Guess you have a point, they are weak and we can get them once more and maybe all three of them together. Grab their life and their power, ha.~
=~Once Cyric rules he needs a queen by his side, Pelli, Pelli...~
==ToPellig~Part one is for certain, yes. Part two is just as certain, no.~
END
++~What has been done has been done, we have the chance to suit all sides here. Kelemvor is cured and we know where we find the three. Are we adventurers or cry babies? Blackstaff awaits us once more.~+ Drag2
++~The dice have been cast and a new challenge awaits us. We are friends after all, do not forget that. We helped a friend today and we have not lost our quest by that. Blackstaff awaits us once more.~+ Drag2

CHAIN
IF~~THEN ToCyric Drag2
~Fine, you put that into perspective nicely, Midnight, hihi. A battle half-lost and we can win the war after all.~
==ToLini~That's the spirit we need. This and a bit of rest before we move on.~
==ToAdon~Yes, let us relax our strained nerves for a while.~
==ToKelem~We have foe to fight, not each other. Let us all calm down over night.~
DO~TextScreen("ToKeleE")~EXIT

CHAIN
IF~Global("ToMyrkFi","RTF123",9)~THEN ToCyric Leader1
~(Cyric's voice is calm and decisive as he brings some order into your confused party.)~
DO~SetGlobal("ToMyrkFi","RTF123",10)~
=~Midnight, you take a look at Adon's face, get that bleeding wound under control.~
==CVSan25J~(You examine Adon's slash over the right side of his face and your professional skills take control over the turmoil of your feelings immediately.]~
==ToCyric~Pelligram, see what we can do for Kelemvor right here.~
==ToPellig~(You notice that for the first time Cyric does not use his affected *Pelli-darling* phrasing.)~
==ToCyric~Liriel, make sure that none of those Banites returns for an assault.~
==CVSan25J~Adon, this wound is deep but not dangerous. There will however remain a remarkable scar from it.~
==ToAdon~I hope we will see my goddess soon, we Sunites need to represent the concept of beauty she stands for. She will surely restore me.~
==ToPellig~Cyric, Midnight...about Kelemvor...~
==ToCyric~You did what you can do, dear, we will make haste to bring him to the Temple at Beregost.~
==ToPellig~It is worse than that.~
==ToCyric~Yes?~
==ToPellig~The weapon used against him must have been a soultaker.~
==ToCyric~(Without Cyric's tender embrace you would have swooned at those words.)~
==ToAdon~We need to find that weapon.~
==ToLini~I found no trace of any Banite around here. It is as if they disappeared in smoke.~
==ToPellig~Midnight has at least recovered one of the Tablets of Fate from Myrkul.~
==ToCyric~Hm - so it seems that we need to return to Sune's temple at this time.~
=~Sune may restore Adon's *precious beauty* there and with one of the tablets in our possession we may get the goddesses to divine for the weapon which we need to resurrect Kelemvor.~
END
++~*You are grateful for Cyric's initiative. His decisions are clear and logical. You have no words to thank him and you press instead one of his hands that still steady you at the shoulders.*~EXIT
++~*Cyric's clear and logical actions make you wonder what made the man change so suddenly. At the same time you are thankful to have such a companion at this very moment when your grief over Kelemvor's loss blocks your own initiative.*~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",1)~THEN ToCyric Quest3start1
~Good morning, Midnight. It's a good day for the little surprise we have prepared for you today.~
DO~SetGlobal("ToBaneHunt","Global",2)~
==CVSan25J~Cyric, my dear, the *we* trying to surprise me are you and Elminster?~
==ToCyric~Bah, forget that boy...I don't know what he is up to at the moment...these stupid studies of a dead goddess, his strange disguises...hard to believe he's OUR son.~
==CVSan25J~(Sigh) I noticed that you and him did not get along too good lately. Well, he is at that age...he will soon notice he is a man. And me - I support his studies of the Weave. MY goddess Mystra is alive as long as we believe in her and the Weave.~
==ToCyric~Fine, fine, let's not spoil the day with discussions about such issues. You gave me the right starting point, darling...~
=~Elminster is a man soon, I am getting restless of this family life - I feel it in you as well. We are not yet old enough to retire and the Time of Troubles has been calm until recently but it is not over yet.~
==CVSan25J~Are we adventuring again? Was that my good old Pelligram I heard coming to the house late last night?~
==ToCyric~Not only her - but now let's go downstairs before the whole splendid surprise is spoiled prematurely.~EXIT

CHAIN
IF~Global("CyrElmi","ar0505",1)~THEN ToCyric WhoFath1
~Oh, son, what disguise is that again, you'll not attract the girls that way.~
DO~SetGlobal("CyrElmi","ar0505",2)~
==Toelmi~Traditionally a mage dresses like that.~
==ToCyric~In Zenthil Keep the jesters would dress like that and they'd hang mages anyway without dead Mystra's protection over them nowadays.~
==Toelmi~Mother, must we have such pointless disputes daily? Thou should get that grumpy old thief out to the road again, maybe that wouldst make him more bearable again.~
==TOCyric~"Wouldst Thou" stop talking that way, you make me mad, son, aargh. Get your nose out of those dusty books and start a life, damn it. I take this quarterstaff you carry for show and teach you on your empty head how it is used.~
==ToElmi~I can surely defend myself.~DO~StartCutSceneMode() Wait(2) Polymorph(CAT) Wait(6) DisplayStringWait("Toelmi",@041) Wait(6) Polymorph(ELMINSTER) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("CyrElmi","ar0505",2)~THEN ToCyric WhoFath2
~Oops, what was that, oh my kitten.~
DO~SetGlobal("CyrElmi","ar0505",3)~
==CVSan25J~A small black panther? Where did you learn that, Elminster?~
==Toelmi~What...I did not...Sorry, father just made me so angry and it all got blurred for a moment.~
==ToCyric~(Thoughtful) I've seen that before, even if in a more impressive form than today.~
==ToElmi~Excuse me, please, I need to get my thoughts back together. I am sorry, mother, I should not let myself so get carried away, after all he is the man thou loveth.~DO~EscapeArea()~
==CVSan25J~Yes, I do - and I love you as well, my son.~
==ToCyric~Apologies, Midnight, I had not intended to force such reactions, like...~
==CVSan25J~Kelemvor. You may as well speak the name in my presence, Cyric.~
=~Yes, I was thinking of him as well - but it is not possible. Elminster was born one year after his death, he is your son for sure.~
==ToCyric~(Tries to smile) Too bad, I though there was a slight chance it may not be so.~
==CVSan25J~Oh, come, darling, he is a good boy and you know it.~
==ToCyric~Yeah, yeah, he's your boy so how can he be disappointing. He's just too...eh, different...~
=~Let's go downstairs now, I promised you something and I'm still willing to cheer you up today.~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",16) ~THEN ToCyric Banedone1
~Another bunch of foolish celestials gone. I will soon claim Bane's portfolio from AO.~
DO~SetGlobal("ToBaneHunt","Global",17) EraseJournalEntry(@3040) EraseJournalEntry(@3047) SetGlobal("Chapter","Global",35) AddJournalEntry(@3050,QUEST)~
==ToPellig~Your ambition is still there? You despise them so much and still want to be one of them?~
==TOCyric~They were once mortals but have proven they were not worth their ascension. WE have proven we're better, hihi. There is replacement required and tell me, Pelli-darling, who will be better qualified than those who slay the fools and retrieve the tablets?~
==ToAdon~I would wait with making demands until we really finished the quest - for myself, I would not want to join the *circle* of those useless deities, evil or good. The only thing I agree with, Cyric, is that those fools are a useless bunch.~
==CVSan25J~Cyric, what is happening? Ever since we left our home again to adventure you seem to become the...hm, *old Cyric* once again.~
==ToCyric~We had fun while it lasted, didn't we, hihi. Family and home and all. Times are changing, you got bored of it yourself. Be honest to yourself - you know as well as I know that we're made for bigger things. Cyric will rule, Mystra will rule.~
==CVSan25J~Are you supposing that I may follow the slain goddess I still serve?~
==ToCyric~Exactly, sweetheart, who else? ~
==Tolini~The old mad man has returned, how refreshing. Anyway, Midnight, there is some truth in the babbling of the fool. Once we have Bhaal and the tablet, things need to be restored.~
==ToCyric~Dark beauty, we will find some occupation for you as well, be sure.~
==Tolini~Forget it, Cyric, Eilistraee is all we drow on the surface require and I am more than content to serve her...and maybe her future surface counterpart, a new Mystra.~EXIT