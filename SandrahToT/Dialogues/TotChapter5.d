BEGIN ToGorion
BEGIN Sendai8
BEGIN ToIsmad
BEGIN ToHomer

CHAIN
IF~Global("ToBhaalhunt","Global",1)~THEN ToGorion Meetbridge1
@0
DO~SetGlobal("ToBhaalhunt","Global",2)~
END
++@1+ Meetbridge2
++@2+ Meetbridge2

CHAIN
IF~~THEN ToGorion Meetbridge2
@3
==ToPellig@4
==ToAdon@5
==ToGorion@6
END
++@7EXTERN ToCyric Meetbridge3

CHAIN
IF~~THEN ToCyric Meetbridge3
@8
==ToGorion@9
==ToPellig@10
==ToGorion@11
END
++@12EXTERN ToGorion Meetbridge4

CHAIN
IF~~THEN ToGorion Meetbridge4
@13
=@14
==ToCyric@15
==CVSan25J@16
==ToGorion@17
==CVSan25J@18
==ToGorion@19
==ToCyric@20
==ToGorion@21
==CVSan25J@22
END
++@23+ Meetbridge5
++@24+ Meetbridge5

CHAIN
IF~~THEN ToGorion Meetbridge5
@25
==ToCyric@26
==ToGorion@27
==ToPellig@28
==ToGorion@29
==ToPellig@30
END
++@31+ Meetbridge6
++@32+ Meetbridge6

CHAIN
IF~~THEN ToGorion Meetbridge6
@33
END
++@34DO ~AddJournalEntry(@3051,QUEST)~EXIT
++@35DO ~AddJournalEntry(@3051,QUEST)~EXIT

CHAIN
IF WEIGHT #-5~Global("Tomonst","ar5202",1)~THEN HGNya01 MeetTot
@36
DO~SetGlobal("Tomonst","ar5202",2) SetGlobal("TalkedToNyalee","GLOBAL",1)~
==ToPellig@37
==HGNya01@38
=@39
==CVSan25J@40
==Yaga02@41
==ToAdon@42
==HGNya01@43
==ToLini@44
==CVSan25J@45
==TOCyric@46
END
++@47+MeetTot2
++@48+MeetTot3

CHAIN
IF~~THEN HGNya01 MeetTot2
@49
DO~Enemy()ActionOverride("Yagaspir",Enemy()) ActionOverride("CVSandr",Attack("HGNya01"))~EXIT

CHAIN
IF~~THEN HGNya01 MeetTot3
@50DO~ActionOverride("Yagaspir",EscapeAreaObject("Exitwmp")) EscapeAreaObject("Exitwmp")~EXIT

CHAIN
IF~Global("Tomonst","ar5202",4)~THEN TOCyric Sparenya1
@51
DO~SetGlobal("Tomonst","ar5202",5)~
==CVSan25J@52
==TOCyric@53
==ToPellig@54
==ToLini@55
END
++@56+ Sparenya2
++@57+ Sparenya2

CHAIN
IF~~THEN TOCyric Sparenya2
@58
=@59
=@60
END
++@61EXIT
++@62EXIT

CHAIN
IF~Global("Tomonst","ar5202",6) ~THEN ToPellig ToBlahand
@63
DO~SetGlobal("Tomonst","ar5202",7) SetGlobal("ToBhaalhunt","Global",3)~
==TODrizzt IF~InParty("Todrizzt")~THEN@64
==Tolini IF~!InParty("Todrizzt")~THEN@64
==ToAdon@65
==ToPellig@66
==ToCyric@67
END
++@68EXIT
++@69EXIT

CHAIN
IF~Global("Tosendai","ar60pb",2)~THEN ToPellig ToBlahand2
@70
DO~SetGlobal("Tosendai","ar60pb",3)~
==TODrizzt IF~InParty("Todrizzt")~THEN@71
==Tolini IF~!InParty("Todrizzt")~THEN@71
==Sendai8@72
==UDDrow36@73
==NTAshma@74
==Sendai8@75
==UDDrow36@76
==NTAshma@77EXIT

CHAIN
IF~Global("Tosendai","ar60pb",12)~THEN Tolini ToBlahand3
@78
DO~SetGlobal("Tosendai","ar60pb",13) SetGlobal("ToBhaalhunt","Global",4)~
==ToCyric@79
=@80
==ToAdon@81
==CVSan25J@82
==ToCyric@83
==ToPellig@84
END
++@85EXIT
++@86EXIT

