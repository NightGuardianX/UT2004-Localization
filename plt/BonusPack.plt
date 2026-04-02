[Public]
;Object=(Class=Class,MetaClass=Engine.GameInfo,Name=BonusPack.xMutantGame,Description="DM|Mutant|BonusPack.Tab_IAMutant|BonusPack.MapListMutant|false")
;Object=(Class=Class,MetaClass=Engine.GameInfo,Name=BonusPack.xLastManStandingGame,Description="DM|Last Man Standing|BonusPack.Tab_IALastManStanding|BonusPack.MapListLastManStanding|false")
;Object=(Class=Class,MetaClass=Engine.Mutator,Name=Bonuspack.MutCrateCombo,Description="Dodaje kombo Kamuflaż (PPPP).")
;Object=(Class=Class,MetaClass=Engine.Mutator,Name=Bonuspack.MutPintSizeCombo,Description="Dodaje kombo Filigranówka (LLLL).")

[ComboCrate]
ExecMessage=Zamaskowany!

[ComboMiniMe]
ExecMessage=Zmniejszony!

[DamTypeMutant]
DeathString=%o doznał poważnej mutacji!
FemaleSuicide=%o doznał poważnej mutacji!
MaleSuicide=%o doznał poważnej mutacji!

[HudLMS]
LivesRemainingString=Pozostałe życia
PlayersRemainString=Pozostali gracze --        

[HudMutant]
MutantRangeFontName=UT2003Fonts.FontMono
BottomFeederText=DOLNA BELKA

[LMSMessage]
YouAreCamperMessage=Kampujesz!
SomeoneIsCamperMessage=        
SomeoneIsCamperMessageTrailer=To kampowanie!

[MutCrateCombo]
CamoDisplayText=Kombo kamuflażowe
MiniDisplayText=Kombo zmniejszające
CamoDescText=Po aktywacji adrenalinowe kombo otoczy cię  holograficzną projekcją skał lub części budynku.
MiniDescText=Po aktywacji adrenalinowe kombo zmniejszy cię.
FriendlyName=Premiowe komba
Description=Dodaje kombo zmniejszające (LLLL) i kamuflujące (PPPP).

[MutantMessage]
YouAreMutantMessage=Zmutowałeś!
SomeoneIsMutantMessage=        
SomeoneIsMutantMessageTrailer=Zmutował!
FFAMessage=Mutacja pierwszej krwi!
BottomFeederMessage=Zostałeś farciarzem!
NotBottomFeederMessage=Nie jesteś już farciarzem!

[MutantNameMessage]
BottomFeederMesg=(FARCIARZ)

[ScoreBoardLMS]
LivesText=ŻYCIA

[Tab_IALastManStanding]
IARulesExtraLives.Caption=Zdrowie za zabijanie
IARulesExtraLives.Hint=Gracz otrzyma zdrowie po każdym uśmierceniu przeciwnika.
IARulesLMSAllowAdrenaline.Caption=Adrenalina
IARulesLMSAllowAdrenaline.Hint=Gracze będą mogli korzystać z adrenaliny.
IARulesLMSAllowPickups.Caption=Podnoszenie
IARulesLMSAllowPickups.Hint=Gracze będą mogli podnosić przedmioty.
IARulesSuperWeaps.Caption=Superbronie
IARulesSuperWeaps.Hint=Gracze będą mogli korzystać z superbroni.

[Tab_IAMutant]
TargetScoreString=Limit punktowy
IARulesBottomFeeders.Caption=Farciarz
IARulesBottomFeeders.Hint=Gracze z dolnych miejsc rankingowych będą mogli zabić każdego.

[xLastManStandingGame]
LMSPropsDisplayText[0]=Limit czasowy dla kampingu
LMSPropsDisplayText[1]=Interwał czasowy dla ostrzeżeń kapingowych
LMSPropsDisplayText[2]=Zdrowie za zabijanie
LMSPropsDisplayText[3]=Superbronie
LMSPropsDisplayText[4]=Alarm kampingowy
LMSPropsDisplayText[5]=Podnoszenie
LMSPropsDisplayText[6]=Adrenalina
LMSPropsDisplayText[7]=Pełen magazynek
LMSPropDescText[0]=Określa, jak długo gracz może stać w jednym miejscu, nim zostanie ogłoszony alarm kampingowy.
LMSPropDescText[1]=Określa, jak często ma być wyświetlane ostrzeżenie kampingowe.
LMSPropDescText[2]=Po aktywacji tej opcji gracze będą otrzymywać zdrowie za każdego zabitego wroga.
LMSPropDescText[3]=Po aktywacji tej opcji, gracze będą mogli korzystać z superbroni.
LMSPropDescText[4]=Po aktywacji tej opcji włączy się alarm, jeśli gracz będzie stał zbyt długo w miejscu.
LMSPropDescText[5]=Po aktywacji tej opcji na mapie pojawią się przedmioty, które można podnieść.
LMSPropDescText[6]=Po aktywacji tej opcji będzie można korzystać z komb adrenalinowych.
LMSPropDescText[7]=Po aktywacji tej opcji gracze będą rozpoczynać z maksymalną ilością amunicji do każdej z broni.
GameName=Ostatni żywy
Description=Gracze startują z określoną liczbą żyć. Wygrywa ten, który pokona pozostałych.

[xMutantGame]
MutPropText=Tryb Farciarz
MutDescText="Po aktywacji tej opcji gracz zajmujący ostatnie miejsce w rankingu otrzyma miano "Farciarz" i będzie mógł zabijać innych graczy."
GameName=Mutant
Description=Pierwszy gracz, który kogoś zabije, stanie się mutantem. Mutant jest łakomym kąskiem dla innych graczy, ponieważ jego zabicie gwarantuje zdobycie nadludzkich zdolności. Gracz z najniższym rankingiem staje się farciarzem i może zabijać innych graczy.

