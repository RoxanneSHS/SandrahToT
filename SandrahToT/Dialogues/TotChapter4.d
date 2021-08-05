BEGIN ToOlive
BEGIN ToFind
BEGIN ToNarth
BEGIN ToMoand
BEGIN ToKapapa
BEGIN ToTorm
BEGIN Tomart3

CHAIN
IF~Global("ToBaneHunt","Global",2)~THEN ToAdon Reunite1
~There they finally are, friends, our little circle is complete.~
DO~SetGlobal("ToBaneHunt","Global",3)~
==CVSan25J~Adon, after all - welcome to our house.~
=~Pelligram, I had the suspicion already you would be here.~
=~Liriel, good to see you. Not a day older, I envy the drow for that...~
==ToAdon~Our little surprise worked well. Cyric really kept his mouth shut and did not spoil it, times are really changing.~
==ToLini~Only today I recognised that I may have missed you all.~
==ToPellig~We may spend a little time to exchange pleasantries - Midnight, you will not be fooled long, you may already guess that this gathering has a more serious background than meeting old friends.~
==ToCyric~Pelligram sadly is correct, just as always. The period we once have labelled *Time of Troubles* is about to come to another climax.~
=~It is probably best for Pelligram to provide us with an overview, she has followed it all in service of her ever-present *Weave*.~
==CVSan25J~Make yourself comfortable while we listen to her report.~
==ToPellig~Our return of the one Tablet of Fate to Helm and by this back to AO has not ended the Avatar Crisis as some people begin to call it now. AO has not lifted his ban and is not willing to do so until the second tablet is found as well and the renegades have been punished.~
==CVSan25J~At least Myrkul has found his end.~
==ToPellig~Yes, and not only he. The mortal gods have used the recent years to establish new facts that will change the pantheon even if AO finally may end the whole crisis.~
==ToLini~Waukeen has not reappeared yet. And Ibrandul, worshipped by some drow, was slain by Shar.~
==ToPellig~A number of minor deities have found their end, like Gilgeam. The goddess Leira - always the misty one - has disappeared. Furthermore, Zinzerena - a drow demigoddess of chaos and thievery, was slain by Lolth. - also some other gods have perished, gods you may not even have heard about as they are not worshipped in this part of Faerun.~
==ToAdon~Not to forget *fair Sune*, who dwells with Sharess somewhere.~
==CVSan25J~You have not come to terms with her yet, Adon?~
==ToAdon~No. But that is not the topic for today. Bane has been sighted lately.~
==ToPellig~We do not know whether he or Bhaal is in possession of the second Tablet. Bane, however is the only trace we have at the moment.~
==TOLini~And where is he exactly?~
==ToCyric~Ehem, it is reported that he left my home town Zhentil Keep some time ago with an army of followers and undead to march against the town of Tantras, where Torm has taken up residence.~
END
++~Why would Bane do such a thing?~EXTERN ToCyric Reunite2
++~It is strange for Bane to start such a war instead of hiding safely.~EXTERN ToCyric Reunite2

CHAIN
IF~~THEN ToCyric Reunite2
~There is one good reason to do it, the missing tablet must be hidden in Tantras.~
==ToAdon~I agree, Cyric.~
==ToCyric~Really?~
==ToPellig~Anyway, Tantras would be the place we should go, either to capture Bane or even better to capture Bane AND the tablet.~
END
++~The way to reach Tantras from here would be to sail the Sea of Fallen Stars passing Westgate and the Pirate Isles and then turning north towards Ravens Bluff. And, the nearest place to embark on a ship would be Mornbryn's Shield east of Eversult.~DO~RevealAreaOnMap("Tot006") AddJournalEntry(@3040,QUEST)~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",4)~THEN ToPellig WhoFath1
~We could not avoid to hear that little turmoil upstairs before you and Cyric came down to our meeting.~
DO~SetGlobal("ToBaneHunt","Global",5)~
=~Anything you like to talk about with an old friend, Midnight?~
END
++~Oh, it was nothing, just Cyric and Elminster quarrelling as usual.~+ WhoFath2
++~Family business, Pelligram, even though...you may be considered part of the family, Aunt Pelligram, haha.~+ WhoFath2

