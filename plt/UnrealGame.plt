[Public]
;Object=(Class=Class,MetaClass=Engine.Mutator,Name=UnrealGame.MutBigHead,Description="Head size depends on how well you are doing.")
;Object=(Class=Class,MetaClass=Engine.Mutator,Name=UnrealGame.MutLowGrav,Description="Low gravity.")
;Object=(Class=Class,MetaClass=Engine.Mutator,Name=UnrealGame.MutDelayedSpawn,Description="Delayed spawn of super weapons and super powerups.")

[ACTION_DisableObjective]
ActionString=wyłącz cel

[ACTION_DisableThisScript]
ActionString=wyłącz ten skrypt

[ACTION_SetObjectiveActiveStatus]
ActionString=Zmień stan aktywności celu

[Action_ChangeObjectiveTeam]
ActionString=Zmień drużynę celu gry

[BombTargetMessage]
TargetMessage=Nadchodzące podanie

[CTFGame]
CTFHints="("Możesz użyć %BASEPATH 0%, by zobaczyć ścieżkę do bazy Czerwonych lub %BASEPATH 1%, by zobaczyć ścieżkę do bazy Niebieskich.","Strzał z translokatora ustawia wskaźnik translokatora. Ponownie wciśnięcie %FIRE% przywraca wskaźnik, a wciśnięcie %A:TFIRE% teleportuje cię natychmiast w miejsce oznaczone przez wskaźnik (jeśli się tam zmieścisz).","Użycie translokatora do teleportacji w momencie przenoszenia flagi spowoduje, że upuścisz flagę.","Wciśnięcie %SWITCHWEAPON 10% po rzuceniu translokatora pozwala ci oglądać widok z jego wewnętrznej kamery.","Wciśnięcie %FIRE% przy wciśniętym %ALTFIRE% po teleportacji translokatorem spowoduje wybranie poprzedniej broni.")"
Description=Twoja drużyna musi zdobyć jak najwięcej punktów, przejmując flagę z bazy wroga i zanosząc ją do własnej flagi. Jeśli niosący flagę zostanie zabity, flaga spada na ziemię i każdy może ją podnieść. Jeśli flaga twojej drużyny zostanie zabrana, musi zostać zwrócona na miejsce (przez dotknięcie jej po puszczeniu przez wroga) zanim twoja drużyna będzie mogła zyskać punkt za zdobycie flagi.

[CTFHUDMessage]
YouHaveFlagString=Masz flagę, wracaj do bazy!
EnemyHasFlagString=Wróg zdobył twoją flagę, musisz ją odzyskać!

[CTFMessage]
ReturnBlue=odzyskuje niebieską flagę!
ReturnRed=odzyskuje czerwoną flagę!
ReturnedBlue=Niebieska flaga została odzyskana!
ReturnedRed=Czerwona flaga została odzyskana!
CaptureBlue=zdobywa niebieską flagę!
CaptureRed=zdobywa czerwoną flagę!
DroppedBlue=upuszcza niebieską flagę!
DroppedRed=upuszcza czerwoną flagę!
HasBlue=zabiera niebieską flagę!
HasRed=zabiera czerwoną flagę!

[CinematicHud]
FontArrayNames[0]=UT2003Fonts_plt.jFontLarge1024x768
FontArrayNames[1]=UT2003Fonts_plt.jFontLarge800x600
FontArrayNames[2]=UT2003Fonts_plt.jFontLarge
FontArrayNames[3]=UT2003Fonts_plt.jFontMedium1024x768
FontArrayNames[4]=UT2003Fonts_plt.jFontMedium800x600
FontArrayNames[5]=UT2003Fonts_plt.jFontMedium
FontArrayNames[6]=UT2003Fonts_plt.jFontSmall
FontArrayNames[7]=UT2003Fonts_plt.jFontSmallText800x600
FontArrayNames[8]=UT2003Fonts_plt.FontSmallText

[ClassicAnnouncer]
AnnouncerName=UT2003

[ConvoyGibbed]
DeathString=%k zepchnął %o w przepaść.

[CustomBotConfig]
FavoriteWeapon=Ulubiona broń:
NoPreference=Brak preferencji

[DMMutator]
DMMutPropsDisplayText[0]=Megaprędkość
DMMutPropsDisplayText[1]=Kontrola lotu
DMMutDescText[0]=Znacznie zwiększa prędkość gry.
DMMutDescText[1]=Określa, w jakim stopniu zawodnicy mogą sterować lotem.

