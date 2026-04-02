[ACTION_ASOpenSentinel]
ActionString=Obudź strażnika

[ACTION_ASSetPlayerSpawnArea]
ActionString=ACTION_ASSetPlayerSpawnArea

[ACTION_ASTeleportToSpawnArea]
ActionString=teleportuj do obszaru odnowień

[ACTION_PlayExplosionSound]
ActionString=Odtwórz dźwięk eksplozji

[ACTION_PlayerViewShake]
ActionString=GraczWidokWstrząs

[ASGameInfo]
ASPropsDisplayText[0]=Par rund
ASPropsDisplayText[1]=Limit czasu rundy
ASPropsDisplayText[2]=Resetuj odliczanie
ASPropsDisplayText[3]=Czas przybycia uzupełnień
ASPropsDisplayText[4]=Czas ćwiczeń
ASPropDescText[0]=Liczba par rund (ataku i obrony) w meczu.
ASPropDescText[1]=Określa, jak długo trwa każda runda.
ASPropDescText[2]=Określa ilość czasu pomiędzy każdą rundą.
ASPropDescText[3]=Określa czas do momentu przybycia uzupełnień.
ASPropDescText[4]=Określa czas trwania jednej rundy ćwiczeń (w sekundach).
ASHints="("Wskaźnik na HUD wskazuje położenie celu.","Uważaj na ostrzeżenia HUD i alarmy, kiedy cel znajduje się w niebezpieczeństwie.","Kiedy włączony został nowy obszar odnawiania, wciśnij %SWITCHWEAPON 10%, by natychmiast się do niego teleportować.","Wciśnij %BASEPATH 0% lub %BASEPATH 1%, by podświetlić aktualny cel, pokazać drogę do niego i przewijać listę celów.","Obserwuj odliczanie do odnowienia, by wiedzieć, kiedy możesz spodziewać się wsparcia.","Niektóre rodzaje broni są lepsze w niszczeniu min pajęczych wroga, niż inne.","Możesz odnieść obrażenia lub zginąć z powodu pojazdów eksplodujących w twoim pobliżu.","Możesz naprawiać sojusznicze pojazdy, korzystając z alternatywnego strzału spawarki.","Jeśli zginiesz, natychmiast eksplodują Miny pajęcze i granaty rzucone przez ciebie.","Zielona lampka na górze szafki z bronią oznacza, że w tej szafce znajduje się dodatkowa amunicja.","Możesz zbliżać widok w wieżyczce, wciskając %MOVEFORWARD% i oddalić go, wciskając %MOVEBACKWARD%.","Wieżyczki spawarki mają te same własności co spawarki.","Zarówno działko jonowe, jak i czołg zjonizowanej plazmy w trakcie ładowania wskazują swój cel promieniem lasera.","Możesz przełączać pomiędzy zdalnie sterowanymi wieżyczkami, wciskając %NEXTWEAPON% oraz %PREVWEAPON%.","W kosmicznym myśliwcu możesz się przełączać pomiędzy celami, wciskając %NEXTWEAPON% oraz %PREVWEAPON%.","Możesz zdobyć różne trofea, niszcząc kluczowy pojazd lub wieżyczkę, niszcząc cel lub udanie atakując.","Trofeum jest wręczane zawodnikowi, który osiągnął cel, a punkty są dzielone pomiędzy wszystkich, którzy się do tego przyczynili. ","Wciśnij %TOGGLEBEHINDVIEW%, by przełączać w pojeździe miedzy widokiem oczami osoby pierwszej i trzeciej .")"
GameName=Szturm
Description=W każdej rundzie gry inspirowanej słynnymi (i mniej słynnymi) scenariuszami jedna drużyna atakuje, druga broni. Po dwóch rundach najlepsza drużyna atakująca otrzymuje punkt.

[ASGameReplicationInfo]
ERW_PracticeRoundEndedStr=Runda ćwiczebna zakończona. Przygotuj się!
ERW_RedAttackedStr=Czerwoni skutecznie zaatakowali!
ERW_BlueAttackedStr=Niebiescy skutecznie zaatakowali!
ERW_RedDefendedStr=Czerwoni skutecznie obronili!
ERW_BlueDefendedStr=Niebiescy skutecznie obronili!
ERW_RedMoreObjectivesStr=Czerwoni zdobywają punkt (więcej celów).
ERW_BlueMoreObjectivesStr=Niebiescy zdobywają punkt (więcej celów).
ERW_RedMoreProgressStr=Czerwoni zdobywają punkt (bliżsi ukończenia).
ERW_BlueMoreProgressStr=Niebiescy zdobywają punkt (bliżsi ukończenia).
ERW_RedGotSameOBJFasterStr=Czerwoni zdobywają punkt (najszybsi).
ERW_BlueGotSameOBJFasterStr=Niebiescy zdobywają punkt (najszybsi).
ERW_DrawStr=Remis.

[ASOBJ_EnergyCore_Delivery]
ObjectiveName=Dostawa rdzenia mocy

