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