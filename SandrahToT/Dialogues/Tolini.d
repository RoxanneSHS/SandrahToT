BEGIN TOLini
BEGIN CVSlaw

CHAIN
IF~Global("ToLini","BG4100",2)~THEN Tolini Pris1
~No, you will not get these weapons from me!!~
==CVSlaw~Don't make me laugh, drow, you will need none of them while slaving in the mines.~
==Tolini~I will never be your slave, I will rather go down fighting.~
==CVSlaw~That's what your companions said as well, those corpses you now see all around you. Better give up while you still can.~
==Tolini~I am no longer alone! There is help.~
END
++~(Sigh) A drow to rescue from slavery, not me.~DO~IncrementGlobal("Sanpoints","Global",-3) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXTERN TOPellig Linihelp
++~A drow to rescue from slavery, nothing we have not done before - with pleasure.~DO~SetGlobal("ToLini","BG4100",3)~EXIT
++~Drow or not drow, slavery is for nobody to endure, let us end this, friends.~DO~SetGlobal("ToLini","BG4100",3)~EXIT

CHAIN
IF~~THEN TOPellig Linihelp
~Midnight, you are not yourself. Girl, we are here to help you, do not worry.~
==TOAdon~Cyric, even you will not stand aside, and be it only to see blood.~
==TOCyric~For once you're right, hihi, dance, Godsbane, dance a bloody dance.~
END
++~Fine, have it your way, you all. Attack.~DO~SetGlobal("ToLini","BG4100",3)~EXIT

CHAIN
IF~Global("ToLini","BG4100",4) ~THEN Tolini Pris2
~Before you beat me as well, just for my race and just because you can - let me thank you in Eilistraee's name. Even if I am the sole survivor or our little caravan of hope.~
==TOpellig~You are followers of the Dark Maiden and we have followers of Mystra here. This should be enough to consider us friends.~
==TOCyric~She's a treat, hihi, so much is sure. Much too valuable for simple bloodshed. (These drow girls know how to...)~
==TOKelem~We leave nobody out in the wilderness, alone and helpless.~
==Tolini~My name is Liriel Baenre. These bastards took my possessions, allow me to search them for what is mine.~
END
++~Kelemvor spoke for all of us, come with us, Liriel.~DO~SetGlobal("ToLini","BG4100",5)  ActionOverride("Tolini",JoinParty())~EXIT
++~Seems I have nothing to say in this case other than *yes*. So, welcome, Liriel.~DO~SetGlobal("ToLini","BG4100",5)  ActionOverride("Tolini",JoinParty())~EXIT

CHAIN
IF~Global("ToPelGodsb2","LOCALS",1)~THEN ToPellig Godsb1
~*Pelligram has chosen a moment to approach Liriel while Cyric has sneaked into some shop, probably to steal something there.*~
DO~SetGlobal("ToPelGodsb2","LOCALS",2)~
=~Do you still remember the scenes around Kelemvor's death, your search for the Banites who killed him?~
==Tolini~We ran into several Banites and finally into Myrkul, who was alone. It was me who saw Bhaal and Bane at some distance in the south.~
==ToPellig~Cyric and Kelemvor raced after them while Midnight managed to make the rest of us fight Myrkul.~
==Tolini~Some spell incapacitated us while Midnight fought and vanquished Myrkul. We did not see what happened to Kelemvor, Cyric and the Banites and other gods meanwhile.~
==ToPellig~You never found a trace of any of them afterwards, right?~
==Tolini~Honestly, I just had that one glance of Bhaal and Bane for a short moment, neither of us saw anyone else before or after. Cyric ordered me to secure the party against Banites when you inspected Kelemvor and Midnight healed the party. Why do you ask these questions, Pelligram? Are you trying to find out about the soultaker which killed Kelemvor?~
==ToPellig~In a way...there is and never was a trace of such a weapon or a man to wield it, except for Cyric's words.~
==Tolini~There is at least the trace that our friend's soul was taken, isn't that so? The soultaker was there and consequently someone who held it.~
==ToPellig~This is true - I wish I could one day inspect Godsbane more closely...~EXIT
