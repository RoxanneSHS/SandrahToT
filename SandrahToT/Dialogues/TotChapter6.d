CHAIN
IF~Global("ToBhaalFin","Global",2)~THEN ToElmi GoBoar
@0
DO~SetGlobal("ToBhaalFin","Global",3)~
==CVSan25J@1
==ToElmi@2
==CVSan25J@3
==ToElmi@4
==CVSan25J@5
==ToElmi@6
==CVSan25J@7
==ToElmi@8
==CVSan25J@9
==ToElmi@10DO~EscapeAreaObject("WDTown")~
==CVSan25J@11DO~AddJournalEntry(@3052,QUEST)EraseJournalEntry(@51)~EXIT

CHAIN
IF~Global("ToBhaalFin","Global",4)~THEN ToCyric Boarshow1
@12
DO~SetGlobal("ToBhaalFin","Global",5)~
==ToBhaal@13
==CVSan25J@14
==ToBhaal@15
==ToCyric@16
==CVSan25J@17
==ToCyric@18
==ToBhaal@19
==CVSan25J@20
=@21
=@22DO~ClearAllActions() StartCutSceneMode() Wait(1) ActionOverride("ToBhaal",DestroyItem("Monhp1")) Wait(2) StartCutScene("TotEndBh")~EXIT

CHAIN
IF~Global("ToBhaalFin","Global",6)~THEN ToCyric Boarshow2
@23
DO~SetGlobal("ToBhaalFin","Global",7)~
==Sarmel01@24
==CVSan25J@25
==Sarmel01@26
==ToCyric@27
==Sarmel01@28DO~EscapeAreaObject("Tranbd2010")~
==CVSan25J@29
=@30
END
++@31EXIT
++@32DO~SetGlobal("ToBhaalFin","Global",77) StartCutSceneMode() Kill("Totmel01") Wait(2) FadeToColor([20.0],0) Wait(1) TextScreen("ToBaal2") Wait(4) EndCredits()~EXIT

CHAIN
IF~Global("ToBhaalFin","Global",8)~THEN RTLordAo MakeGods1
@33
DO~SetGlobal("ToBhaalFin","Global",9)~
==ToCyric@34
==ToPellig@35
==ToCyric@36
==ToPellig@37
==RTLordAo@38
=@39
==ToPellig@40
==CVSan25J@41
==RTLordAO@42
=@43
==ToAdon@44
==CVSan25J@45
==ToAdon@46
==RTLordAO@47
=@48
==ToPellig@49
==RTLordAO@50
==ToCyric@50
==CVSan25J@50DO~StartCutSceneMode() Wait(1) CreateCreatureObjectDoor("RTKele2","ToCyric",0,0,0) Wait(8) EndCutSceneMode()~EXIT

CHAIN
IF~Global("ToBhaalFin","Global",9)~THEN ToPellig MakeGods2
@51
DO~SetGlobal("ToBhaalFin","Global",10)~
==ToCyric@52
==CVSan25J@53
==RTKelem@54
==ToCyric@55
==RTLordAO@56
==RTKelem@57
==RTLordAO@58
==RTKelem@59
==CVSan25J@60
==ToPellig@61EXIT