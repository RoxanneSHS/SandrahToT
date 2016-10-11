BEGIN CVGuntt
BEGIN ToKelem
IF~InParty(Myself) IsGabber("CVsandr")~THEN BEGIN Pid
SAY~Midnight, my daystar and beloved?~
IF~~THEN REPLY~Give me a kiss, Kelemvor.~EXIT
IF~~THEN REPLY~I just needed to hear your voice, dear, that's all.~EXIT
IF~Global("TOHasBane","Global",2) Global("Cyrwarn","LOCALS",0)~THEN REPLY~My love, I must warn you of Cyric, now that he has Godsbane in his hands.~DO~SetGlobal("Cyrwarn","LOCALS",1)~GOTO Cyrwarn1
END

IF~~THEN BEGIN Cyrwarn1
SAY~I am aware that he tries to steal your heart from me, thief that he is, but I trust in your love for me.~
IF~~THEN REPLY~As long as you are by me there will be no other.~EXIT
IF~~THEN REPLY~He's an assasin, he will not only steal but murder for what he wants.~GOTO Cyrwarn2
END

IF~~THEN BEGIN Cyrwarn2
SAY~Midnight, he is our thief and useful and thus we keep him. He knows he is nothing without us and will never turn against us. Even as mad as he sometimes is, I never took him for a traitor or murderer.~
IF~~THEN REPLY~(Sigh) May you stay right in that, Kelemvor.~EXIT
IF~~THEN REPLY~I KNOW he will murder you, I know it, cannot you understand that!~DO~IncrementGlobal("Sanpoints","Global",-3) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXIT
END

CHAIN
IF~Global("ToKelemcurse","Global",1)~THEN CVGuntt Kelcur1
~Kelemvor, the murderer of his father, my father, the black sheep of the family.~
DO~SetGlobal("ToKelemcurse","Global",2)~
==ToKelem~You have sunken low, how else is your presence in this company to be explained, Guntharr Lyonsbane. Call me black sheep of the family but I do not call you *brother*.~
==CVGuntt~Bah - shall we write these *famous last words* on your gravestone, fool?~
=~You have not changed, following the skirts of weak women has made you a murderer and now makes you a corpse.~
==ToKelem~It were in deed weak women whom our father assaulted and killed until I ended his regime of terror.~
==CVGuntt~He made us MEN, at least three of us, probably not his youngest who preferred the education of his mistresses.~
==ToKelem~Enough - you followed his footsteps in life and now you follow him in death.~DO~ClearAllActions() StartCutSceneMode() StartCutScene("ToKeGut") ~EXIT

CHAIN
IF~Global("ToKelemcurse","Global",4)~THEN ToKelem Kelkur2
~That...was unexpected...~
DO~SetGlobal("ToKelemcurse","Global",5) ~
==CVSan25J~It was, my dear - but are we both talking about the same thing.~
==ToKelem~I owe you some explanation, my love.~
=~To find one of my brothers here was both unexpected and again not. Our father drilled us to be mercenairies and fighters for any good profit.~
==TOPellig~He at least tried to, obviously with different results among his sons.~
==ToKelem~It was fate and the hands of some women which prevented me from being here instead of my brother.~
==ToCyric~Has this *unexpected* shapeshifting-thingy anything to do with your story, my *pussycat*, hihihi?~
==Tolini~Can't you see that it surprised Kelemvor as much as us, Cyric?~
==ToKelem~It did and it did not. It is all connected with each other, this curse of the Lyonbanes.~
==TOAdon~Nothing helps you better than telling your friends about it, Kelemvor.~
==ToKelem~The curse of the Lyonsbanes had been passed down for generations within my family and has its roots in the actions of my greedy mercenary anchestor Kyle Lyonsbane, who during a battle abandoned his wounded companion, a sorceress, on the battlefield to die so that he could plunder an enemy's stronghold. As vengeance the sorceress cursed Kyle and our family. ~
=~We transform into a werepanther under stressful circumstances, just like you witnessed.~
==CVSan25J~It has happened to you before (You take his hand), am I right?~
==ToKelem~It happened when my father assaulted Lilianna, just like he did with Tannith years before that. They were the lights of my youth and he destroyed them. I was too weak against him to prevent it.~
==TOPellig~You were not too weak in the animal form.~
==ToKelem~I killed my father - and now I killed my brother.~
END
++~(You take him in your arms and soothe him wordlessly.)~EXIT
++~You are strong now, strong enough not to let it happen again - not to me.~EXIT
++~You are not alone anymore, you and me, we are strong together.~EXIT