[DMStatsScreen]
StatsString=OSOBISTE STATYSTYKI:        
AwardsString=NAGRODY
FirstBloodString=Pierwsza krew!
FlakMonkey=Małpa z Flakiem!
Combowhore=Combinator!
Headhunter=Łowca głów!
RoadRampage=Pirat drogowy!
DaredevilString=Śmiałek:
FlagTouches=Dotknięć flagi
FlagReturns=Zwrotów flagi
GoalsScored=Zdobytych celów:
HatTrick=Hat Trick!
KillString[0]=Dwufrag!
KillString[1]=Multifrag!
KillString[2]=Megafrag!
KillString[3]=ULTRAFRAG!
KillString[4]=HIPERFRAG!
KillString[5]=UBERFRAG!
KillString[6]=JASNA CHOLERA!
AdrenalineCombos=KOMBA ADRENALINY
ComboNames[0]=Szybkość
ComboNames[1]=Szał
ComboNames[2]=Defensywa
ComboNames[3]=Niewidzialność
ComboNames[4]=Inne
KillsByWeapon=STATYSTYKI BRONI
CombatResults=WYNIKI WALK
Kills=Fragi
Deaths=Zgony
Suicides=Samobójstwa
NextStatsString=Wciśnij F8 dla następnego gracza
WeaponString=Broń                
DeathsBy=Zabity z:
deathsholding=Zabity z tą bronią w ręku
EfficiencyString=Skuteczność
WaitingForStats=Oczekiwanie na statystyki z serwera. Wciśnij F3, by powrócić do normalnego HUD-a.
KillsByVehicle=STATYSTYKI POJAZDÓW
VehicleString=Pojazd

[DeathMatch]
DMPropsDisplayText[0]=Opóźnienie startu
DMPropsDisplayText[1]=Min. liczba graczy
DMPropsDisplayText[2]=Opóźnienie restartu
DMPropsDisplayText[3]=Gra turniejowa
DMPropsDisplayText[4]=Gracze muszą być gotowi
DMPropsDisplayText[5]=Wymuszone odnowienie
DMPropsDisplayText[6]=Automatycznie dostosuj umiejętności botów
DMPropsDisplayText[7]=Drwiny dozwolone
DMPropsDisplayText[8]=Czas ochrony po odnowieniu
DMPropsDisplayText[9]=Translokator dozwolony
DMPropsDisplayText[10]=Użyj skór drużyny
DMPropsDisplayText[11]=Użyj domyślnych ustawień map
DMPropsDisplayText[12]=Odcięcie spóźnialskich
DMPropsDisplayText[13]=Włącz podświetlanie graczy
DMPropDescText[0]=Opóźnij rozpoczęcie gry, by inni gracze mogli się dołączyć.
DMPropDescText[1]=Liczba graczy, którzy muszą się dołączyć, by gra się rozpoczęła.
DMPropDescText[2]=Okres oczekiwania serwera po zakończeniu gry, a przed wczytaniem nowej mapy.
DMPropDescText[3]=Gra turniejowa
DMPropDescText[4]=Jeśli włączone, gracze muszą poinformować o gotowości przed rozpoczęciem gry.
DMPropDescText[5]=Gracze są zmuszeni do powrotu na mapę natychmiast po zginięciu.
DMPropDescText[6]=Umiejętności botów są automatycznie dostosowane do ich wyników w walce z tobą.
DMPropDescText[7]=Pozwala graczom na korzystanie z nagranych drwin.
DMPropDescText[8]=Określa, jak długo gracz jest nieśmiertelny po odnowieniu (do czasu, aż nie strzeli).
DMPropDescText[9]=Jeśli włączone, gracze rozpoczną z translokatorami.
DMPropDescText[10]=Jeśli zaznaczone, gracze będą mieli jaśniejsze skóry czerwone lub niebieskie.
DMPropDescText[11]=Używa domyślnej liczby botów, przypisanej mapie.
DMPropDescText[12]=Określa maksymalną liczbę żyć, które zawodnik może stracić, po której nowi gracze nie będą mogli już dołączać do gry.
DMPropDescText[13]=Zawodnicy mają poświatę w kolorze drużyny widoczną z dalszej odległości.
YouDestroyed=Niszczysz:        
DMHints="("Każda broń ma dwa tryby prowadzenia ognia: główny po naciśnięciu %FIRE% i alternatywny po naciśnięciu %ALTFIRE%.","Wciśnij ponownie skok w szczytowym momencie skoku, a skoczysz jeszcze wyżej","Wciskając szybko klawisz kierunku dwukrotnie, możesz spowodować, że zawodnik wykona unik w tym kierunku.","Przebywając w powietrzu, możesz odbijać się od ścian.","Możesz zmienić broń, wciskając przypisany jej klawisz z cyfrą albo przewijać pomiędzy rodzajami broni za pomocą %NEXTWEAPON% i %PREVWEAPON%.","Kombo wstrząsowe to potężna eksplozja wywołana na skutek strzału w ładunek wstrząsowy za pomocą wiązki energetycznej.","W trakcie ładowania rakiet za pomocą alternatywnego strzału, by wystrzelić je w ciasnej spirali.","Możesz włączać i wyłączać tablicę wyników w każdym momencie. Naciśnij  %SHOWSCORES%.","Za zabijanie wrogów i wykonywanie zadań otrzymujesz adrenalinę. Gdy poziom adrenaliny dojdzie do 100, możesz rozpocząć adrenalinowe kombo poprzez wciśnięcie odpowiedniej kombinacji klawiszy.","%SHOWSTATS% wyświetli twoje statystyki osobiste.","Możesz celnym strzałem zestrzelić nadlatujący pocisk Zbawiciela.","Wciśnij %TALK% i wpisz wiadomość tekstową, aby wysłać ją do innych graczy.","Możesz odtwarzać drwiny i inne wiadomości głosowe przez menu głosu, wciskając  %SPEECHMENUTOGGLE%.","Po pochyleniu się (przytrzymując %DUCK%) nie spadniesz z krawędzi.")"
Description=Każdy na każdego. Zwycięża gracz, który zdobędzie najwięcej fragów.

