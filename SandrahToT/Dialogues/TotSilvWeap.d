EXTEND_BOTTOM Taerom 14
IF~Global("Santotstart","Global",1) !PartyHasItem("Dagg09") !PartyHasItem("sw1h18")~THEN REPLY~Do you have any silver weapon for sale?~GOTO Totsilv1
END

APPEND Taerom
IF~~THEN BEGIN Totsilv1
SAY~I have acquired this sword recently, the former owner swore it was Balduran's sword. Be that true or not, it is a silver weapon and for 1800GP it can be yours.~
IF~~THEN REPLY~No, thank you, I think it is forgery.~EXIT
IF~~THEN REPLY~I buy the item, not the story, so here is your gold.~DO~TakePartyGold(1800) GiveItemCreate("sw1h18",Player1,1,0,0)~EXIT
IF~~THEN REPLY~I may come back if I have enough money.~EXIT
END
END

EXTEND_BOTTOM Halbaz 0
IF~Global("Santotstart","Global",1) !PartyHasItem("Dagg09") !PartyHasItem("sw1h18")~THEN REPLY~Do you have any silver weapon for sale?~GOTO Totsilv2
END

APPEND Halbaz
IF~~THEN BEGIN Totsilv2
SAY~I have acquired this dagger recently, the former owner swore it was a werebane. Be that true or not, it is a silver weapon and for 1800GP it can be yours.~
IF~~THEN REPLY~No, thank you, I think it is forgery.~EXIT
IF~~THEN REPLY~I buy the item, not the story, so here is your gold.~DO~TakePartyGold(1800) GiveItemCreate("dagg09",Player1,1,0,0)~EXIT
IF~~THEN REPLY~I may come back if I have enough money.~EXIT
END
END