CHAIN
IF~Global("ToBhaalFin","Global",3)~ THEN ToElmi GoBoar
~Thou hath come one day too late, mother.~
DO~SetGlobal("ToBhaalFin","Global",4)~
==CVSan25J~The one we hunt has been here last night, is that what happened, Elminster?~
==ToElmi~Thou knowst it...everything...the women...~
==CVSan25J~Yes, I know it. Listen, my son, I know you are strong and you need to be even stronger with the things that will come. The children who will be born are special and precious.~
==ToElmi~They are innocent of their origin, mother, I will not condemn them.~
==CVSan25J~Yes, Elminster, this is what I beg of you. They must survive, they must grow and they must live. Bhaal has a plan for them but only they will be able to counteract it.~
==ToElmi~For the love of thee and for the love of the women who have to suffer for them, I will do what must be done.~
==CVSan25J~You will be blessed by a goddess for that, Elminster. You and the harpers will be their guardians. Those two and another one you will find in Bhaal's temple near Boareskyre Bridge.~
==ToElmi~Thou need to take a similar route to find and eliminate the Slayer. He is on his way to Dragonspeare Castle to reach a portal to Tantras. He needs to pass Boareskyre Bridge to get there.~ DO~EscapeAreaObject("WDTown")~
==CVSan25J~We will overtake him and await him at the bridge. Bhaal ends there and will never return.~DO~AddJournalEntry(@052,QUEST)~EXIT