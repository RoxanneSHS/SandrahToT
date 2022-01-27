BEGIN ToOlive
BEGIN ToFind
BEGIN ToNarth
BEGIN ToMoand
BEGIN ToKapapa
BEGIN ToTorm
BEGIN Tomart3

CHAIN
IF~Global("ToBaneHunt","Global",2)~THEN ToAdon Reunite1
@0
DO~SetGlobal("ToBaneHunt","Global",3)~
==CVSan25J@1
=@2
=@3
==ToAdon@4
==ToLini@5
==ToPellig@6
==ToCyric@7
=@8
==CVSan25J@9
==ToPellig@10
==CVSan25J@11
==ToPellig@12
==ToLini@13
==ToPellig@14
==ToAdon@15
==CVSan25J@16
==ToAdon@17
==ToPellig@18
==TOLini@19
==ToCyric@20
END
++@21EXTERN ToCyric Reunite2
++@22EXTERN ToCyric Reunite2

CHAIN
IF~~THEN ToCyric Reunite2
@23
==ToAdon@24
==ToCyric@25
==ToPellig@26
END
++@27DO~RevealAreaOnMap("Tot006") AddJournalEntry(@3040,QUEST)~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",4)~THEN ToPellig WhoFath1
@28
DO~SetGlobal("ToBaneHunt","Global",5)~
=@29
END
++@30+ WhoFath2
++@31+ WhoFath2

CHAIN
IF~~THEN ToPellig WhoFath2
@32
==CVSan25J@33
==ToPellig@34
END
++@35EXTERN CVSan25J  WhoFath3
++@36EXIT

CHAIN
IF~~THEN CVSan25J  WhoFath3
@37
==ToPellig@38
==CVsan25J@39
=@40
==ToPellig@41
==CVSan25J@42
==ToPellig@43
END
++@44EXIT
++@45EXIT

CHAIN
IF~Global("ToBaneHunt","Global",6)~THEN ToLini Number6
@46
DO~SetGlobal("ToBaneHunt","Global",7)~
==CVSan25J@47
==Tolini@48
==CVSan25J@49
==Tolini@50
==CVSan25J@51
==Tolini@52
=@53
END
++@54EXIT
++@55EXIT

CHAIN
IF~Global("ToBaneHunt","Global",8)~THEN ToPellig InMornb1
@56
DO~SetGlobal("ToBaneHunt","Global",9)~
==ToDrizzt IF~InParty("ToDrizzt")~THEN@57
==ToLini IF~!InParty("ToDrizzt")~THEN@57
==ToAdon@58
==ToCyric@59EXIT

CHAIN
IF WEIGHT #-2~Global("Sailors","RTF381",1)~THEN Acqxzah1 HireShip1
@60
DO~SetGlobal("Sailors","RTF381",2)~
==ToCyric@61
==Sailfin@62
==Sailjos@63
==RT38Inn@64
==ToAdon@65
==Sailfin@63
==RT38Inn@66
END
++@67+ HireShip2
++@68 + HireShip2

CHAIN
IF~~THEN Acqxzah1 HireShip2
@69
 ==RT38Inn@70
 ==ToPellig@71
 ==Sailfin@72
 ==Sailjos@73
 ==ToCyric@74
 ==RT38Inn@75
 =@76
=@77
==CVSan25J@78
==RT38Inn@79
END
++@80+ HireShip3
++@81+ HireShip3
++@82+ HireShip3

CHAIN
IF~~THEN Acqxzah1 HireShip3
@83
==RT38Inn@84DO~AddJournalEntry(@3044,QUEST)~EXIT

CHAIN
IF WEIGHT #-2~Global("ToBaneHunt","Global",12) Global("Sailors","RTF381",2)~THEN Acqxzah1 HireShip11
@85
DO~SetGlobal("Sailors","RTF381",3) EraseJournalEntry(@3044)~
END
++@86EXIT
++@87+ HireShip13

CHAIN
IF WEIGHT #-2~Global("Sailors","RTF381",3)~THEN Acqxzah1 HireShip12
@88
END
++@86EXIT
++@87+ HireShip13

CHAIN
IF~~THEN Acqxzah1 HireShip13
@89
DO~SetGlobal("Sailors","RTF381",4)~
=@90DO~AddJournalEntry(@3047,QUEST) ClearAllActions() StartCutSceneMode() StartCutScene("ToMovTan") ~EXIT

CHAIN
IF~Global("PriorTot","rtf145",2)~THEN ToOlive Help1
@91
DO~SetGlobal("PriorTot","rtf145",3)~
==ToCyric@92
==ToAdon@93
==ToOlive@94
==ToCyric@95
==ToOlive@96
==ToLini@97
==ToOlive@98
=@99
=@100DO~MoveViewPoint([2326.1401],INSTANT) CreateCreature("Jellgr",[2326.1401],2)~EXIT

CHAIN
IF~Global("PriorTot","rtf145",4)~THEN ToOlive Help2
@101
DO~SetGlobal("PriorTot","rtf145",5)~
=@102DO~MoveBetweenAreas("Tot009",[270.660],12)~
END
++@103EXIT
++@104EXIT

CHAIN
IF~Global("Boyfind","Tot009",1)~THEN ToOlive Help3
@105
DO~SetGlobal("Boyfind","Tot009",2)~
==ToNarth@106
==ToCyric@107
==ToAdon@108
==ToLini@109
==ToNarth@110
==ToPellig@111
==ToOlive@112
==ToCyric@113
==ToPellig@114
==CVSan25J@115
==ToCyric@116
==CVSan25J@117
==ToPellig@118
==TOCyric@119EXIT

CHAIN
IF WEIGHT #-6~Global("Santotstart","Global",1)~THEN RTMonk InTot1
@120EXIT