CHAIN
IF~~THEN ToPellig WhoFath2
~I have no intention to intrude into family affairs. It is just not too often one hears a black panther's growl under such circumstances.~
==CVSan25J~You noticed that? Well, yes...~
==ToPellig~Believe me, I am expert when it comes to that species.~
END
++~There was something strange happening this time.~EXTERN CVSan25J  WhoFath3
++~We are close friends, my dear, so believe me when I say, it was nothing, just Elminster about to become the second man in the house by now.~EXIT

CHAIN
IF~~THEN CVSan25J  WhoFath3
~Elminster became slightly agitated in the quarrel with Cyric and just like that - he turned into a panther kitten.~
==ToPellig~A kitten still but with a mighty voice already.~
==CVsan25J~He claimed it was no spell and I am sure it was not. Just something that happened by instinct.~
=~Cyric and me, we had the same thought. It reminded us of Kelemvor.~
==ToPellig~I see why you are irritated, Midnight. Bane removed Kelemvor's curse, but it was just a few days before his death.~
==CVSan25J~Still, it is impossible and you know it just as well as I know. Elminster was born a full year after Kelemvor's death when I was already with Cyric.~
==ToPellig~You are right, Midnight. (Almost to herself) If we apply human growth. The gestation period of the great Plainscats is twelve moons.~
END
++~(Elminster is so different from Cyric - and all your attempts for a second child from Cyric have been in vain - can it really be that he is in fact Kelemvor's heir?)~EXIT
++~(Regardless of those doubts, it is clear that Elminster is a normal human boy who came to the world after a nine months pregnancy. There was only one man in your life at the time of his conception - Cyric, his father.)~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",6)~THEN ToLini Number6
~Midnight, I hope I do not open old wounds with what I have to say.~
DO~SetGlobal("ToBaneHunt","Global",7)~
==CVSan25J~We will see. I am no little cry baby, I guess.~
==Tolini~When I left Undermountain, I passed Mystra's temple in Waterdeep. I met the drow we once rescued during our search for Windwalker.~
==CVSan25J~The man turned to stone, yes, I remember. Dizzt? Was that his name?~
==Tolini~Drizzt Do'Urden, he is called. He regularly visits the temple in between his adventures. He has become a respected man on the surface meanwhile.~
==CVSan25J~Yes?~
==Tolini~No. Not what you think.~
=~Just because we both are drow and male and female...It's not that. I was just thinking that - without Kelemvor - and another big challenge ahead of us... Well, we may need a bit of support from a man who might fit quite well with us.~
END
++~Thank you for the good intention, Liriel, but nobody can ever replace Kelemvor. He is our sixth party member forever.~EXIT
++~I think I heard some stories about Drizzt's adventures. He may really be a worthy addition for the quest ahead. We should look for him at Waterdeep on our way to Mornbryn's Shield.~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",8)~THEN ToPellig InMornb1
~Fine, a ship is here, who is the sailor among us?~
DO~SetGlobal("ToBaneHunt","Global",9)~
==ToDrizzt IF~InParty("ToDrizzt")~THEN~Do you need a drow to tell you that a surfacer sailor on land is most likely found in an inn and that a typical dwarven name for such a place is *Troll in Flames*?~
==ToLini IF~!InParty("ToDrizzt")~THEN~Do you need a drow to tell you that a surfacer sailor on land is most likely found in an inn and that a typical dwarven name for such a place is *Troll in Flames*?~
==ToAdon~(Laughs) Just like on that sign over by that house, you mean?~
==ToCyric~An experienced band of adventurers working hand in hand, hihi.~EXIT

CHAIN
IF WEIGHT #-2~Global("Sailors","RTF381",1)~THEN Acqxzah1 HireShip1
~Landlubbers alert, boys!~
DO~SetGlobal("Sailors","RTF381",2)~
==ToCyric~Gosh, what shall we do with drunken sailors, heh?~
==Sailfin~Whatshallwedowiththedrunkensailor, whatshallwedowiththedrunkensailor...~
==Sailjos~Earlyinthemorning...~
==RT38Inn~You better leave them sailors alone, I want no fights in here. If you want some business with them, you best wait till they are sober - if ever.~
==ToAdon~That may take at least until tomorrow morning.~
==Sailfin~Earlyinthemorning...~
==RT38Inn~Optimist...as long as the captain's boy is gone, I would not bet on this.~
END
++~This sounds like a story we need to know before we deal with them any further, good innkeeper?~+ HireShip2
++~Some buckets of cold water from the shore below may provide the wonder we need.~ + HireShip2

CHAIN
IF~~THEN Acqxzah1 HireShip2
~Master dwarf, bring them landlubbers some ale to drink with us to the loss of a good boy.~
 ==RT38Inn~Sure, if they want to drink, captain. They look to me like a bunch that may otherwise be able to help you with your problem.~
 ==ToPellig~Which in return might be the prerequisite to hire the crew for the cruise we need to do.~
 ==Sailfin~Capt'n won't do no cruises with boy gone, not ever.~
 ==Sailjos~Not Earlyinthemorning...or lateatevening...~
 ==ToCyric~Dwarf, you seem to be the one who's listened long enough to them to tell us what the problem is.~
 ==RT38Inn~I make good money with the ale they consume - but nevertheless, it cannot go on with this way another tenday or more. So listen.~
 =~The ship arrived a tenday ago from Arrabar. On board was as well the captain's young son and a merchant with his daughter who came from as far as Innarlith already on their journey to Waterdeep. While the crew unloaded the ship. Narthil, the captain's son, and the two passengers took the opportunity to go into Mornbryn's Shield itself. They never came back.~
=~When the captain started to miss them, he inquired with his men in town. They could trace their way to the local temple with the grave of the famous heroine Cerameon and there the trail ended. No sign, nothing.~
==CVSan25J~No further hint at all?~
==RT38Inn~From the drunken swearing of the captain it appears that he suspects the merchant to be a disguised Harper and that the man got into some trouble because of this. Khalindra, his daughter and Narthil, the captain's son, were just in the wrong place at the wrong time.~
END
++~Khalindra...if for no other reason...we need to find them!~+ HireShip3
++~Unless we persuade the captain to sell us his ship and we learn to sail it, the only option is to find the missing persons.~+ HireShip3
++~Find those three missing people, win the captain's confidence and get him sober again and continue our own mission - understood.~+ HireShip3

CHAIN
IF~~THEN Acqxzah1 HireShip3
~Bring me my son and I'll give you passages to the Nine Hells and back if you want.~
==RT38Inn~The road into town is just north of my inn and you cannot miss the temple at the market place.~DO~AddJournalEntry(@3044,QUEST)~EXIT

CHAIN
IF WEIGHT #-2~Global("ToBaneHunt","Global",12) Global("Sailors","RTF381",2)~THEN Acqxzah1 HireShip11
~My son has returned, you have saved him. Where ever you want to travel, I will take you.~
DO~SetGlobal("Sailors","RTF381",3) EraseJournalEntry(@3044)~
END
++~We need to rest and purchase some items first. We will come back to you in a while.~EXIT
++~We want to sail to Tantras.~+ HireShip13

CHAIN
IF WEIGHT #-2~Global("Sailors","RTF381",3)~THEN Acqxzah1 HireShip12
~Any place in these waters I can take you, friends?~
END
++~We need to rest and purchase some items first. We will come back to you in a while.~EXIT
++~We want to sail to Tantras.~+ HireShip13

CHAIN
IF~~THEN Acqxzah1 HireShip13
~Aye, Tantras...~
DO~SetGlobal("Sailors","RTF381",4)~
=~I heard there are strange and dangerous things going on there. The harbour is closed it is said. But for you - my plate keel boat can drop you on a shore just north of the town.~DO~AddJournalEntry(@3047,QUEST) ClearAllActions() StartCutSceneMode() StartCutScene("ToMovTan") ~EXIT

CHAIN
IF~Global("PriorTot","rtf145",2)~THEN ToOlive Help1
~Adventurers and well armed, I will sing about you everywhere I go if you stop to help us.~
DO~SetGlobal("PriorTot","rtf145",3)~
==ToCyric~Sure you will, obviously you're a bard, hihi.~
==ToAdon~Your despair may have something to do with some missing people we came to look for?~
==ToOlive~You come for the Harper and the sailor, yes, you come to the right place.~
==ToCyric~Sing, little sparrow, sing.~
==ToOlive~First of all, I am Olive Ruskettle, famous companion of the even more famous Finder Wyvernspur.~
==ToLini~If you say so.~
==ToOlive~Well, maybe we're not YET famous where you come from - where ever that may be.~
=~Anyway, we discovered the reason for that disappearance of some citizens and the sighting of those slime creatures here in town. Just when we prepared to enter in that tower over yonder to explore it further, the Harper and his company arrived in town.~
=~So after some discussion to and fro, the Harper and the sailor and the girl went with Finder into that tower leaving me to keep the citizens away from it by all means. Now they are gone since days and I fight the occasional slime emerging from the door every now and then - like NOW.~DO~MoveViewPoint([2326.1401],INSTANT) CreateCreature("Jellgr",[2326.1401],2)~EXIT

CHAIN
IF~Global("PriorTot","rtf145",4)~THEN ToOlive Help2
~Come, we cannot waste any more time. Now that you are with me, we need to look into that tower.~
DO~SetGlobal("PriorTot","rtf145",5)~
=~Finder! We come to rescue.~DO~MoveBetweenAreas("Tot009",[270.660],12)~
END
++~What are we waiting for? Let us follow her.~EXIT
++~Foolish halfling, now we have one more to rescue.~EXIT

CHAIN
IF~Global("Boyfind","Tot009",1)~THEN ToOlive Help3
~There's the sailor boy who went with the Harper!~
DO~SetGlobal("Boyfind","Tot009",2)~
==ToNarth~Be careful, I think the only reason I am alive and locked in here is to be used as bait.~
==ToCyric~Hihi, you must know, boy, probably used worms for it in the past yourself.~
==ToAdon~Where are the others?~
==ToLini~And where is the key to this cell?~
==ToNarth~The lizardmen took them deeper into...whatever lies beneath this tower. From time to time some slime emerges from that passage at the rear end and makes its way through to town.~
==ToPellig~I cannot believe those slimes and lizards operate here on their own.~
==ToOlive~The Harper spoke of something called Moander and my friend Finder seemed to know what that meant when he followed them.~
==ToCyric~Moander, Pelli-darling?~
==ToPellig~The deity of rot and decay, slimes, reptiles, shambles and such. The signs we see seem to match.~
==CVSan25J~So we are back to fighting gods again.~
==ToCyric~Sooner or later to acquire their power, my dear, hihi.~
==CVSan25J~The power of slime and decay, oh, Cyric, stop it.~
==ToPellig~There is not much of the former power of Moander left anyway, friends. Ever since the fall of Netheril, Moander's influence has decreased.~
==TOCyric~Quite adequate for the deity of decay, hihi. Let's give him, her or it the rest.~EXIT

CHAIN
IF WEIGHT #-6~Global("Santotstart","Global",1)~THEN RTMonk InTot1
~This temple is famous for the grave of Cerameon, defender of Westgate.~EXIT

CHAIN
IF~NumTimesTalkedTo(0)~THEN ToMoand KhalResc0
~Aaaah, adventuring intruders coming to dinner, hohoho. You are on the menu, another bunch of ever hungry mouths to spread the decay.~
==ToAdon~We are not yet willing to serve one like you. It rather seems that after all the time you had, it is now the right moment for you to end.~
==ToMoand~You are mortals while I am not, you will serve.~
==ToCyric~You are really out of time and out of touch, Darkbringer. Guys - or whatever you are - like you fall like flies these days. If there is any godly spark still in you, it will belong to us.~
==CVSan25J~All our talk is useless. We will have Khalindra, she needs to be free and travel on, too much depends on her...~
==ToDrizzt~It is now the second time, Midnight, that I have the feeling you know more about the merchant's daughter than we do.~
==CVSan25J~Is not everyone we can rescue important, Drizzt?~
==ToDrizzt~If you put it this way. I may not always understand surfacer's ways yet.~
==ToMoand~Neither you nor anyone else down here will leave alive.~DO~Enemy()~EXIT

CHAIN
IF~NumTimesTalkedTo(0)~THEN ToKapapa KhalResc1
~Help has found its way into this acid hole, Olive was successful, it seems.~
DO~SetGlobal("Fathresc","Tot010",1)~
==ToCyric IF~IsValidForPartyDialog("ToCyric")~THEN~A clever contingency plan, man. Leave one outside just in case, hihi. You seem to have some experience in such situations, so you must be that so-called harper.~
==ToLini IF~!IsValidForPartyDialog("ToCyric")~THEN~A clever contingency plan, man. Leave one outside just in case. You seem to have some experience in such situations, so you must be the harper we heard about.~
==ToKapapa~Glarasteer Rhauligan, merchant of Innarlith, and acquainted with the trouble of the roads. I came to look into this situation for the sole reason nobody else was here to do it - until now.~
=~Did you manage to find my daughter, we got separated by the monster's assault?~
END
IF~Global("Daughresc","Tot010",1)~THEN REPLY~Yes, and also the bard Finder, we cleared the way out and sent them to the surface already.~+ KhalResc2
IF~Global("Daughresc","Tot010",0)~THEN REPLY~Not yet, nor the bard Finder who is supposed to be down here as well.~+ KhalResc3

CHAIN
IF~~THEN ToKapapa KhalResc2
~In this case Moander has been defeated, good work. I will follow them quickly and we will have time enough back in town to talk about everything in a more friendly atmosphere.~DO~MoveBetweenAreas("RTF145",[1931.1540],10) ~EXIT

CHAIN
IF~~THEN ToKapapa KhalResc3
~In this case Moander has not been yet defeated. He must be in the northern part of this swamp cave as here is a dead end. I am not much help in my current state but should be able to make it back outside following the way you cleared. I hope I see you soon with my daughter and the bard. ~DO~MoveBetweenAreas("RTF145",[1931.1540],10) ~EXIT

CHAIN
IF WEIGHT #-4~Global("ToBaneHunt","Global",10)~THEN Sankaba KhalResc11
~There goes our capturer, it is true that in this Time of Troubles even gods can die.~
DO~SetGlobal("ToBaneHunt","Global",11) SetGlobal("Daughresc","Tot010",1)~
==ToFind~There, his amulet...I must have it.~
==Sankaba~You want the power of an evil dead god, Finder? I never would have guessed such, even if I confess, our acquaintance is still a short one.~
==ToFind~It will give me the power to make my songs, tales and messages heard, Khalindra. It is the spark of a deity and by that knows neither good nor evil. It is sheer power and the user defines its alignment.~
==ToCyric~There you hear it, Midnight. The power of an evil god we defeat is ours to take. We do with it according to our own design.~
==CVSan25J~If that were only true...the dark side of an evil power may be stronger than the mortal trying to handle it. Your intention may be good at the beginning - until the power itself starts to corrupt you. Is this not what has started the whole Avatar Crisis? Those three gods, former mortals, who came into possession of Jergal's power and now just hunger for more?~
==ToCyric~We defeat them and by that we prove we're stronger than those fools.~
==ToPellig~Leave the spark here to the bard, Cyric. Even if you were right, you do not need it - the ones awaiting us have much more to give.~
==ToCyric~Pelli, Pelli, your cleverness always overwhelms me. My advisers are right. Take your *rotten* treasure, bard and choke on it.~
==Sankaba~Have you found my father, adventurers? He must be around here as well.~
END
IF~Global("Fathresc","Tot010",1)~THEN REPLY~Yes, we sent him back the way we came and we suggest you follow him quickly.~+ KhalResc12
IF~Global("Fathresc","Tot010",0)~THEN REPLY~Not yet, we will explore the rest of this acid cave. Meanwhile you should go back the way we already cleared and wait for us outside.~+ KhalResc12

CHAIN
IF~~THEN Sankaba KhalResc12
~We will do that, Midnight. Thank you. Come, Finder.~DO~MoveBetweenAreas("RTF145",[1931.1540],3) ~
==ToFind IF~PartyHasItem("ToLiAm3")~THEN~I think we agreed that I will take this with me.~DO~TakePartyItem("ToLiAm3") Wait(2) MoveBetweenAreas("RTF145",[1931.1540],1) ~
==ToFind IF~!PartyHasItem("ToLiAm3")~THEN~I will escort you to safety, Khalindra.~DO~MoveBetweenAreas("RTF145",[1931.1540],1) ~EXIT

CHAIN
IF~Global("Boyfind","Tot009",3)~THEN  ToNarth Getou1
~Ah, you have the key. Everyone else is already in safety outside. ~
DO~SetGlobal("Boyfind","Tot009",4) AddexperienceParty(6000) ReputationInc(1)~
==ToOlive~I entertained poor Narthil with my songs as best as I could meanwhile.~
==ToNarth~(Grins) I had little chance to escape, Olive. Now, honestly, I am sure you will get really famous, you have talent enough.~DO~MoveBetweenAreas("RTF381",[580.480],6)~
==ToOlive~Now, let's go, the others are waiting for us.~DO ~MoveBetweenAreas("RTF145",[1931.1540],4)~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",11) ~THEN  ToOlive CanSail1
~I will write about this adventure immediately.~
DO~SetGlobal("ToBaneHunt","Global",12) ~
==ToFind~It would require a lot of bardic imagination, Olive. You were not even there.~
==ToKapapa~Young friend, everybody here played his or her important part in the matter. Most of all our rescuers, thank you again.~
==Sankaba~Yes, thank you, friends. Even I have the feeling this might have just been a quite *normal* day for adventurers like you.~
==CVSan25J~It was the day we met you and by this a very special day.~
==ToFind IF~PartyHasItem("ToLiAm3")~THEN~How charming...now with everything said and done, come, Olive, we need to hit the road again. And I think we agreed that I will take this with me.~DO~TakePartyItem("ToLiAm3") Wait(2) EscapeAreaDestroy(75)~
==ToFind IF~!PartyHasItem("ToLiAm3")~THEN~How charming...now with everything said and done, come, Olive, we need to hit the road again.~DO~EscapeAreaDestroy(75)~
==ToOlive~Wait, you seem to be quite in a hurry, Finder. Bye, friends, I'm coming...~DO~EscapeAreaDestroy(75)~
==ToKapapa~We will continue our journey to the Sword Coast after a short rest, Khalindra.~
==CVSan25J~If you should pass Athkatla, ask for Elminster's house. Our son will provide you with a comfortable stay in town, just mention you met us here.~
==Sankaba~You will travel farther east? Be warned, we heard some heavily armed troupes are on a march around Ravens Bluff.~
==ToAdon~Exactly why we need to be there. They are marching on Tantras.~
==ToKapapa~I was sure you were not here because of our case. The gods you may have to face at Tantras are far more powerful than Moander.~
==ToCyric~Bane and Bhaal, if we are lucky, both of them together.~
==ToKapapa~Your definition of *lucky* is yours, friend, and luck is what you may need as help from the gods is not to be expected. Good journey.~DO~EscapeAreaDestroy(75)~
==Sankaba~Good voyage - and I will remember to pay a visit to your son Elminster to report of our meeting and your further plans.~DO ~EscapeAreaDestroy(75)~
==ToCyric~A charming young girl.~
END
++~At least one thing in which father and son agree.~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",12) ~THEN  ToBane Tantras1
~Those? They are still pursuing us after so many mortal years?~
DO~SetGlobal("ToBaneHunt","Global",13) ~
==ToBhaal~Those are the same who defeated the idiot Myrkul and delivered one of the tablets to the Overfool AO.~
==ToBane~Not only Torm growing with each sacrifice of his stupid martyrs, no, there are also these adventurers...~
==ToCyric~With most of your undead and whatnots destroyed, hihihi, it's time now for you. The soon-to-be-dead-three will be reunited today.~
==ToBhaal~The remaining tablet is more important than those mortals. Come, Bane, let our cultists finish them.~DO~EscapeAreaObject("Tantras")~
==ToBane~We have to secure the tablet before Torm lays his hands on it.~DO~EscapeAreaObject("Tantras")~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",13) ~THEN  ToTorm Tantras2
~It is good you came. I have seen your success on the battlefield outside. You are the odd element that may still change the outcome of this battle.~
DO~SetGlobal("ToBaneHunt","Global",14) ~
==CVSan25J~The two schemers at the heart of this intrigue have escaped us.~
==ToTorm~Bhaal and Bane - you must be very confident or very foolish to pursue them. They are still very powerful.~
==TOPellig~We have seen your soldiers fight outside. They seem to sacrifice themselves for their god.~
==ToTorm~For their god and also for their progeny. The young may survive if their god remains strong enough to fight the evil on their behalf. Everyone here older than 14 years has sworn his life to our victory. I absorb every soul of a follower who falls in my name today and thereby gain the strength to fight our foe.~
==ToAdon~The two former gods have fled us to secure the stolen Tablet of Fate that must be hidden here in town.~
==ToTorm~They fled to the Halls of Demarch where Mask is worshipped, the item must be hidden there. ~
==ToCyric~An adequate place for a stolen item, hihi.~
==ToTorm~I must follow them now. Today either falls Torm or falls evil.~DO~EscapeAreaObject("Temple")~
==ToLini~One or the other, if not both...~
END
++~We will not stand here idle. Let us follow them.~EXIT
++~Torm needs our help more than he may think.~EXIT

CHAIN
IF~Global("ToBaneHunt","Global",18)~THEN  Tomart3 Overbane
~You return alone - is all lost?~
DO~SetGlobal("ToBaneHunt","Global",19) SetGlobal("ToBhaalhunt","Global",1)~
==Boyba1~Mama said that we are the seed of things to come.~
==Girba1~Papa said all will be new again after all was destroyed.~
==ToPellig~The children are all that remains of Tantras but your town will be reborn through them. This is what their parents and your god fought for. ~
==ToAdon~Torm died with your martyrs but let not be their sacrifice be in vain. We have won after all.~
==Tomart3~I understand. Only if we give up now, our foe will triumph. If we rebuild in our Lord Torm's name, it will be a victory of righteousness over evil.~
==ToCyric~Spare us your sermons, you can live on and use those kids to rebuild from these ruins because a new generation of better gods defeated the old tyrants.~
==ToLini~Ignore our mad schemer and use your chance to make the dream your brothers and sisters died for come true.~
==CVSan25J~Did you see the one creature who escaped the battle by any chance.~
==Girba1~I saw him before and mama called him *The Slayer*.~
==ToCyric~That's the one - you saw him again today?~
==Tomart3~Yes, he escaped, but not without murdering the last of our defences upon passing through.~
==TODrizzt IF~InParty("Todrizzt")~THEN~Do you have any clue where he fled to?~
==TOAdon IF~!InParty("Todrizzt")~THEN~Do you have any clue where he fled to?~
==Boyba1~He said a name to the captain who commands his bark. *Khalindra* .~
==ToCyric~That's this harper's daughter...what does that mean...? ~
END
++~Elminster! He is in danger, our son! We must hurry to Athkatla.~EXTERN ToPellig Overbane2
++~I know what it means. Another step in his contingency plan...he is in a hurry to finish his breeding before we kill him.~ EXTERN ToPellig Overbane2

CHAIN
IF~~THEN ToPellig Overbane2
~Midnight!!...~
=~(Calm) Midnight is right. If he is after Khalindra - for whatever reason - then Athkatla and Elminster may be his next destination.~
==CVSan25J~What Pelligram and me want to say is that I pointed the harper and his daughter to our home as a reference and I invited them to stay there during their business on the Sword Coast.~
==Tolini~It is a chance...we need to start our search for Glarasteer and Khalindra somewhere.~
==ToCyric~Maybe or maybe not. He has the tablet - he must hide it first of all. There are his temples on the Sword Coast as an option for him.~
==ToAdon~As so often, mad Cyric may once again be correct.~
==CVSan25J~Maybe all of it is true - he will probably first hide the tablet with his acolytes and then use the shelter of his cult places to search for Khalindra.~
END
++~It means we must track him down in one of his temples before he can strike against the harper and his daughter.~EXIT
++~It means we must find the harper and Khalindra and protect them. They are our bait in the trap for Bhaal.~EXIT