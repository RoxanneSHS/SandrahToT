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