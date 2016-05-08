BEGIN ToCyric
IF~InParty(Myself) IsGabber("CVsandr")~THEN BEGIN Pid
SAY~Midnight, your interest graces me, my beauty.~
IF~~THEN REPLY~Tell me about Zenthil Keep.~GOTO Cyrzent
IF~~THEN REPLY~I just needed to check your sanity, that's all~EXIT
IF~Global("TOHasBane","Global",2) Global("Cyrwarn","LOCALS",0)~THEN REPLY~I must warn you, Cyric, now that you have Godsbane, leave Kelemvor alone.~DO~SetGlobal("Cyrwarn","LOCALS",1)~GOTO Cyrwarn1
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
==TOCyric~I know some women like that, the sweat, strength, power of the bull, the lion, yeah, the panther. That's what they seek in a man. Female instinct, take the strongest to defeat yourself and your children.~
==CVSan25J~Cyric, I have no children, I can quite well defend myself...and, by the way, Kelemvor's curse may rather been seen as a weakness than an advantage.~
==TOCyric~Hihi, and this, my beloved heroine, is exactly my point - why should a woman like you need him?~
END
++~Cyric, your knowledge of women is as thin as your jokes. Good night.~ EXIT
++~The last person in the multiverse to discuss my heart's affairs with is a mad and jealous thief, bugger off.~EXIT
++~A good question, Cyric. However one I contemplate alone and surely nothing I would discuss with you.~EXIT

CHAIN
IF~Global("CVTiamal","AR6000",5)~THEN ToCyric Drag1
~This was sheer madness, wasn't it, and none of you ever call ME mad again.~
DO~SetGlobal("CVTiamal","AR6000",6)~
==ToAdon~We had Bane cornered and begging on his knees. The Sword Coast would already be a better place at this very moment.~
==Tolini~The wellbeing of the majority must have priority over the fate of a single one.~
==Tokelem~Already I regret my selfishness. I should have lived with that curse and freed Faerun from that desease which calls himself a *god*.~
==ToCyric~Blah, blah, old hypocrite, you should've been man enough inside that cave and don't give us this could-have-should-have nonsense now.~
==ToPellig~Cyric, take it as an additional challenge - and digest what we have learned, those gods are quite vulnerable right now.~
==ToCyric~Pelli-babe, if you were only a bit more responsive, you and me could go along so splendidly together, hihi. Guess you have a point, they are weak and we can get them once more and maybe all three of them together. Grab their life and their power, ha.~
=~Once Cyric rules he needs a queen by his side, Pelli,Pelli...~
==ToPellig~Part one is for certain, yes. Part two is just as certain, no.~
END
++~What has been done has been done, we have the chance to suit all sides here. Kelemvor is cured and we know where we find the three. Are we adventurers or cry babies? Blackstaff awaits us once more.~ + Drag2
++~The dice have been cast and a new challenge awaits us. We are friends after all, do not forget that. We helped a friend today and we have not lost our quest by that. Blackstaff awaits us once more.~+ Drag2

CHAIN
IF~~THEN ToCyric Drag2
~Fine, you put that into perspective nicely, Midnight, hihi. A battle half-lost and we can win the war after all.~
==ToLini~That's the spirit we need. This and a bit of rest before we move on.~
==ToAdon~Yes, let us relax our strained nerves for a while.~
==ToKelem~We have foe to fight, not each other. Let us all calm down over night.~
DO~ TextScreen("ToKeleE")~EXIT