BEGIN ToDrizzt
BEGIN TONyssty
BEGIN TODrowL
BEGIN ToIren
BEGIN Tobodhi

CHAIN
IF~Global("ToSleep","Global",1)~THEN CVSan25J Sleepkel1
@0
==ToKelem@1
END
++@2DO~SetGlobal("ToSleep","Global",2)~+ Sleepkel2
++@3DO~SetGlobal("ToSleep","Global",2)~EXTERN Tokelem Sleepkel3

CHAIN
IF~~THEN CVSan25J Sleepkel2
@4
==ToKelem@5
END
++@6DO~RestParty()~EXIT
++@7DO~RestParty()~EXIT

CHAIN
IF~~THEN ToKelem Sleepkel3
@8
END
++@9DO~RestParty()~EXIT
++@7DO~RestParty()~EXIT

CHAIN
IF~Global("Tolini","BG4100",8)~THEN ToAdon Mine1
@10
DO~SetGlobal("Tolini","BG4100",9)~
==ToCyric@11
==ToLini@12
==ToKelem@13
==TOPellig@14
END
++@15EXIT
++@16EXIT

//Liriel' Quest
CHAIN
IF~Global("ToSleep","Global",3)~THEN Tolini TOLiniQuest1
@17
DO~SetGlobal("Chapter","Global",31)~
==TOCyric@18
==Tolini@19
==TOAdon@20
==TOKelem@21
END
++@22DO~SetGlobal("ToSleep","Global",4) SetGlobal("TOLiriquest","Global",1)~+ TOLiniQuest2
++@23DO~SetGlobal("ToSleep","Global",4) SetGlobal("TOLiriquest","Global",1)~+ TOLiniQuest2

CHAIN
IF~~THEN Tolini TOLiniQuest2
@24
==TOCyric@25
==TOKelem@26
==TOAdon@27
END
++@28+ TOLiniQuest3
++@29+ TOLiniQuest3

