BEGIN ToGoWa02
BEGIN ToMalar
BEGIN ToWaukee
BEGIN ToMyst
BEGIN ToSune
BEGIN Orc04
BEGIN Toaliann
BEGIN Tosarevm
BEGIN ToHelm
BEGIN ToInnke
BEGIN ToBhaal
BEGIN ToAlaun
BEGIN ToDragBa
BEGIN ToBane
BEGIN ToMyrkul
BEGIN ToElmi

CHAIN
IF WEIGHT #-5~GlobalGT("TOLiriquest","Global",8) Global("TOKelemQuest","Global",0)~THEN Portal  warnpon1
@0
DO~SetGlobal("TOKelemQuest","Global",1)~
END
++@1+ warnpon2
++@2+ warnpon2

CHAIN
IF~~THEN Portal warnpon2
@3DO~EscapeAreaDestroy(40)~EXIT

CHAIN
IF WEIGHT #-5~GlobalGT("TOLiriquest","Global",8) Global("warnjop","tot003",0)~THEN Bently2 warnjop1
@4
DO~SetGlobal("warnjop","tot003",1)~
=@5
END
++@6EXIT

CHAIN
IF~Global("TOKelemQuest","Global",2)~THEN ToKelem Whatwrong1
@7
DO~SetGlobal("TOKelemQuest","Global",3) AddJournalEntry(@3024,QUEST) RealSetGlobalTimer("ToGodsearchT","Global",600)~
==CVSan25J@8
==ToKelem@9
==CVSan25J@10
==ToKelem@11
END
++@12+ Whatwrong2
++@13+ Whatwrong12

CHAIN
IF~~THEN ToKelem Whatwrong2
@14
==CVSan25J@15
=@16
==ToKelem@17
END
++@18+ Whatwrong3
++@19+ Whatwrong3

CHAIN
IF~~THEN ToKelem Whatwrong12
@20
==CVSan25J@21
==ToKelem@22
==CVSan25J@23
==ToKelem@24
END
++@25+ Whatwrong4
++@26+ Whatwrong4
++@27+  Whatwrong4

CHAIN
IF~~THEN  ToKelem Whatwrong4
@28
=@29
END
++@30+  Whatwrong5

CHAIN
IF~~THEN ToKelem Whatwrong3
@29
END
++@31+  Whatwrong5

CHAIN
IF~~THEN ToKelem Whatwrong5
@32
==CVSan25J@33
==ToKelem@34
==CVSan25J@35
==ToKelem@36
==CVSan25J@37
==ToKelem@38EXIT

CHAIN
IF~Global("TOKelemQuest","Global",4)~THEN ToAdon SeeSune1
@39
DO~SetGlobal("TOKelemQuest","Global",5)RealSetGlobalTimer("ToGodsearchT","Global",900)~
==CVSan25J@40
==ToAdon@41
=@42
==CVSan25J@43
==ToAdon@44
END
++@45DO~AddJournalEntry(@3024,QUEST)~EXIT
++@46DO~AddJournalEntry(@3024,QUEST)~EXIT

CHAIN
IF~Global("ToGodwalk","Global",1)~THEN ToGoWa02 Umber1
@47
DO~SetGlobal("ToGodwalk","Global",2)~
==ToAdon@48
==TOCyric@49
==ToPellig@50
==ToGoWa02@51
==ToKelem@52
==ToGoWa02@53
==TOCyric@54
==ToPellig@55
==TOCyric@56
END
++@57EXIT
++@58DO~ReallyForceSpellRES("CVHealh","ToGoWa02")~EXIT
++@59DO~ReallyForceSpellRES("CVHealh","ToGoWa02")~EXIT

CHAIN
IF WEIGHT #-8~Global("ToGodwalk","Global",3)~THEN Prihel NotHel1
@60
DO~SetGlobal("ToGodwalk","Global",4)~
==ToPellig@61
==Prihel@62
=@63
==ToAdon@64
==Prihel@65
==ToPellig@66
==Prihel@67
==CVSan25J@68
==TOAdon@69
==TOCyric@70
==ToPellig@71
=@72
==TOCyric@73
==ToPellig@74
END
++@75DO~AddJournalEntry(@3025,QUEST)~EXIT
++@76DO~AddJournalEntry(@3025,QUEST)~EXIT
++@77DO~AddJournalEntry(@3025,QUEST)~EXIT