[ASOBJ_EnergyCore_Spawn]
ObjectiveName=Odnowienie rdzenia mocy
PlayerDroppedMessage= upuszcza rdzeń mocy!
DroppedMessage=Rdzeń mocy upuszczony!
EnergyCorePickedUp=Rdzeń mocy podniesiony!
PlayerPickedUpEnergyCore= podnosi rdzeń mocy!
PlayerCoreReset=Rdzeń mocy zwrócony!

[ASTurret]
VehiclePositionString=obsadzanie wieżyczki
VehicleNameString=Wieżyczka energetyczna

[ASTurret_Minigun]
VehiclePositionString=zajmuje wieżyczkę z działkiem
VehicleNameString=Wieżyczka z działkiem

[ASVehicle_Sentinel]
VehicleNameString=Strażnik

[ASVehicle_Sentinel_Ceiling]
VehicleNameString=Strażnik sufitowy

[ASVehicle_Sentinel_Floor]
VehicleNameString=Strażnik podłogowy

[ASVehicle_SpaceFighter]
Text_Speed=Szybkość

[Ammo_Dummy]
ItemName=Manekin

[DamTypeExploBarrel]
DeathString=%o ginie od eksplozji beczki. %k ją wysadził.
FemaleSuicide=%o stała nieco za blisko beczki, którą sama wysadziła.
MaleSuicide=%o stał nieco za blisko beczki, którą sam wysadził.

[DamTypeMinigunTurretBullet]
DeathString=%k strzela z wieżyczki z działka. %o pada.
FemaleSuicide=%o podziurawiła się własnym działkiem.
MaleSuicide=%o podziurawił się własnym działkiem.

[DamTypeSentinelLaser]
DeathString=%k lubi lasery. %o właśnie się o tym przekonuje.
FemaleSuicide=%o usmażyła się własnym promieniem lasera.
MaleSuicide=%o usmażył się własnym promieniem lasera.

[DestroyVehicleObjective]
ObjectiveName=Cel zniszczenia pojazdu
ObjectiveDescription=Zniszcz cel, by go odłączyć.
Objective_Info_Attacker=Cel zniszczenia pojazdu
Objective_Info_Defender=Cel ochrony pojazdu

[GameObject_EnergyCore]
PlayerDroppedMessage= upuszcza rdzeń mocy!
DroppedMessage=Rdzeń mocy upuszczony!
EnergyCorePickedUp=Rdzeń mocy podniesiony!
PlayerPickedUpEnergyCore= podnosi rdzeń mocy!
PlayerCoreReset=Rdzeń mocy zwrócony!

[HUD_Assault]
IP_Bracket_Open=[
IP_Bracket_Close=]
Cardinal_North=N
Cardinal_East=E
Cardinal_South=S
Cardinal_West=W
NoGameReplicationInfoString=Odbieranie stanu serwera…
MetersString=
TargetString=Cel:
NoTargetString=Brak celu
PracticeRoundString=Runda ćwiczebna

[InfoPod]
POD_Message=-= info pod =-

[Message_ASKillMessages]
KillString[0]=Banzai!
KillString[1]=Niszczyciel!
KillString[2]=Blokowanie odnowienia pojazdu! Ostrzeżenie 5 sek.
KillString[3]=Blokowanie odnowienia pojazdu! Ostrzeżenie 4 sek.
KillString[4]=Blokowanie odnowienia pojazdu! Ostrzeżenie 3 sek.
KillString[5]=Blokowanie odnowienia pojazdu! Ostrzeżenie 2 sek.
KillString[6]=Blokowanie odnowienia pojazdu! Ostrzeżenie 1 sek.
KillString[7]=Opuszczanie pola bitwy!

[Message_AssaultTeamRole]
Message_PostLogin_Attacker=Atakujesz!!
Message_PostLogin_Defender=Bronisz!!

[Message_Awards]
Msg[0]=Osiągasz cel!
Msg[1]=osiąga cel!

[ObjectiveProgressDisplay]
HeaderText=Cele
OptionalObjectivePrefix=*
ObjTimesString=x
TextCutSuffix=...
SpaceSeparator=        
PrimaryObjectivePrefix=-

[ScoreBoard_Assault]
RemainingRoundTime=Pozostały czas rundy:
CurrentRound=Runda:
RoundSeparator=
Defender=( Obrońca )
Attacker=( Atakujący )
WaitForReinforcements=  Giniesz. Uzupełnienia za
WaitingToSpawnReinforcements=Oczekiwanie na uzupełnienia...
AutoRespawn=Automatyczny powrót do gry za...
YouWonRound=Wygraliście rundę!
YouLostRound=Przegraliście rundę.
PracticeRoundOver=Runda ćwiczebna zakończona.

[Trigger_ASMessageTrigger]
Message=Mój komunikat

[Weapon_Sentinel]
ItemName=Broń strażnika

[Weapon_Turret_Minigun]
ItemName=Broń wieżyczki

