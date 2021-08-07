BEGIN CVGuntt
BEGIN ToKelem
IF~InParty(Myself) IsGabber("CVsandr")~THEN BEGIN Pid
SAY@0
IF~~THEN REPLY@1EXIT
IF~~THEN REPLY@2EXIT
IF~Global("TOHasBane","Global",2) Global("Cyrwarn","LOCALS",0)~THEN REPLY@3DO~SetGlobal("Cyrwarn","LOCALS",1)~GOTO Cyrwarn1
END

IF~~THEN BEGIN Cyrwarn1
SAY@4
IF~~THEN REPLY@5EXIT
IF~~THEN REPLY@6GOTO Cyrwarn2
END

IF~~THEN BEGIN Cyrwarn2
SAY@7
IF~~THEN REPLY@8EXIT
IF~~THEN REPLY@9DO~IncrementGlobal("Sanpoints","Global",-3) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXIT
END

CHAIN
IF~Global("ToKelemcurse","Global",1)~THEN CVGuntt Kelcur1
@10
DO~SetGlobal("ToKelemcurse","Global",2)~
==ToKelem@11
==CVGuntt@12
=@13
==ToKelem@14
==CVGuntt@15
==ToKelem@16DO~ClearAllActions() StartCutSceneMode() StartCutScene("ToKeGut") ~EXIT

CHAIN
IF~Global("ToKelemcurse","Global",4)~THEN ToKelem Kelkur2
@17
DO~SetGlobal("ToKelemcurse","Global",5) ~
==CVSan25J@18
==ToKelem@19
=@20
==TOPellig@21
==ToKelem@22
==ToCyric@23
==Tolini@24
==ToKelem@25
==TOAdon@26
==ToKelem@27
=@28
==CVSan25J@29
==ToKelem@30
==TOPellig@31
==ToKelem@32
END
++@33EXIT
++@34EXIT
++@35EXIT

CHAIN
IF~Global("CVabaz","AR6005",6)~THEN ToBane Abalair2
@36
DO~SetGlobal("CVabaz","AR6005",7) SetGlobal("Chapter","Global",33)~
==ToLini@37
==ToCyric@38
==ToBane@39
==ToPellig@40
==ToBane@41
==ToKelem@42
==ToBane@43
END
++@44+ Abalair3
++@45+ Abalair3

CHAIN
IF~~THEN ToBane Abalair3
@46
==ToPellig@47
==ToCyric@48
==ToAdon@49
==ToKelem@50
=@51
==ToBane@52DO~StartCutSceneMode() Wait(2) CreateVisualEffectObject("SPUNHOLY","Tokelem") Wait(6) CreateVisualEffectObject("SPUNHOLY","Tokelem") Wait(6) MoveToPoint([779.495]) Wait(4) EndCutSceneMode() DestroySelf()~EXIT

CHAIN
IF~Global("TotJail","bd7230",3)~THEN ToKelem Bhaalpris1
@53
DO~SetGlobal("TotJail","bd7230",4)~
==Priilm@54
==TOCyric@55
==ToAdon@56
==ToPellig@57
==TOCyric@58
==Priilm@59EXIT

CHAIN
IF WEIGHT #-3~Global("TotJail","bd7230",4) PartyHasItem("BDKey11") OpenState("Door09",TRUE)~THEN Priilm Bhaalpris2
@60
DO~SetGlobal("TotJail","bd7230",5) AddexperienceParty(4000)~
==ToCyric@61
==Priilm@62DO~EscapeAreaObject("TranBD7220")~EXIT