CHAIN
IF WEIGHT #-2~Global("ToGodwalk","Global",5)~THEN CVPotngi Malar
@78
DO~SetGlobal("ToGodwalk","Global",6)~
==ToPellig@79
==CVPotngi@80
=@81
==ToCyric@82
==ToAdon@83
==CVSan25J@84
==CVPotngi@85
==ToCyric@86
==CVPotngi@87
END
++@88+ Malar2
++@89+ Malar2

CHAIN
IF~~THEN CVPotngi Malar2
@90DO~GiveItemCreate("potn55",Player1,3,0,0) AddJournalEntry(@3026,QUEST) EscapeAreaDestroy(60)~EXIT

CHAIN
IF~Global("ToGodwalk","Global",7)~THEN Tomalar Malar3
@91
DO~SetGlobal("ToGodwalk","Global",8)~
==ToPellig@92
==ToCyric@93
==ToPellig@94
==ToCyric@95
==CVSan25J@96
==ToMalar@97DO~Enemy()~
==TOAdon@98EXIT

CHAIN
IF WEIGHT #-3~Global("ToWaukGo","Global",1)~THEN CVWDWauk WauGo1
@99
DO~SetGlobal("ToWaukGo","Global",2)~
==ToCyric@100
==CVWDWauk@101
==CVSan25J@102
==CVWDWauk@103DO~EscapeAreaDestroy(50)~
END
++@104EXIT
++@105EXIT
++@106EXIT

CHAIN
IF~Global("ToWaukGo","Global",3) ~THEN ToWaukee WauEscape
@107
DO~SetGlobal("ToWaukGo","Global",4)~
==Grazzt02@108
==TOWaukee@109
==Grazzt02@110
==ToWaukee@111
==Grazzt02@112
=@113
==ToCyric@114
==ToAdon@115
==Grazzt02@116DO~AddJournalEntry(@3027,QUEST) ClearAllActions() StartCutsceneMode() StartCutScene("ToWaEsc")~EXIT

CHAIN
IF WEIGHT #-4~Global("ToWaukGo","Global",6)~THEN CVWDWauk WauGo2
@117
DO~SetGlobal("ToWaukGo","Global",7)~
==ToCyric@118
==Tolini@119
==CVWDWauk@120
==ToCyric@121
==TOPellig@122
==ToKelem@123
==CVWDWauk@124
==ToCyric@125
==Tolini@126
END
++@127EXTERN Tokelem Waukgo3

CHAIN
IF~~THEN Tokelem Waukgo3
@128
==TOAdon@129
==ToCyric@130
==ToLini@131
==ToCyric@132
==TOKelem@133
==ToPellig@134
=@135
==ToCyric@136
==CVSan25J@137
==ToCyric@138
==TOKelem@139
==TOAdon@140EXIT

CHAIN
IF~Global("ToTablet1","Global",1)~THEN ToMyst Tab1Start1
@141
DO~SetGlobal("ToTablet1","Global",2)~
==Tosune@142
==TOAdon@143
==ToPellig@144
==CVSan25J@145
==Tosune@146
==ToPellig@147
==ToMyst@148
=@149
==ToCyric@150
==ToSune@151
==CVSan25J@152
==ToMyst@153
==CVSan25J@154
==ToKelem@155
==Tolini@156
==CVSan25J@157
==ToCyric@158
==ToSune@159
==ToPellig@160
==ToCyric@161
==Tomyst@162
==ToSune@163
==ToPellig@164
==CVSan25J@165
==ToPellig@166
==ToMyst@167
=@168
==ToPellig@169DO~AddJournalEntry(@3030,QUEST) GiveItemCreate("Simbul","ToPellig",0,0,0) TextScreen("Tablete")~EXIT

