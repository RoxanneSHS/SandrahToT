BEGIN ToCyric
IF~InParty(Myself) IsGabber("CVsandr")~THEN BEGIN Pid
SAY@0
IF~~THEN REPLY@1GOTO Cyrzent
IF~~THEN REPLY@2EXIT
IF~Global("TOHasBane","Global",2) Global("Cyrwarn","LOCALS",0) !Dead("Tokelem")~THEN REPLY@3DO~SetGlobal("Cyrwarn","LOCALS",1)~GOTO Cyrwarn1
IF~Dead("Tokelem") GlobalLT("Chapter","Global",35)~THEN REPLY@4GOTO Kelemhelp
END

IF~~THEN BEGIN Kelemhelp
SAY@5
IF~~THEN REPLY@6EXIT
IF~~THEN REPLY@7EXIT
IF~~THEN REPLY@8EXIT
IF~~THEN REPLY@9EXIT
IF~~THEN REPLY@10EXIT
END

IF~~THEN BEGIN Cyrzent
SAY@11
IF~~THEN REPLY@12EXIT
IF~~THEN REPLY@13EXIT
IF~~THEN REPLY@14EXIT
END

IF~~THEN BEGIN  Cyrwarn1
SAY@15
IF~~THEN REPLY@16EXIT
IF~~THEN REPLY@17DO~IncrementGlobal("Sanpoints","Global",-3) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXIT
END

CHAIN
IF~Global("ToKelemcurse","Global",6)~THEN TOCyric App1
@18
DO~SetGlobal("ToKelemcurse","Global",7)~
==CVSan25J@19
==TOCyric@20
==CVSan25J@21
==TOCyric@22
END
++@23EXIT
++@24EXIT
++@25EXIT

CHAIN
IF~Global("SanPelcyr1","bg2608",1)~THEN ToPellig Madcyr1Pel
@26
DO~SetGlobal("SanPelcyr1","bg2608",2)~
=@27
==CVSan25J@28
==ToPellig@29
END
++@30+ Madcyr2Pel
++@31+ Madcyr2Pel
++@32+ Madcyr2Pel

CHAIN
IF~~THEN ToPellig Madcyr2Pel
@33
=@34
END
++@35EXIT
++@36EXIT
++@37EXIT 

CHAIN
IF~Global("CVTiamal","AR6000",5)~THEN ToCyric Drag1
@38
DO~SetGlobal("CVTiamal","AR6000",6)~
==ToAdon@39
==Tolini@40
==Tokelem@41
==ToCyric@42
==ToPellig@43
==ToCyric@44
=@45
==ToPellig@46
END
++@47+ Drag2
++@48+ Drag2

CHAIN
IF~~THEN ToCyric Drag2
@49
==ToLini@50
==ToAdon@51
==ToKelem@52
DO~TextScreen("ToKeleE")~EXIT

CHAIN
IF~Global("ToMyrkFi","RTF123",9)~THEN ToCyric Leader1
@53
DO~SetGlobal("ToMyrkFi","RTF123",10)~
=@54
==CVSan25J@55
==ToCyric@56
==ToPellig@57
==ToCyric@58
==CVSan25J@59
==ToAdon@60
==ToPellig@61
==ToCyric@62
==ToPellig@63
==ToCyric@64
==ToPellig@65
==ToCyric@66
==ToAdon@67
==ToLini@68
==ToPellig@69
==ToCyric@70
=@71
END
++@72EXIT
++@73EXIT

CHAIN
IF~Global("ToBaneHunt","Global",1)~THEN ToCyric Quest3start1
@74
DO~SetGlobal("ToBaneHunt","Global",2)~
==CVSan25J@75
==ToCyric@76
==CVSan25J@77
==ToCyric@78
=@79
==CVSan25J@80
==ToCyric@81EXIT

CHAIN
IF~Global("CyrElmi","ar0505",1)~THEN ToCyric WhoFath1
@82
DO~SetGlobal("CyrElmi","ar0505",2)~
==Toelmi@83
==ToCyric@84
==Toelmi@85
==TOCyric@86
==ToElmi@87DO~StartCutSceneMode() Wait(2) Polymorph(CAT) Wait(6) DisplayStringWait("Toelmi",@041) Wait(6) Polymorph(ELMINSTER) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("CyrElmi","ar0505",2)~THEN ToCyric WhoFath2
@88
DO~SetGlobal("CyrElmi","ar0505",3)~
==CVSan25J@89
==Toelmi@90
==ToCyric@91
==ToElmi@92DO~EscapeArea()~
==CVSan25J@93
==ToCyric@94
==CVSan25J@95
=@96
==ToCyric@97
==CVSan25J@98
==ToCyric@99
=@100EXIT

CHAIN
IF~Global("ToBaneHunt","Global",16) ~THEN ToCyric Banedone1
@101
DO~SetGlobal("ToBaneHunt","Global",17) EraseJournalEntry(@3040) EraseJournalEntry(@3047) SetGlobal("Chapter","Global",35) AddJournalEntry(@3050,QUEST)~
==ToPellig@102
==TOCyric@103
==ToAdon@104
==CVSan25J@105
==ToCyric@106
==CVSan25J@107
==ToCyric@108
==Tolini@109
==ToCyric@110
==Tolini@111EXIT