[DestroyableObjective]
ObjectiveName=Cel podlegający zniszczeniu
ObjectiveDescription=Zniszcz cel, by go odłączyć.
Objective_Info_Attacker=Zniszcz cel
Objective_Info_Defender=Broń celu

[FemaleAnnouncer]
AnnouncerName=Kobieta

[FirstBloodMessage]
FirstBloodString=utacza pierwszą krew!

[GameObjective]
DestructionMessage=Cel odłączony!
LocationPrefix=Blisko
ObjectiveStringSuffix= Baza drużyny
ObjectiveDescription=Odłącz cel.
Objective_Info_Attacker=Odłącz cel
Objective_Info_Defender=Broń celu
UseDescription=UŻYJ

[HoldObjective]
ObjectiveName=Utrzymaj cel
ObjectiveDescription=Dotknij i przytrzymaj cel, by go wyłączyć.
Objective_Info_Attacker=Utrzymaj cel

[KeyPickup]
PickupMessage=Podnosisz klucz.

[KillingSpreeMessage]
EndSpreeNote= nie jest już w szale zabijania. Przerywa go
EndSelfSpree=dawał radę do czasu, aż sam się nie zabił!
EndFemaleSpree=dawała radę do czasu, aż sama się nie zabiła!
SpreeNote[0]=wpada w szał zabijania!
SpreeNote[1]=demoluje wszystko!
SpreeNote[2]=dominuje!
SpreeNote[3]=jest nie do zatrzymania!
SpreeNote[4]=jest jak Bóg!
SpreeNote[5]=MASAKRUJE wszystko!
SelfSpreeNote[0]=Szał zabijania!
SelfSpreeNote[1]=Demolka!
SelfSpreeNote[2]=Dominacja!
SelfSpreeNote[3]=Niepowstrzymany!
SelfSpreeNote[4]=BOSKI!
SelfSpreeNote[5]=MASAKRA!

[LastSecondMessage]
LastSecondRed=Czerwoni uratowani w ostatniej chwili!
LastSecondBlue=Niebiescy uratowani w ostatniej chwili!

[MaleAnnouncer]
AnnouncerName=Mężczyzna

[MessageTrigger]
Message=Mój komunikat

[MutBerserk]
FriendlyName=Superszał
Description=Broń jest niesamowicie szybka i potężna.

[MutBigHead]
FriendlyName=DużaGłowa
Description=Rozmiar głowy zależy od tego, jak dobrze ci idzie.

[MutGameSpeed]
FriendlyName=Tempo gry
Description=Zmodyfikuj szybkość gry.

[MutLowGrav]
FriendlyName=NiskaGraw
Description=Niska grawitacja.

[MutMovementModifier]
FriendlyName=Kontrola lotu
Description=Zmień sposób poruszania się zawodników w powietrzu.

[ProximityObjective]
ObjectiveName=Cel zbliżeniowy
ObjectiveDescription=Dotknij celu, by go odłączyć.
Objective_Info_Attacker=Dotknij celu

[SexyFemaleAnnouncer]
AnnouncerName=Sexy

[SquadAI]
SupportString=wspiera
DefendString=broni
AttackString=atakuje
HoldString=utrzymuje
FreelanceString=Zmiatacz