CHAIN
IF~Global("ToOrcActive","ar01pb",2) ~THEN CVShPri InTot1
@170
DO~SetGlobal("ToOrcActive","ar01pb",3)~
==Orc04@171
==CVShPri@172DO~ClearAllActions() StartCutSceneMode() Wait(1) ActionOverride("ToAdon",JumpToPoint([5000.3700])) ActionOverride(Player1,MoveViewObject(Myself,INSTANT)) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("ToBhaalActive","bd7230",1)~THEN Tosarevm Mothers1
@173
DO~SetGlobal("ToBhaalActive","bd7230",2)~
==SarMel01@174
==ToKelem@175
==Toaliann@176
==ToCyric@177
==ToPellig@178
==ToCyric@179
==Tosarevm@180
==CVSan25J@181
==SarMel01@182
==ToCyric@183
==TOLini@184
==ToAdon@185
==Tosarevm@186
==CVSan25J@187
==ToKelem@188
==ToPellig@189
==CVSan25J IF~Global("Sanrompath","Global",1)~THEN@190
==CVSan25J IF~Global("Sanrompath","Global",2)~THEN@191
==Toaliann@192DO~GiveItemCreate("ToScrl2","ToPellig",0,0,0)~
END
++@193EXIT
++@194EXIT

CHAIN
IF~Global("ToTablet1","Global",5)~THEN ToPellig Tab1Start2
@195
DO~SetGlobal("ToTablet1","Global",6)~
==ToCyric@196
==CVSan25J@197
==ToAdon@198
==TOlini@199
==ToPellig@200
==ToCyric@201
==ToKelem@202
==CVSan25J@203
==ToAdon@204
==ToCyric@205
==TOKelem@205
==ToPellig@206
END
++@207EXIT
++@208EXIT

CHAIN
IF~Global("ToTablet1","Global",6)~THEN ToSune Tab1Start3
@209
DO~SetGlobal("ToTablet1","Global",7)~
==Tomyst@210
==ToCyric@211
==ToPellig@212
==ToAdon@213
==ToMyst@214
==ToKelem@215
==ToSune@216
==CVSan25J@217
==ToMyst@218
END
++@219EXIT
++@220EXTERN ToMyst Bhaalwarn1

CHAIN
IF~~THEN ToMyst Bhaalwarn1
@221
==ToKelem@222
==ToAdon@223
==ToCyric@224
==ToPellig@225
==ToMyst@226
==CVSan25J@227EXIT

CHAIN
IF~True()~THEN ToInnke sell
@228DO~StartStore("Inn2616",LastTalkedToBy(Myself))~EXIT

CHAIN
IF~Global("ToTablet1","Global",7)~THEN ToBhaal Alaun1
@229
DO~SetGlobal("ToTablet1","Global",8)~
==ToAlaun@230
==ToBhaal@231
==ToAlaun@232
=@233
==ToBhaal@234DO~Polymorph(SLAYER) Wait(4) MoveToPoint([1108.788]) Wait(4) DestroySelf()~EXIT

CHAIN
IF~Global("ToTablet1","Global",8)~THEN ToAlaun Alaun2
@235
DO~SetGlobal("ToTablet1","Global",9)~
==ToKelem@236
==ToAlaun@237
==CVSan25J@238
==ToAlaun@239
==ToPellig@240
==ToLini@241
==ToAlaun@242
==CVSan25J@243
=@244
==ToAlaun@245DO~ApplySpellRES("BGSLEEP","ToAlaun")~
==CVSan25J@246
==ToCyric@247
==ToKelem@248
==CVSan25J@249
==ToKelem@250
==CVSan25J@251EXIT

CHAIN
IF~Global("CVTiamal","AR6000",3)~THEN CVTiamal  Intrud1
@252
DO~SetGlobal("CVTiamal","AR6000",4)~
==ToPellig@253
==CVTiamal@254
==ToPellig@255
==ToCyric@256
==CVTiamal@257
==ToCyric@258
==CVTiamal@259
==ToKelem@260
==CVTiamal@261
==CVSan25J@262
==CVTiamal@263
END
++@264+ Intrud2
++@265+ Intrud2
++@266+ Intrud2

CHAIN
IF~~THEN CVTiamal  Intrud2
@267DO~EscapeAreaDestroy(55)~EXIT

