EXTEND_BOTTOM Taerom 14
IF~Global("Santotstart","Global",1) !PartyHasItem("Dagg09") !PartyHasItem("sw1h18")~THEN REPLY@0GOTO Totsilv1
END

APPEND Taerom
IF~~THEN BEGIN Totsilv1
SAY@1
IF~~THEN REPLY@2EXIT
IF~~THEN REPLY@3DO~TakePartyGold(1800) GiveItemCreate("sw1h18",Player1,1,0,0)~EXIT
IF~~THEN REPLY@4EXIT
END
END

EXTEND_BOTTOM Halbaz 0
IF~Global("Santotstart","Global",1) !PartyHasItem("Dagg09") !PartyHasItem("sw1h18")~THEN REPLY@0GOTO Totsilv2
END

APPEND Halbaz
IF~~THEN BEGIN Totsilv2
SAY@5
IF~~THEN REPLY@2EXIT
IF~~THEN REPLY@3DO~TakePartyGold(1800) GiveItemCreate("dagg09",Player1,1,0,0)~EXIT
IF~~THEN REPLY@4EXIT
END
END