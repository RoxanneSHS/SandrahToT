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
==ToElmi~Thou need to take a similar route to find and eliminate the Slayer. He is on his way to Dragonspear Castle to reach a portal to Tantras. He needs to pass Boareskyre Bridge to get there.~ DO~EscapeAreaObject("WDTown")~
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
=~Strike, Godsbane.~DO~ClearAllActions() StartCutSceneMode() Wait(1) ActionOverride("ToBhaal",DestroyItem("Monhp1")) Wait(2) StartCutScene("TotEndBh")~EXIT

CHAIN
IF~Global("ToBhaalFin","Global",6)~ THEN ToCyric Boarshow2
~So your old God of Murder is gone, hihi.~
DO~SetGlobal("ToBhaalFin","Global",7)~
==Sarmel01~He was weak in his mortal avatar, too weak for the Prime.~
==CVSan25J~Unlike the mortals themselve, those who call the Prime their home.~
==Sarmel01~Some of them are strong enough to play their role on ANY plane they would chose to rule.~
==ToCyric~Hihi, well spoken! Come, Midnight, let us claim at the Celestial Stairs what is truly ours to claim.~
==Sarmel01~Go claim the vacant portfolios...both of you.~DO~EscapeAreaObject("Tranbd2010")~
==CVSan25J~...and Bhaal's essence remains on the Prime meanwhile...nothing can be done about that at the moment.~
=~(Midnight takes a long look at Bhaal's high priestess.) *A traitor in their midst.*~
END
++~You decide to let Melissan escape and commence her deception of Bhaal. You will claim your godhood at the Celestial Stairs now.~EXIT
++~You decide to kill Melissan before she can start to set up her plan that will end in the Bhaalspawn war later on.~ DO~SetGlobal("ToBhaalFin","Global",77) StartCutSceneMode() Kill("Totmel01") Wait(2) FadeToColor([20.0],0) Wait(1) TextScreen("ToBaal2") Wait(4) EndCredits()~ EXIT

CHAIN
IF~Global("ToBhaalFin","Global",8)~ THEN RTLordAo MakeGods1
~The missing tablet returns. It is time to end this avatar crisis.~
DO~SetGlobal("ToBhaalFin","Global",9)~
==ToCyric~Time for some new gods to rise, hihi.~
==ToPellig~You really cannot await it, Cyric?~
==ToCyric~And what about you, Pelli-darling, which portfolio will you claim?~
==ToPellig~You will never understand, new Lord of Murder. The Simbul will remain what she always has been.~
==RTLordAo~The Simbul will prepare each new incarnation of Mystra for the task awaiting her. She has always done this and will continue to do so by her own choice.~
=~So, Pelligram?~
==ToPellig~Midnight is ready to accept her duty - and I know a baby girl in Waterdeep waiting to become my ward in a little time...~
==CVSan25J~Lord AO, my friend Pelligram has expressed it well - I accept to be the Weave's keeper for the time being. Until that girl the Simbul is referring to will be ready to accept her duty.~
==RTLordAO~This has never been...Well, a situation like the current has never existed before. The Weave needs you, Midnight, and you will do your duty well. I will allow you to leave when the new Mystra is ready to accept her task. Neither you nor the Simbul will be allowed to influence the girl's decision directly. Pelligram will ward her but in a form that will not allow her to act directly.~
=~Now, Adon, cleric of Sune...~
==ToAdon~No, Lord AO - Sune is alive and may return, but I cannot serve her anymore. She has forsaken me when I needed her most.~
==CVSan25J~You may want to consider how we have worked together through all of this, my friend.~
==ToAdon~I will consider it, Midnight...I mean, Mystra. Give me time to contemplate it, I may decide to be your servant in a while.~
==RTLordAO~Now that we have settled this...~
=~Cyric, I command you to give me your sword, Godsbane. It is supposed to hold the essence of your predecessor, Bhaal.~
==ToPellig~A soultaker can only hold one creature's essence, AO. Godsbane may have held a soul already before Bhaal was eliminated.~
==RTLordAO~What?~
==ToCyric~What?~
==CVSan25J~What?~DO~StartCutSceneMode() Wait(1) CreateCreatureObjectDoor("RTKele2","ToCyric",0,0,0) Wait(8) EndCutSceneMode()~EXIT

CHAIN
IF~Global("ToBhaalFin","Global",9)~ THEN ToPellig MakeGods2
~Kelemvor Lyonsbane.~
DO~SetGlobal("ToBhaalFin","Global",10)~
==ToCyric~Kelemvor??!!.~
==CVSan25J~The soultaker that took Kelemvor was...Godsbane...Cyric!!~
==RTKelem~Cyric, my murderer.~
==ToCyric~How could I ever have won your heart while the fool was alive? You killed him, your stupid love for this man killed him, not me.~
==RTLordAO~You have truly earned the elevation to be God of Murder, Cyric. You and Mystra will have eternity to sort that out. And I will add Kelemvor to the cast of new gods as well. ~
==RTKelem~What can a murdered man who never became a paladin do to serve in eternity?~
==RTLordAO~You will be judge of the damned in the Fugue Plane, Kelemvor, Lord of the Dead.~
==RTKelem~Await the day in fear when I will judge you, Cyric.~
==CVSan25J~Await the day in fear when I will deliver you to Kelemvor's judgement, Cyric.~ 
==ToPellig~You may think the Time of Troubles ends today, Lord AO. Too many loose ends surround us still - Bhaal's essence is distributed in his spawns all over the Prime and two former lovers are now godly enemies. This is nothing more than a cease fire before the next storm rises.~EXIT