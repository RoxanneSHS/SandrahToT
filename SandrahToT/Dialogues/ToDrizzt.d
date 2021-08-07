CHAIN
IF~AreaCheck("cvelm3") GlobalLT("ToBaneHunt","Global",2) !InParty(Myself)~THEN ToDrizzt Notcome
@0
=@1
=@2EXIT

CHAIN
IF~AreaCheck("cvelm3") GlobalGT("ToBaneHunt","Global",1) !InParty(Myself) Global("Tryonce","cvelm3",0)~THEN ToDrizzt Maycome
@0
==ToLini@3
==TODrizzt@4
==ToPellig@5
==TODrizzt@6
==ToAdon@7
==ToDrizzt@8
END
++@9DO~JoinParty()~EXIT
++@10+ MaycomeH

CHAIN
IF~~THEN ToDrizzt MaycomeH
@11DO~SetGlobal("Tryonce","cvelm3",1)~EXIT

CHAIN
IF~AreaCheck("cvelm3") GlobalGT("ToBaneHunt","Global",1) !InParty(Myself) Global("Tryonce","cvelm3",1)~THEN ToDrizzt Maycome
@12
END
++@13EXIT
++@14DO~JoinParty()~EXIT

CHAIN
IF~Global("ToDrizIn","LOCALS",1)~THEN ToDrizzt Lini1
@15
DO~SetGlobal("ToDrizIn","LOCALS",2)~
==ToLini@16
==ToDrizzt@17
==ToLini@18
==ToDrizzt@19
==ToLini@20
==ToDrizzt@21
==ToLini@22EXIT

CHAIN
IF~Global("ToDrizIn","LOCALS",3)~THEN ToDrizzt Midni1
@23
DO~SetGlobal("ToDrizIn","LOCALS",4)~
==CVSan25J@24
==ToDrizzt@25
==CVSan25J@26
==ToDrizzt@27
END
++@28EXIT
++@29EXIT

CHAIN
IF~Global("ToMidDriz","LOCALS",1)~THEN ToDrizzt Midni2
@30
DO~SetGlobal("ToMidDriz","LOCALS",2)~
=@31
==CVSan25J@32
=@33
==ToDrizzt@34
==CVSan25J@35
==ToDrizzt@36
=@37
END
++@38+ Midni3
++@39+ Midni3
++@40+ Midni3

CHAIN
IF~~THEN ToDrizzt Midni3
@41
=@42
END
++@43EXIT