CHAIN
IF~Global("TotPeople","CVDre2",2)~THEN ToPellig ToThay2
@87
DO~SetGlobal("TotPeople","CVDre2",3) SetGlobal("ToBhaalhunt","Global",5)~
==CVSan25J@88
==Narqmes@89
==ToKapapa@90
==ToGorion@91
==TOPellig@92
==ToCyric@93
==ToGorion@94
==ToKapapa@95
==ToAdon@96
==NarQMes@97
==ToPellig@98
==TOLini@99
==ToGorion@100DO~EscapeAreaObject("WDTown")~
==ToKapapa@101DO~EscapeAreaObject("WDTown")~
==CVSan25J@102
==NarQMes@103EXIT

CHAIN
IF~Global("TotPeople","CVDre1",1)~THEN Sanwinth Wintr1
@104
DO~SetGlobal("TotPeople","CVDre1",2)~
==ToIsmad@105
==Sanwinth@106
==ToIsmad@107
==Sanwinth@108
==ToIsmad@109
==Sanwinth@110
==ToIsmad@111
=@112
==CVSan25J@113
==Sanwinth@114
==ToIsmad@115
==Sanwinth@116
==ToIsmad@117
==Sanwinth@118
==ToIsmad@119DO~EscapeAreaObject("toTemple")~
==Sanwinth@120DO~EscapeAreaObject("toTemple")~EXIT

CHAIN
IF~Global("TotPeople","CVDre1",2) ~THEN Sankaba Pregn1
@121
DO~SetGlobal("TotPeople","CVDre1",3)~
==ToElmi@122
==ToCyric@123
==CVSan25J@124
==Sankaba@125
END
++@126EXTERN ToElmi Pregn2
++@127EXTERN ToElmi Pregn2

CHAIN
IF~~THEN ToElmi Pregn2
@128
==CVSan25J@129
==Sankaba@130
==ToElmi@131
==ToCyric@132DO~StartCutSceneMode() Wait(2) FadeToColor([20.0],0) Wait(2) TextScreen("TotKhal") Wait(2) StartCutScene("CVcut403") ~EXIT

CHAIN
IF ~Global("TotThay","Global",1)~THEN TOCyric TotThay1
@133
DO~SetGlobal("TotThay","Global",2)~
==ToPellig@134
==ToLini@135
==ToAdon@136
==CVSan25J@137
==ToCyric@138
END
++@139EXIT
++@140EXIT
++@141EXIT

CHAIN
IF~Global("TotPeople","RTF510",1) GlobalLT("TotThay","Global",4)~THEN RTMask TotThay2
@142
DO~SetGlobal("TotPeople","RTF510",2) IncrementGlobal("TotThay","Global",1)~
==ToCyric@143
==RTMask@144
==ToCyric@145
==RTMask@146
==ToCyric@147
==RTMask@148
==ToCyric@149
==RTMask@150
==ToCyric@151
==RTMask@152
==ToCyric@153
==RTMask@154DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~Global("Totshark","RTF056",1)GlobalLT("TotThay","Global",4) ~THEN RTAuct Totthay3
@155
DO~SetGlobal("Totshark","RTF056",2)IncrementGlobal("TotThay","Global",1)~
==RTShark@156
==RTAuct@157
==ToAdon@158
==RTAuct@159
==Tolini@160
==RTAuct@161
==TOCyric@162
==RTShark@163
==RTAuct IF~GlobalLT("TotThay","Global",4)~THEN@164DO~EscapeArea()~
==Tolini IF~GlobalGT("TotThay","Global",3)~THEN@165EXIT

CHAIN
IF~Global("TotThay","Global",5)~THEN ToAdon Totthay4
@166
DO~SetGlobal("TotThay","Global",6)~
==CVSan25J@167
==ToCyric@168
==ToPellig@169
==CVSan25J@170
==ToCyric@171
==ToPellig@172
==ToCyric@173
==CVSan25J@174EXIT

CHAIN
IF~Global("TotThay","Global",6)~THEN ToHomer Totthay4
@175
DO~SetGlobal("TotThay","Global",7)~
==CVSan25J@176
==RTEdwin@177
==ToHomer@178
==ToCyric@179
==RTEdwin@180
==ToHomer@181
==ToCyric@182
==ToHomer@183DO~EscapeAreaObject("Estate")~
==RTEdwin@184DO~EscapeAreaObject("Estate")~EXIT

CHAIN
IF~Global("TotThay","Global",8)~THEN ToCyric GotRelithay1
@185
DO~SetGlobal("TotThay","Global",9) SetGlobal("ToBhaalhunt","Global",6) ~
==ToBhaal@186
==ToAdon@187
==ToBhaal@188
==ToCyric@189
==CVSan25J@190
==ToBhaal@191
==ToCyric@191
==CVSan25J@192
==ToPellig@193
==ToBhaal@194
=@195DO~EscapeAreaObject("Downa")~
END
++@196EXIT
++@197DO~SetGlobal("TotThay","Global",10)~EXIT
