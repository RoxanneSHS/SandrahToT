CHAIN
IF WEIGHT #-5~GlobalGT("TOLiriquest","Global",8) Global("TOKelemQuest","Global",0)~ THEN              Portal  warnpon1
~Dark times are coming...they say that gods have been seen to walk the Prime in their mortal avatars.~
DO~SetGlobal("TOKelemQuest","Global",1)~
END
++~That has happened from time to time, no need to worry.~ + warnpon2
++~And how do *they* know such a thing - how do you know you see a GOD if he is in his MORTAL avatar?~+ warnpon2

CHAIN
IF~~THEN Portal warnpon2
~You will soon see the truth of my words, unbelievers.~DO~ EscapeAreaDestroy(40)~EXIT

CHAIN
IF WEIGHT #-5~GlobalGT("TOLiriquest","Global",8) Global("warnjop","tot003",0)~THEN Bently2 warnjop1
~They say that gods have been seen to walk the Prime in their mortal avatars these days.~
DO~SetGlobal("warnjop","tot003",1)~
=~I say, fools, how would you know it's Helm walking in through the door or just some thirsty paladin looking for a pint...nay...they don't drink.~
END
++~Maybe if he looks like a paladin and orders a mug of beer, you will know he is actually a god and you ask him for an autograph.~EXIT