CHAIN
IF~NumTimesTalkedTo(0)~THEN ToMoand KhalResc0
@121
==ToAdon@122
==ToMoand@123
==ToCyric@124
==CVSan25J@125
==ToDrizzt IF~InParty("ToDrizzt")~THEN @126
==ToAdon IF~!InParty("ToDrizzt")~THEN @126
==CVSan25J@127
==ToDrizzt IF~InParty("ToDrizzt")~THEN @128
==ToAdon IF~!InParty("ToDrizzt")~THEN @220
==ToMoand@129DO~Enemy()~EXIT

CHAIN
IF~NumTimesTalkedTo(0)~THEN ToKapapa KhalResc1
@130
DO~SetGlobal("Fathresc","Tot010",1)~
==ToCyric IF~IsValidForPartyDialog("ToCyric")~THEN@131
==ToLini IF~!IsValidForPartyDialog("ToCyric")~THEN@132
==ToKapapa@133
=@134
END
IF~Global("Daughresc","Tot010",1)~THEN REPLY@135+ KhalResc2
IF~Global("Daughresc","Tot010",0)~THEN REPLY@136+ KhalResc3

CHAIN
IF~~THEN ToKapapa KhalResc2
@137DO~MoveBetweenAreas("RTF145",[1931.1540],10) ~EXIT

CHAIN
IF~~THEN ToKapapa KhalResc3
@138DO~MoveBetweenAreas("RTF145",[1931.1540],10) ~EXIT

CHAIN
IF WEIGHT #-4~Global("ToBaneHunt","Global",10)~THEN Sankaba KhalResc11
@139
DO~SetGlobal("ToBaneHunt","Global",11) SetGlobal("Daughresc","Tot010",1)~
==ToFind@140
==Sankaba@141
==ToFind@142
==ToCyric@143
==CVSan25J@144
==ToCyric@145
==ToPellig@146
==ToCyric@147
==Sankaba@148
END
IF~Global("Fathresc","Tot010",1)~THEN REPLY@149+ KhalResc12
IF~Global("Fathresc","Tot010",0)~THEN REPLY@150+ KhalResc12

CHAIN
IF~~THEN Sankaba KhalResc12
@151DO~MoveBetweenAreas("RTF145",[1931.1540],3) ~
==ToFind IF~PartyHasItem("ToLiAm3")~THEN@152DO~TakePartyItem("ToLiAm3") Wait(2) MoveBetweenAreas("RTF145",[1931.1540],1) ~
==ToFind IF~!PartyHasItem("ToLiAm3")~THEN@153DO~MoveBetweenAreas("RTF145",[1931.1540],1) ~EXIT

CHAIN
IF~Global("Boyfind","Tot009",3)~THEN  ToNarth Getou1
@154
DO~SetGlobal("Boyfind","Tot009",4) AddexperienceParty(6000) ReputationInc(1)~
==ToOlive@155
==ToNarth@156DO~MoveBetweenAreas("RTF381",[580.480],6)~
==ToOlive@157DO ~MoveBetweenAreas("RTF145",[1931.1540],4)~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",11) ~THEN  ToOlive CanSail1
@158
DO~SetGlobal("ToBaneHunt","Global",12) ~
==ToFind@159
==ToKapapa@160
==Sankaba@161
==CVSan25J@162
==ToFind IF~PartyHasItem("ToLiAm3")~THEN@163DO~TakePartyItem("ToLiAm3") Wait(2) EscapeAreaDestroy(75)~
==ToFind IF~!PartyHasItem("ToLiAm3")~THEN@164DO~EscapeAreaDestroy(75)~
==ToOlive@165DO~EscapeAreaDestroy(75)~
==ToKapapa@166
==CVSan25J@167
==Sankaba@168
==ToAdon@169
==ToKapapa@170
==ToCyric@171
==ToKapapa@172DO~EscapeAreaDestroy(75)~
==Sankaba@173DO ~EscapeAreaDestroy(75)~
==ToCyric@174
END
++@175EXIT

CHAIN
IF~Global("ToBaneHunt","Global",12) ~THEN  ToBane Tantras1
@176
DO~SetGlobal("ToBaneHunt","Global",13) ~
==ToBhaal@177
==ToBane@178
==ToCyric@179
==ToBhaal@180DO~EscapeAreaObject("Tantras")~
==ToBane@181DO~EscapeAreaObject("Tantras")~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",13) ~THEN  ToTorm Tantras2
@182
DO~SetGlobal("ToBaneHunt","Global",14) ~
==CVSan25J@183
==ToTorm@184
==TOPellig@185
==ToTorm@186
==ToAdon@187
==ToTorm@188
==ToCyric@189
==ToTorm@190DO~EscapeAreaObject("Temple")~
==ToLini@191
END
++@192EXIT
++@193EXIT

CHAIN
IF~Global("ToBaneHunt","Global",18)~THEN  Tomart3 Overbane
@194
DO~SetGlobal("ToBaneHunt","Global",19) SetGlobal("ToBhaalhunt","Global",1)~
==Boyba1@195
==Girba1@196
==ToPellig@197
==ToAdon@198
==Tomart3@199
==ToCyric@200
==ToLini@201
==CVSan25J@202
==Girba1@203
==ToCyric@204
==Tomart3@205
==TODrizzt IF~InParty("Todrizzt")~THEN@206
==TOAdon IF~!InParty("Todrizzt")~THEN@206
==Boyba1@207
==ToCyric@208
END
++@209EXTERN ToPellig Overbane2
++@210 EXTERN ToPellig Overbane2

CHAIN
IF~~THEN ToPellig Overbane2
@211
=@212
==CVSan25J@213
==Tolini@214
==ToCyric@215
==ToAdon@216
==CVSan25J@217
END
++@218EXIT
++@219EXIT
