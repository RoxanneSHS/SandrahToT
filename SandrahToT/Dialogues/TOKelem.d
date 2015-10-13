BEGIN ToKelem
IF~InParty(Myself) IsGabber("CVsandr")~THEN BEGIN Pid
SAY~Midnight, my daystar and beloved?~
IF~~THEN REPLY~Give me a kiss, Kelemvor.~EXIT
IF~~THEN REPLY~I just needed to hear your voice, dear, that's all.~EXIT
IF~Global("TOHasBane","Global",2) Global("Cyrwarn","LOCALS",0)~THEN REPLY~My love, I must warn you of Cyric, now that he has Godsbane in his hands.~DO~SetGlobal("Cyrwarn","LOCALS",1)~GOTO Cyrwarn1
END

IF~~THEN BEGIN Cyrwarn1
SAY~I am aware that he tries to steal your heart from me, thief that he is, but I trust in my love for me.~
IF~~THEN REPLY~As long as you are by me there will be no other.~EXIT
IF~~THEN REPLY~He's an assasin, he will not only steal but murder for what he wants.~GOTO Cyrwarn2
END

IF~~THEN BEGIN Cyrwarn2
SAY~Midnight, he is our thief and useful and thus we keep him. He knows he is nothing without us and will never turn against us. Even as mad as he sometimes is, I never took him for a traitor or murderer.~
IF~~THEN REPLY~(Sigh) May you stay right in that, Kelemvor.~EXIT
IF~~THEN REPLY~I KNOW he will murder you, I know it, cannot you understand that!~DO~IncrementGlobal("Sanpoints","Global",-3) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXIT
END