CHAIN
IF~GlobalGT("CVabaz","AR6005",1)~THEN ToDragBa Breed2
@268EXIT

CHAIN
IF~Global("CVabaz","AR6005",1)~THEN ToDragBa Breed1
@268
DO~SetGlobal("CVabaz","AR6005",2)~
==ToLini@269
==ToAdon@270
==ToCyric@271
==CVSan25J@272
==ToKelem@273
==ToCyric@274
END
++@275EXIT
++@276EXIT
++@277EXIT

CHAIN
IF~Global("ToTablet1","Global",9)~THEN ToBane Abalair
@278
DO~SetGlobal("ToTablet1","Global",10) SetGlobal("CVabaz","AR6005",4)~
==ToBhaal@279DO~MoveToPoint([779.495]) EscapeAreaDestroy(45)~
==ToMyrkul@280
==ToBane@281
==ToCyric@282
==ToMyrkul@283
==ToBane@284DO~Enemy()~
==TOMyrkul@285DO~EscapeAreaDestroy(45)~EXIT

CHAIN
IF~Global("ToMyrkFi","RTF123",2) ~THEN ToAdon MyrkSig
@286
DO~SetGlobal("ToMyrkFi","RTF123",3)~
==ToPellig@287
==ToCyric@288
==ToLini@289
==ToAdon@290
==ToCyric@291
==ToKelem@292
==ToCyric@293
END
++@294DO~ClearAllActions() StartCutSceneMode() StartCutScene("ToBlaSt1")~EXIT
++@295DO~ClearAllActions() StartCutSceneMode() StartCutScene("ToBlaSt1")~EXIT

CHAIN
IF~Global("ToMyrkFi","RTF123",7)~THEN ToCyric Kelded1
@296
=@297
=@298DO~SetGlobal("ToMyrkFi","RTF123",8)~EXIT

CHAIN
IF~Global("ToTablet1","Global",11)~THEN ToAdon Scar1
@299
DO~SetGlobal("ToTablet1","Global",12)~
==ToSune@300
==ToAdon@301
==ToSune@302
==CVSan25J@303
==ToSune@304
==TOlini@305
==ToSune@306
==ToCyric@307
==ToPellig@308
==ToSune@309DO~ClearAllActions()
StartCutSceneMode() 
Wait(2)
MoveViewPoint([2522.2061],VERY_FAST) 
ActionOverride("ToAdon",MoveToObjectFollow("Tosune"))
ActionOverride("ToPellig",MoveToObjectFollow("Tosune"))
ActionOverride("CVSandr",MoveToObjectFollow("Tosune"))
ActionOverride("ToLini",MoveToObjectFollow("Tosune"))
ActionOverride("ToCyric",MoveToObjectFollow("Tosune"))
MoveToPointNoInterrupt([2522.2061]) 
Wait(4) 
EndCutSceneMode() 
DestroySelf()
~EXIT

CHAIN
IF~Global("ToTablet1","Global",13)~THEN ToHelm helmmyst1
@310
DO~SetGlobal("ToTablet1","Global",14)~
==ToMyst@311
==ToHelm@312
==ToMyst@313
==ToHelm@314
==ToMyst@315
==ToHelm@316
==ToMyst@317
==CVSan25J@318
==ToPellig@319
==ToHelm@320
==TOMyst@321
==ToHelm@322
DO~StartCutSceneMode() Wait(2) StartCutScene("ToMysCu2")~EXIT

CHAIN
IF~Global("ToTablet1","Global",14)~THEN ToHelm helmmyst2
@323
DO~SetGlobal("ToTablet1","Global",15)~
==CVSan25J@324
==ToHelm@325
==CVSan25J@326
==ToCyric@327
=@328
==ToAdon@329
==ToHelm@330
==CVSan25J@331
=@332
==ToPellig@333
=@334
==ToHelm@335DO~StartCutSceneMode() Wait(1) ScreenShake([2033.1900],40) Wait(2) FadeToColor([20.0],0) Wait(4) TextScreen("Tomyste") Wait(4) SetGlobal("Chapter","Global",34) StartCutScene("ToMoveAt")~EXIT

