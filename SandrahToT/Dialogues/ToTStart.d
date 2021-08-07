APPEND CVSan25J

IF~Global("MystBio","RTF025",1)~THEN BEGIN WantTOTRe1
SAY@0
IF~~THEN REPLY@1GOTO WantTOTRe3
IF~~THEN REPLY@2GOTO WantTOTRe2
IF~~THEN REPLY@3GOTO WantTOTRe3
END

IF~~THEN BEGIN WantTOTRe2
SAY@4
IF~~THEN DO~SetGlobal("MystBio","RTF025",2) ~EXIT
END

IF~~THEN BEGIN WantTOTRe3
SAY@5
IF~~THEN REPLY@6GOTO WantTOTRe2
IF~~THEN REPLY@7GOTO WantTOTRe4
END

IF~~THEN BEGIN WantTOTRe4
SAY@8
=@9
IF~~THEN REPLY@10GOTO WantTOTRe5
END

IF~~THEN BEGIN WantTOTRe5
SAY@11
=@12
IF~~THEN REPLY@13GOTO WantTOTRe6
IF~~THEN REPLY@14GOTO WantTOTRe6
END

IF~~THEN BEGIN WantTOTRe6
SAY@15
IF~~THEN REPLY@16GOTO WantTOTRe2
IF~~THEN REPLY@17DO~SetGlobal("SanRTFPlot5","GLOBAL",11) ~EXIT
END

IF~IsGabber(Player1) Global("SanPidPack","Global",18)!Global("ToSleep","Global",1)~THEN BEGIN NoPidTot
SAY@18
IF~~THEN EXIT
END
END

BEGIN TOPELLIG
BEGIN ToAdon

CHAIN
IF~Global("ToPellJoin","RTF123",1)~THEN ToPellig BuildParty
@19
=@20
==ToKelem@21
==TOCyric@22
==ToAdon@23
END
++@24DO~SetGlobal("ToPellJoin","RTF123",2)ActionOverride("ToKelem",JoinParty()) ActionOverride("ToCyric",JoinParty()) ActionOverride("ToAdon",JoinParty()) ~EXIT
++@25DO~SetGlobal("ToPellJoin","RTF123",2) ActionOverride("ToKelem",JoinParty()) ActionOverride("ToCyric",JoinParty()) ActionOverride("ToAdon",JoinParty()) ~EXIT

CHAIN
IF~Global("TotParty","RTF123",2)~THEN CVSan25J Whatnow
@26
DO~SetGlobal("TotParty","RTF123",3)~
==TOCyric@27
==ToKelem@28
==ToAdon@29
==TOCyric@30
==ToKelem@31
==TOCyric@32
==ToPellig@33
END
++@34EXIT
++@35EXIT
++@36EXIT

BEGIN TOSneak

CHAIN
IF~Global("TotParty","RTF123",4)~THEN ToSneak Intrud
@37
==TOCyric@38
==TOSneak@39
==TOCyric@40
==TOSneak@41
=@42DO~SetGlobal("TotParty","RTF123",5) Enemy()~EXIT

CHAIN
IF~Global("TOHasBane","Global",1)~THEN TOCyric hasBane1
@43
==CVSan25J@44
==TOCyric@45
==CVSan25J@46
==TOPellig@47
=@48
==TOCyric@49
==TOPellig@50
=@51
=@52
==CVSan25J@53
==TOPellig@54
=@55
END
++@56DO~SetGlobal("TOHasBane","Global",2)~EXIT
++@57DO~SetGlobal("TOHasBane","Global",2) IncrementGlobal("Sanpoints","Global",-1) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXIT
++@58DO~SetGlobal("TOHasBane","Global",2)~EXIT

CHAIN
IF~Global("KelSpeak","RTF123",1)~THEN TOKelem Prop1
@59
==ToAdon@60
==ToCyric@61
==TOPellig@62
==ToCyric@63
==CVSan25J@64
==ToAdon@65
END
++@66DO~SetGlobal("KelSpeak","RTF123",2)~EXIT
++@67DO~SetGlobal("KelSpeak","RTF123",2)~EXIT
++@68DO~SetGlobal("KelSpeak","RTF123",2)~EXIT
++@69DO~SetGlobal("KelSpeak","RTF123",2)~EXIT