CHAIN
IF~~THEN Tolini TOLiniQuest3
@30
=@31
==TOCyric@32
==Tolini@33
==TOAdon@34
==Tolini@35
==TOCyric@36
==Tolini@37
==TOCyric@38
==Tolini@39
=@40
=@41
END
++@42DO~AddJournalEntry(@3015,QUEST) AddexperienceParty(6000) RestParty()~EXIT
++@43DO~AddJournalEntry(@3015,QUEST) AddexperienceParty(7000) RestParty()~EXIT
++@44DO~IncrementGlobal("Sanpoints","Global",-1) ScreenShake([1600.1604],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~EXTERN Tocyric TOLiniQuest4

CHAIN
IF~~THEN Tocyric TOLiniQuest4
@45
==TOPellig@46
END
++@47DO~AddJournalEntry(@3015,QUEST) RestParty()~EXIT
++@48DO~AddJournalEntry(@3015,QUEST) RestParty()~EXIT

CHAIN
IF~Global("TOLiriquest","Global",4)~THEN Tolini TOLiniQuest10
@49
DO~SetGlobal("TOLiriquest","Global",5)~
==TOPellig@50
==Tolini@51
==Tocyric@52
==Tokelem@53
==TOPellig@54
END
++@55EXIT
++@56EXIT

CHAIN
IF~Global("TOHaiass","Global",1) ~THEN Tocyric TOHaiCit
@57
DO~SetGlobal("TOHaiass","Global",2) ~
==ToPellig@58
==Tocyric@59
==CVSan25J@60
==ToPellig@61
==Tocyric@62
END
++@63EXIT
++@64EXIT
++@65EXIT


//_______________________________________________________________________
CHAIN
IF WEIGHT #-2~Global("TOLiriquest","Global",2)~THEN Ammerc07 Linisee
@66
DO~SetGlobal("TOLiriquest","Global",3) ~
==Tolini@67
==Tocyric@68
==TOAdon@69
==Ammerc07@70DO~Enemy()~EXIT

CHAIN
IF WEIGHT #-2~Global("TOLiriquest","Global",5)~THEN Ammerc07 Linisee2
@71
DO~SetGlobal("TOLiriquest","Global",6) ~
==CVSan25J@72
==ToPellig@73
==ToCyric@74
==Tolini@75
==ToCyric@76
==Ammerc07@77DO~ENEMY()~
END
++@78EXIT
++@79EXIT

CHAIN
IF~Global("TOLiriquest","Global",6)~THEN TODrowL Found1
@80
DO~SetGlobal("TOLiriquest","Global",7)~
==Tolini@81
==TODrowL@82
==ToAdon@83
==TOCyric@84
==TODrowL@85
==TOCyric@86
==TODrowL@87DO~MoveToPoint([1734.58]) Wait(2) MoveBetweenAreas("tot002",[1188.439],7)~EXIT

CHAIN
IF WEIGHT #-41~Global("SanTotStart","Global",1) ~THEN SaMystp1 InTot
@88
=@89
END
++ @90EXIT
++@91DO ~StartStore("CVMystem",LastTalkedToBy(Myself))~EXIT

CHAIN
IF WEIGHT #-4~Global("SanTotStart","Global",1) ~THEN SAMYSTP2  InTot2
@88
=@92EXIT

CHAIN
IF~Global("TOLiriquest","Global",7)~THEN TONyssty Found2
@93
DO~SetGlobal("TOLiriquest","Global",8)~
==TOCyric@94
==TONyssty@95
=@96
=@97
==Tolini@98
==TONyssty@99
==TODrowL @100
==TONyssty@101
==TODrowL@102
==TONyssty@103
=@104
=@105
==TODrowL@106DO~Enemy()~
==TONyssty@107DO~ForceSpell(Player1,HELL_BUFFET) Wait(4) ForceSpell(Myself,DO_SOME_EFFECTS) CreateVisualEffectObject("SPFIREPI",Myself) Enemy()~EXIT

CHAIN
IF~Global("TOLiriquest","Global",8)~THEN TODrizzt Found3
@108
DO~SetGlobal("TOLiriquest","Global",9)~
==Tolini@109
==TODrizzt@110
==Tolini@111
=@112
==TODrizzt@113
==CVSan25J@114
==TODrizzt@115
==Tolini@116
==TODrizzt@117DO~GiveItem("Toliamu","Tolini")~
==CVSan25J@118
==TODrizzt@119DO~MoveBetweenAreas("CVelm3",[352.380],12) ~EXIT

CHAIN
IF~Global("TOLiriquest","Global",10)~THEN TOCyric Found4
@120
DO~SetGlobal("TOLiriquest","Global",11)~
==Tolini@121
==ToAdon@122
==ToPellig@123
==ToKelem@124
==Tolini@125
==CVSan25J@126
==Tolini@127DO~AddexperienceParty(12200) AddJournalEntry(@3020,QUEST)~EXIT

CHAIN
IF WEIGHT #-7~Global("TOLiriquest","Global",12)~THEN C6Elhan2 Found5
@128
DO~SetGlobal("TOLiriquest","Global",13)~
==ToAdon@129
==Warsage@130
==C6Elhan2@131
==ToCyric@132
==Warsage@133
==C6Elhan2@134
==CVSan25J@135
==Warsage@136
==Tolini@137
==Warsage@138
==C6Elhan2@139
==Tolini@140
==Warsage@141
==ToCyric@142
==Warsage@143
==TOCyric@144
==Warsage@145
==C6Elhan2@146
==Tolini@147
==C6Elhan2@148
=@149
==CVSan25J@150
==C6Elhan2@151
END
++@152+ Found6
++@153DO~IncrementGlobal("Sanpoints","Global",-1) ScreenShake([4408.3222],5)Wait(2) ReallyForceSpellRES("TOSpint","CVSandr") ~+ Found7

CHAIN
IF~~THEN C6Elhan2 Found6
@154EXIT

CHAIN
IF~~THEN C6Elhan2 Found7
@155EXIT

CHAIN
IF ~Global("ToMeetBo","ar2800",1)~THEN Tobodhi novamp
@156
DO~SetGlobal("ToMeetBo","ar2800",2)~
==CVSan25J@157
==Tobodhi@158
=@159
=@160
==CVSan25J@161
==ToPellig@162
==Tobodhi@163
==CVSan25J@164
==Tocyric@165
==Centeo@166
==Tobodhi@167
=@168
==Centeo@169DO~MoveToPoint([2068.3188]) EscapeAreaDestroy(55)~
==Tobodhi@170DO~MoveToPoint([2068.3188]) EscapeAreaDestroy(55)~EXIT

CHAIN
IF ~Global("TOLiriquest","Global",13)~THEN Toiren FoundJ
@171
DO~SetGlobal("TOLiriquest","Global",14)~
==RTElles@172
==Toiren@173
==Tolini@174
==Toiren@175
==ToPellig@176
==Toiren@177
==RTElles@178
==Tolini@179
==RTElles@180
==Toiren@181
==TOCyric@182
==Tolini@183
==Toiren@184
==RTElles@185
==ToPellig@186
==Toiren@187
==ToPellig@188
==TOCyric@189
==RTElles@190
==Toiren@191
=@192
=@193DO~ClearAllActions() StartCutSceneMode() Wait(2) TakePartyItem("ToLiAmu") SmallWait(5) ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) SmallWait(5) ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) SmallWait(5) GiveItemCreate("ToLiAm2","Tolini",1,1,0) Wait(2) EndCutSceneMode()ActionOverride("RTElles",MoveToPoint([500.500])) ActionOverride("RTElles",EscapeAreaDestroy(70)~EXIT

CHAIN
IF WEIGHT #-11~AreaCheck("ar2807") Global("adalon","ar2807",1) !PartyHasItem("ToLiAm2")~THEN Udsilver  WrongIt
@194
DO~SetGlobal("TOLiriquest","Global",15) SetGlobal("adalon","ar2807",2)~
==Tolini@195
==Udsilver@196
=@197
==Tolini@198
==Udsilver@199
=@200DO~Enemy() ~EXIT

CHAIN
IF WEIGHT #-11~AreaCheck("ar2807") Global("adalon","ar2807",1) PartyHasItem("ToLiAm2")~THEN Udsilver  RightIt
@194
DO~SetGlobal("TOLiriquest","Global",15) SetGlobal("adalon","ar2807",4)~
==Tolini@195
==Udsilver@196
=@201
==Tolini@202
==Udsilver@203DO~TakePartyItem("ToLiAm2") Wait(2) DestroySelf()~EXIT

CHAIN
IF~AreaCheck("ar2800")Global("SanTotStart","Global",1)~THEN RTElles InToT1
@204
END
++@205EXTERN TOIren FoundJ

CHAIN
IF WEIGHT #-9~Global("TOLiriquest","Global",16)~THEN Sudemin Killjon1
@206
DO~SetGlobal("TOLiriquest","Global",17)~
==ToCyric@207
==Sudemin@208
=@209
==ToPellig@210
==Sudemin@211
==CVSan25J@212
==Sudemin@213
==ToCyric@214
==TOLini@215
==ToAdon@216
==ToKelem@217
==Sudemin@218DO~EscapeAreaDestroy(65)~
==TOPellig@219
END
++@220EXIT
++@221EXIT
++@222EXIT