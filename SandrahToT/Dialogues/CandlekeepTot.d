APPEND Read3
IF WEIGHT #-2~Global("ToTablet1","Global",7)~THEN BEGIN NoArrn
SAY~Greetings, <CHARNAME>, may you find what you seek at Candlekeep.~
IF~~THEN REPLY~ We are in search of a book concerning Dragons and their goddess Tiamat.~ GOTO RTBookN
IF~~THEN REPLY~I would be faster at it if you'd get out of my way, old fool.~EXIT
END

IF~~THEN BEGIN  RTBookN
SAY~You best ask one of the level coordinators for it.~
IF~~THEN EXIT
END
END

APPEND Poghm10
IF WEIGHT #-2~Global("ToTablet1","Global",7)~THEN BEGIN Babbl
SAY~You put your left foot in, you take your left foot out, you put your left foot in and you shake it all about... Oh! I, uh, didn't see you there... The wisdom of Oghma manifests itself in, uh, many ways... I'll be on my way, now. ~
IF~~THEN DO~EscapeArea()~EXIT
END
END

EXTEND_BOTTOM Poghm7 0
IF~Global("ToTablet1","Global",7)~THEN REPLY~We are in search of a book concerning Dragons and their goddess Tiamat.~ GOTO RTBook
END

APPEND  Poghm7
IF~~THEN BEGIN RTBook
SAY~It is a very ancient tome that would be kept at the top level of the library, my friend.~
IF~~THEN EXIT
END
END