[StartupMessage]
Stage[0]=Oczekiwanie na pozostałych graczy.
Stage[1]=Czekam na potwierdzenie gotowości. Jesteś GOTOWY.
Stage[2]=Mecz zacznie się za...3
Stage[3]=Mecz zacznie się za...2
Stage[4]=Mecz zacznie się za...1
Stage[5]=Mecz się rozpoczął!
Stage[6]=Mecz się rozpoczął!
Stage[7]=DOGRYWKA!
NotReady=Nie jesteś GOTOWY. Naciśnij Strzał!
SinglePlayer=Naciśnij STRZAŁ, by rozpocząć!

[TeamGame]
NearString=W okolicy:
BareHanded=Puste ręce
TGPropsDisplayText[0]=Zrównoważ drużyny botami
TGPropsDisplayText[1]=Gracze równoważą drużyny
TGPropsDisplayText[2]=Skala ognia sojuszniczego
TGPropsDisplayText[3]=Prywatny czat między drużynami
TGPropsDisplayText[4]=Maks. liczebność drużyny
TGPropDescText[0]=Boty dołączają do drużyn, by wyrównać ich szanse.
TGPropDescText[1]=Nowi gracze są zmuszeni do dołączenia do mniejszej drużyny.
TGPropDescText[2]=Określa, jakie obrażenia odnoszą zawodnicy od ognia swoich sojuszników.
TGPropDescText[3]=Określa czy członkowie drużyn przeciwnych mogą dołączać do tego samego prywatnego pokoju.
TGPropDescText[4]=Maksymalna liczba zawodników w każdej drużynie
TGHints="("Jeśli umknie ci komunikat innego zawodnika, wciśnij %INGAMECHAT%, by wyświetlić okno ze wszystkimi komunikatami, jakie otrzymałeś..","Użyj alternatywnego strzału spawarki, by połączyć się z innymi zawodnikami, korzystającymi ze spawarki. Po połączeniu twój sojusznik otrzyma znaczące wzmocnienie mocy swojej spawarki.","Możesz rzucić aktualnie wybrany rodzaj broni towarzyszowi, wciskając %THROWWEAPON%.","Towarzysze korzystający ze spawarki mają zielony wskaźnik drużyny nad głową zamiast żółtego.","Wciśnij %VOICETALK%, by porozmawiać głosowo z drużyną.","Wciśnij %TEAMTALK% i wpisz swój komunikat, aby wysłać go innym członkom drużyny.","Opcja Teksty i mowa powoduje odczytanie komunikatów tekstowych na głos. Można ją włączyć w menu ustawień dźwięku.")"
Description=Dwie drużyny ścierają się ze sobą w walce o kontrolę nad polem bitwy. Zwycięża drużyna, która zdobędzie więcej fragów.

[TeamVoiceReplicationInfo]
PublicChannelNames="("Publiczny","Lokalny","Drużyna")"

[TimerMessage]
CountDownTrailer=...

[TriggeredObjective]
ObjectiveName=Włączony cel
ObjectiveDescription=Włącz cel, by go odłączyć
Objective_Info_Attacker=Włączalny cel
Objective_Info_Defender=Broń włączalnego celu

[UTClassicAnnouncer]
AnnouncerName=UT

[UnrealMPGameInfo]
MPGIPropsDisplayText[0]=Min. liczba graczy
MPGIPropsDisplayText[1]=Opóźnienie na koniec gry
MPGIPropsDisplayText[2]=Tryb botów
MPGIPropsDisplayText[3]=Pozwól na rozmowy prywatne
MPGIPropDescText[0]=Do meczu dołączy tyle botów, by uzupełnić liczbę zawodników do wymaganej w meczu.
MPGIPropDescText[1]=Czas oczekiwania na załadowanie nowej mapy po zakończeniu meczu.
MPGIPropDescText[2]=Określa liczbę botów w meczu.
MPGIPropDescText[3]=Określa, czy klienci mogą tworzyć i dołączać do prywatnych pokojów rozmów na tym serwerze
BotModeText="0;Ustal liczbę;1;Domyślne dla mapy;2;Użyj listy botów"
SPBotText=Liczba botów
MPBotText=Min. liczba graczy
SPBotDesc=Określ liczba botów, które powinny dołączyć do meczu.
MPBotDesc=Boty dołączą do meczu i uzupełnią liczbę zawodników do wymaganej w meczu.
BotOptions[0]=Ustal liczbę
BotOptions[1]=Domyślne dla mapy
BotOptions[2]=Użyj listy botów
BotOptions[3]=Gracze kontra boty

[UseObjective]
ObjectiveDescription=Osiągnij cel i Użyj go, by go odłączyć.
Objective_Info_Attacker=Użyj celu

