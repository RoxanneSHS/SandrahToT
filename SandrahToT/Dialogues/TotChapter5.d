BEGIN ToGorion

CHAIN
IF~Global("ToBhaalhunt","Global",1)~THEN ToGorion Meetbridge1
~Ho there, wanderers. Stay thy course a moment to indulge a follow traveller...~
DO~SetGlobal("ToBhaalhunt","Global",2)~
END
++~Gorion!!??~ + Meetbridge2
++~G...a harper...~ + Meetbridge2

CHAIN
IF~~THEN ToGorion Meetbridge2
~Indeed, even if I have to confess I am irritated how you should come to this knowledge.~
==ToPellig~Honestly, our meeting here may not be sheer coincidence.~
==ToAdon~Your travel and ours may have similar reason and destination.~
==ToGorion~Interesting. And what may any of those be?~
END
++~We are in search of a harper at this moment.~EXTERN ToCyric Meetbridge3

CHAIN
IF~~THEN ToCyric Meetbridge3
~Man, we helped one of your *brothers* or whatcha-call-them out of a messy mess recently, hihi, but the bloody fool is about to get himself and his beautiful daughter into an even bigger mess right now.~
==ToGorion~Can someone explain to me what this man is talking about?~
==ToPellig~Glarasteer and Khalindra of Innarlith...~
==ToGorion~I see - you are those who rescued them in Mornbryn's Shield. You must be Lady Midnight, who invited them to stay with Elminster.~
END
++~He is my son, mine and Cyric's.~EXTERN ToGorion Meetbridge4

CHAIN
IF~~THEN ToGorion Meetbridge4
~Yes, Cyric...it may explain the tension between father and son...Anyway, it is good we met today. It may save you the effort to travel to Athkatla.~
=~Yes, yes, explanation follows. Elminster has been invited to join our circle...~
==ToCyric~A harper? This damned fool misses no chance to prove his idiocy!~
==CVSan25J~You could share his mother's pride of such an invitation, Cyric, really. Please continue, Gorion.~
==ToGorion~Elminster left your house and has moved to Waterdeep while you followed your trail hunting Bane. It looks like the Bhaalists are specifically after him for some reason.~
==CVSan25J~The reason are us, his parents - and the fact that Bane is dead with our help while Bhaal himself is still on the run.~
==ToGorion~The Bhaalists beleaguer your home. They want you, your son, Glarasteer and Khalindra.~
==ToCyric~My wife thinks that Bhaal has a contingency plan. He knows that he will sooner or later fall by our hands.~
==ToGorion~I heard rumours of that Alaundo prophesy...~
==CVSan25J~(Mumbles) It is true...he still needs to inseminate Khalindra. (But...Sandrah is not even born yet...?)~
END
++~Where are Khalindra and her father?~ + Meetbridge5
++~Elminster seems to be save under your harper's protection, how about the others?~ + Meetbridge5

CHAIN
IF~~THEN ToGorion Meetbridge5
~Everybody is now at a relatively secluded and save house your son purchased in Waterdeep. Elminster has grown fast into a man to be counted.~
==ToCyric~Amongst harpers, hihi, as if that means something.~
==ToGorion~Ehem, more than harpers have found him interesting...~
==ToPellig~A certain young lady?~
==ToGorion~(Sighs) I am afraid that is true.~
==ToPellig~Poor Gorion.~
END
++~It appears to me there is nothing we can do for them at this moment. We should concentrate on Bhaal and the missing tablet.~ + Meetbridge6
++~Does harper intelligence have information about Bhaal and possible hideouts?~+ Meetbridge6

CHAIN
IF~~THEN ToGorion Meetbridge6
~The Bhaalists under the priestess Nyalee have recently overrun a temple of Mystra in the Forest of Mir south of Saradush taking advantage of Lady of Mysteries' current absence.~
END
++~It would not astonish me if they used fire giants to accomplish it. We should go there.~DO ~AddJournalEntry(@051,QUEST)~EXIT
++~A good place to raise fire giants far away from prying eyes. We should go there.~DO ~AddJournalEntry(@051,QUEST)~EXIT
