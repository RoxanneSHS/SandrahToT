CHAIN
IF~Global("ToBhaalFin","Global",2)~ THEN ToElmi GoBoar
~Thou hath come one day too late, mother.~
DO~SetGlobal("ToBhaalFin","Global",3)~
==CVSan25J~The one we hunt has been here last night, is that what happened, Elminster?~
==ToElmi~Thou knowst it...everything...the women...~
==CVSan25J~Yes, I know it. Listen, my son, I know you are strong and you need to be even stronger with the things that will come. The children who will be born are special and precious.~
==ToElmi~They are innocent of their origin, mother, I will not condemn them.~
==CVSan25J~Yes, Elminster, this is what I beg of you. They must survive, they must grow and they must live. Bhaal has a plan for them but only they will be able to counteract it.~
==ToElmi~For the love of thee and for the love of the women who have to suffer for them, I will do what must be done.~
==CVSan25J~Khalindra and Sandrah are well, please tell me, my son?~
==ToElmi~Yes, they still are, the lights of my life. I am aware of the loss I have to face once the spawn is born...Khalindra...the children will be my reason to carry on...~
==CVSan25J~You will be blessed by a goddess for that, Elminster. You and the harpers will be their guardians. Those two and another one you will find in Bhaal's temple near Boareskyre Bridge.~
==ToElmi~Thou need to take a similar route to find and eliminate the Slayer. He is on his way to Dragonspeare Castle to reach a portal to Tantras. He needs to pass Boareskyre Bridge to get there.~ DO~EscapeAreaObject("WDTown")~
==CVSan25J~We will overtake him and await him at the bridge. Bhaal ends there and will never return.~DO~AddJournalEntry(@052,QUEST)EraseJournalEntry(@51)~EXIT

CHAIN
IF~Global("ToBhaalFin","Global",4)~ THEN ToCyric Boarshow1
~The final day has come, the Time of Troubles will end today.~
DO~SetGlobal("ToBhaalFin","Global",5)~
==ToBhaal~You are persistent like meat flies, mortal fools. And you know nothing about endings.~
==CVSan25J~We know about your contingency plan for return, Bhaal.~
==ToBhaal~You THINK you know but you have no idea, Mystra.~
==ToCyric~Here stands your successor, Lord of Murder, hihi. I will assure just like Mystra that you will not return.~
==CVSan25J~Your last rape was the one you should better have left undone. The foe you made by that deed is too much even for a god.~
==ToCyric~Hihi, a dead god, my dear, the soon-to-be-dead last of the now complete *Dead Three*.~
==ToBhaal~I laugh at your attempts to prevent the inevitable, mortals. Gods do not die.~
==CVSan25J~Prophesies should not be left unattended, Bhaal. The story is never written until the ink of the last word and final full stop has dried.~
=~See me holding the quill - it is your last vision ever.~
=~Strike, Godsbane.~DO~ClearAllActions() StartCutSceneMode() StartCutScene("TotEndBh")~EXIT

CHAIN
IF~Global("ToBhaalFin","Global",6)~ THEN ToCyric Boarshow2
~So your old God of Murder is gone, hihi.~
DO~SetGlobal("ToBhaalFin","Global",7)~
==Sarmel01~He was weak in his mortal avatar, too weak for the Prime.~
==CVSan25J~Unlike the mortals themselve, those who call the Prime their home.~
==Sarmel01~Some of them are strong enough to play their role on ANY plane they chose to rule.~
==ToCyric~Hihi, well spoken! Come, Midnight, let us claim at the Celestial Stairs what is truly ours to claim.~
==Sarmel01~Go claim the vacant portfolios...both of you.~DO~EscapeAreaObject("Tranbd2010")~
==CVSan25J~...and Bhaal's essence remains on the Prime meanwhile...nothing can be done about that at the moment.~
=~(Midnight takes a long look at Bhaal's high priestess.) *A traitor in their midst.*~