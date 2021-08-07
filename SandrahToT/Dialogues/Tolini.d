BEGIN TOLini
BEGIN CVSlaw

CHAIN
IF~Global("ToLini","BG4100",2)~THEN Tolini Pris1
@0
DO~SetGlobal("ToLini","BG4100",3)~ 
==CVSlaw@1
==Tolini@2
==CVSlaw@3
==Tolini@4
END
++@5DO~IncrementGlobal("Sanpoints","Global",-3) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXTERN TOPellig Linihelp
++@6DO~SetGlobal("ToLini","BG4100",3)~EXIT
++@7DO~SetGlobal("ToLini","BG4100",3)~EXIT

CHAIN
IF~~THEN TOPellig Linihelp
@8
==TOAdon@9
==TOCyric@10
END
++@11DO~SetGlobal("ToLini","BG4100",3)~EXIT

CHAIN
IF~Global("ToLini","BG4100",4) ~THEN Tolini Pris2
@12
==TOpellig@13
==TOCyric@14
==TOKelem@15
==Tolini@16
END
++@17DO~SetGlobal("ToLini","BG4100",5)  ActionOverride("Tolini",JoinParty())~EXIT
++@18DO~SetGlobal("ToLini","BG4100",5)  ActionOverride("Tolini",JoinParty())~EXIT

CHAIN
IF~Global("ToPelGodsb2","LOCALS",1)~THEN ToPellig Godsb1
@19
DO~SetGlobal("ToPelGodsb2","LOCALS",2)~
=@20
==Tolini@21
==ToPellig@22
==Tolini@23
==ToPellig@24
==Tolini@25
==ToPellig@26
==Tolini@27
==ToPellig@28EXIT