CHAIN
IF~Global("CVabaz","AR6005",6)~THEN ToBane Abalair2
~Hold, mortals, whoever you are...we seem to be weaker on your Plane than we thought.~
DO~SetGlobal("CVabaz","AR6005",7) SetGlobal("Chapter","Global",33)~
==ToLini~Do you surrender, Bane?~
==ToCyric~Hihi, we have defeated a GOD, hihi.~
==ToBane~Not so fast...Gods do not surrender, nor do they die, nor are they ever defeated.~
==ToPellig~(Mumbles) I heard this erroneous statement before...~
==ToBane~Gods make offers. Call it a bargain.~
==ToKelem~You think you can buy your miserable forfeit existence from us with a petty gift, you has-been deity?~
==ToBane~Kelemvor Lyonsbane - I may have something to offer to you that may change your attitude.~
END
++~Kelemvor, my love, listen to him. You told me that the sorceress who cursed your family was drawing her powers from The Black Hand. He can remove your curse.~ + Abalair3
++~Kelemvor, my love, do not listen to him, he will trick you with the promise to remove the Lyonsbane curse from you. We follow a higher goal.~+ Abalair3

CHAIN
IF~~THEN ToBane Abalair3
~The curse of the Lyonsbanes. It will be gone forever, Kelemvor. I will walk through this portal and yours and Midnight's children and all future generations will be free of that.~
==ToPellig~Do it, Kelemvor, take this chance, we tracked him once and we know where he will go to meet his allies. We will get them again.~
==ToCyric~Dare it, you traitor, there is more at stake here than your silly family plans.~
==ToAdon~Pelligram is right, we will trap the three of them together pretty soon but your chance may be gone by that time.~
==ToKelem~I would never take a personal benefit from an evil being like you, Bane. But it is not me alone, I have to think of the one I love and my children and children's children...~
=~I accept your offer - you are free to go.~
==ToBane~A wise decision.~DO~ StartCutSceneMode() Wait(2) CreateVisualEffectObject("SPUNHOLY","Tokelem") Wait(6) CreateVisualEffectObject("SPUNHOLY","Tokelem") Wait(6) MoveToPoint([779.495]) Wait(4) EndCutSceneMode() DestroySelf()~EXIT

CHAIN
IF~Global("TotJail","bd7230",3)~THEN ToKelem Bhaalpris1
~A prisoner?~
DO~SetGlobal("TotJail","bd7230",4)~
==Priilm~In Lord Ilmater's name, I beg you to set me free. These murderers are sacrificing us to Bhaal one after another.~
==TOCyric~Hihi, you MUST be delighted, all this wonderful suffering!~
==ToAdon~Oh, Cyric, can you never shut up.~
==ToPellig~We will probably find a key to this cell. We will explore this temple anyway.~
==TOCyric~Enjoy your martyrdom while you still can. My oh so goodhearted friends may soon end this happy vacation by setting you free.~
==Priilm~Even suffering and enduring requires the perspective of relief.~EXIT

CHAIN
IF WEIGHT #-3~Global("TotJail","bd7230",4) PartyHasItem("BDKey11") OpenState("Door09",TRUE)~THEN Priilm Bhaalpris2
~In Lord Ilmater's name, thanks to you, friends.~
DO~SetGlobal("TotJail","bd7230",5) AddexperienceParty(4000)~ 
==ToCyric~Happy sufferings out there.~
==Priilm~May you find what you seek, friends.~DO~EscapeAreaObject("TranBD7220")~EXIT