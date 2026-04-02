[Public]
;Object=(Name=Engine.Console,Class=Class,MetaClass=Engine.Console)
Object=(Name=Engine.ServerCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Engine.MasterMD5Commandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Engine.UModUnpackCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Engine.ExportCacheCommandlet,Class=Class,MetaClass=Core.Commandlet)
; Main roots
Preferences=(Caption="Zaawansowane",Parent="Zaawansowane opcje")
Preferences=(Caption="Dźwięk",Parent="Zaawansowane opcje")
Preferences=(Caption="Wyświetlacz",Parent="Zaawansowane opcje")
Preferences=(Caption="Edytor",Parent="Zaawansowane opcje")
Preferences=(Caption="Ustawienia gry",Parent="Zaawansowane opcje",Class=Engine.GameInfo,Immediate=True)
Preferences=(Caption="Kontroler",Parent="Zaawansowane opcje")
Preferences=(Caption="Networking",Parent="Zaawansowane opcje")
Preferences=(Caption="Renderowanie",Parent="Zaawansowane opcje")
; "Advanced" root
Preferences=(Caption="Ustawienia silnika",Parent="Zaawansowane",Class=Engine.GameEngine,Category=Settings,Immediate=True)
Preferences=(Caption="Aliasy klawiszy",Parent="Zaawansowane",Class=Engine.Input,Immediate=True,Category=Aliases)
Preferences=(Caption="Przypisania klawiszy",Parent="Zaawansowane",Class=Engine.Input,Immediate=True,Category=RawKeys)
Preferences=(Caption="Sterowniki",Parent="Zaawansowane opcje",Class=Engine.Engine,Immediate=False,Category=Drivers)
; "Networking" root
Preferences=(Caption="Publiczny profil serwera",Parent="Networking",Class=Engine.GameReplicationInfo,Immediate=True)

[Errors]
NetOpen=Błąd podczas otwierania pliku
NetWrite=Błąd podczas zapisywania pliku                
NetRefused=Serwer odmówił wysłania '%s'
NetClose=Błąd podczas zamykania pliku
NetSize=Nieprawidłowy rozmiar pliku
NetMove=Błąd podczas przesuwania pliku
NetInvalid=Otrzymano błędne żądanie pliku
NoDownload=Pakiet '%s' nie może zostać pobrany
DownloadFailed=Pakiet '%s' nie mógł zostać wczytany: %s
RequestDenied=Serwer zażądał pliku określonego poziomu: Odmówiono
ConnectionFailed=Błąd połączenia
ChAllocate=Nie udało się namierzyć kanału
NetAlready=Już połączony
NetListen=Błąd nasłuchu: brak treści łącznika
LoadEntry=Nie udało się wczytać wpisu: %s
InvalidUrl=Błędny URL: %s
InvalidLink=Błędny link: %s
FailedBrowse=Nie udało się wpisać %s: %s
Listen=Błąd nasłuchu: %s
AbortToEntry="Błąd; powrót do wejścia"
ServerOpen=Serwery nie mogą otwierać sieciowych URL
ServerListen=Dedykowany serwer nie może nasłuchiwać: %s
Pending="Nie udało się nawiązać połączenia z '%s'; %s"
LoadPlayerClass=Nie udało się wczytać klasy gracza
ServerOutdated=Zbyt stara wersja serwera
ClientOutdated=Musisz zastosować najnowsze łatki
InvalidCDKey=Wpisany klucz gry wydaje się nieprawidłowy. Musisz ponownie zainstalować grę i wpisać klucz gry jeszcze raz.
ConnectLost=Utracono połączenie
DemoFileMissing=Brak pakietu '%s' do odtworzenia dema
DownloadNotAllowed=Pobranie '%s' jest zabronione

[General]
Upgrade=Aby połączyć się z tym serwerem, musisz zainstalować najnowszą bezpłatną łatkę do gry Unreal pobraną ze strony Epic:
UpgradeURL=http://www.unreal.com/upgrade
UpgradeQuestion=Czy chcesz uruchomić swoją przeglądarkę i przejść do strony aktualizacji?
Version=Wersja %i

[KeyNames]
Up=DO GÓRY
Right=W PRAWO
Left=W LEWO
Down=W DÓŁ
LeftMouse=LPM
RightMouse=PPM
MiddleMouse=ŚPM
MouseX=MYSZ X
MouseY=MYSZ Y
MouseZ=MYSZ Z
MouseW=MYSZ W
JoyX=JOY X
JoyY=JOY Y
JoyZ=JOY Z
JoyU=JOY U
JoyV=JOY V
JoySlider1=JOYSLIDER 1
JoySlider2=JOYSLIDER 2
MouseWheelUp=ROLKA DO GÓRY
MouseWheelDown=ROLKA W DÓŁ
Joy1=JOY 1
Joy2=JOY 2
Joy3=JOY 3
Joy4=JOY 4
Joy5=JOY 5
Joy6=JOY 6
Joy7=JOY 7
Joy8=JOY 8
Joy9=JOY 9
Joy10=JOY 10
Joy11=JOY 11
Joy12=JOY 12
Joy13=JOY 13
Joy14=JOY 14
Joy15=JOY 15
Joy16=JOY 16
Space=SPACJA
PageUp=PAGE UP
PageDown=PAGE DOWN
End=END
Home=HOME
Select=SELECT
Print=PRINT
Execute=EXECUTE
PrintScrn=PRINTSCRN
Insert=INSERT
Delete=DELETE
Help=HELP
NumPad0=NUM 0
NumPad1=NUM 1
NumPad2=NUM 2
NumPad3=NUM 3
NumPad4=NUM 4
NumPad5=NUM 5
NumPad6=NUM 6
NumPad7=NUM 7
NumPad8=NUM 8
NumPad9=NUM 9
GreyStar=SZARA GWIAZDKA
GreyPlus=SZARY PLUS
Separator=SEPARATOR
GreyMinus=SZARY MINUS
NumPadPeriod=NUM .
GreySlash=SZARY UKOŚNIK
Pause=PAUSE
CapsLock=CAPSLOCK
Tab=TAB
Enter=ENTER
Shift=SHIFT
NumLock=NUMLOCK
Escape=ESCAPE

[Progress]
CancelledConnect=Anulowano próbę połączenia
RunningNet=%s: %s (%i graczy)
NetReceiving=Pobieranie '%s': %i/%i
NetReceiveOk=Pobrano '%s'
NetSend=Wysyłanie '%s'
NetSending=Wysyłanie '%s': %i/%i
Connecting=Łączenie (F10, aby przerwać)...
Listening=Oczekiwanie na klientów...
Loading=Wczytywanie
Saving=Zapisywanie
Paused=Zatrzymane przez %s
ReceiveFile=Pobieranie '%s' (F10, aby anulować)
ReceiveOptionalFile=Pobieranie opcjonalnego pliku '%s' (F10, aby pominąć)
ReceiveTotalPackages="%i z %i plików pobrano"
ReceiveTotalSize="Całkowity rozmiar bez kompresji %iK, ukończono %3.1f%% (%iK)"
ReceiveSize=Rozmiar %iK, Pobrano %3.1f%%
ConnectingText=Łączenie (F10, aby anulować):
ConnectingURL=%s://%s/%s
CorruptConnect=Niekompatybilne pliki gry!

[UpgradeDrivers]
OutdatedDrivers=Dysponujesz starymi sterownikami karty graficznej. Może to spowodować problemy podczas korzystania z gry.
OursOrWeb=Wybierz TAK, aby zainstalować nowe sterowniki z CD, lub NIE, aby przejść na stronę producenta
InsertCD=Włóż płytę Unreal Tournament CD 3
NvidiaURL=http://www.nvidia.com/content/drivers/drivers.asp
AtiURL=http://www.ati.com/support/driver.html
CDButton=Aktualizacja z płyty
WebButton=Aktualizacja przez stronę
cancelButton=Bez aktualizacji

[MasterMD5Commandlet]
HelpCmd=mastermd5
HelpOneLiner=Umożliwia edycję bazy danych Master MD5
HelpUsage=mastermd5 [-option..] <params>
HelpWebLink=http://unreal.epicgames.com/servertips.htm
HelpParm[0]=-c
HelpDesc[0]=Tworzy nową bazę danych MD5
HelpParm[1]=-a
HelpDesc[1]=Dodaje nowe pakiety do bazy danych
HelpParm[2]=-s
HelpDesc[2]=Pokazuje bieżącą bazę danych
HelpParm[3]=-r
HelpDesc[3]=Wymusza raportowanie wszystkich wpisów do <param>

[UModUnpackCommandlet]
HelpCmd=umodunpack
HelpOneLiner=Wypakowuje pliki UMOD
HelpUsage=umodunpack [-option] <nazwapliku>
HelpWebLink=http://unreal.epicgames.com/servertips.htm
HelpParm[0]=-x
HelpDesc[0]=Wypakowuje pliki z <nazwapliku>
HelpParm[1]=-l
HelpDesc[1]=Lista plików z pliku <nazwapliku> bez wypakowywania.

[ServerCommandlet]
HelpCmd=server
HelpOneLiner=Serwer gry sieciowej
HelpUsage=server map.unr[?game=gametype] [-option...] [parm=value]...
HelpWebLink=http://unreal.epicgames.com/servertips.htm
HelpParm[0]=Dziennik
HelpDesc[0]=Umożliwia wygenerowanie pliku dziennika
HelpParm[1]=AllAdmin
HelpDesc[1]=Przyznaje wszystkim graczom przywileje admina

[ExportCacheCommandlet]
HelpCmd=exportcache
HelpOneLIner=Generuje zbuforowane wpisy w rekordach określonego pakietu.
HelpUsage=exportcache [-a] [-y] [-v] <package.ext> [package.ext...] [destfilename.ucl]
HelpWebLink=http://unreal.epicgames.com/unrealcaching.htm
HelpParm[0]=-a
HelpParm[1]=-y
HelpParm[2]=-v
HelpParm[3]=package.ext
HelpParm[4]=destfilename.ucl
HelpDesc[0]=Aktualizuje odnalezione wpisy z destfilename.ucl.  Dodaje nowe wpisy.
HelpDesc[1]="Automatyczna odpowiedź "tak" na wszystkie pytania, które pojawią się w trakcie wykonywania operacji."
HelpDesc[2]=Verbose output (do pliku ucc.log)
HelpDesc[3]=Wyświetla listę określonych pakietów (łącznie z rozszerzeniem), które mają zostać wyeksportowane. Dzikie karty są obsługiwane. Ścieżki nie są wymagane.
HelpDesc[4]=Pliki docelowe do wyeksportowanych wpisów. Domyślna nazwa pliku to nazwa pakietu, który jest eksportowany. Aby wyeksportować wiele pakietów do jednego pliku .utc, musisz określić nazwę pliku docelowego.

[AccessControl]
IPBanned=Twój adres IP został zbanowany na tym serwerze.
WrongPassword=Wpisane hasło jest nieprawidłowe.
NeedPassword=Musisz wpisać hasło, aby dołączyć do gry.
SessionBanned=Twój adres IP został zbanowany w tej sesji.
KickedMsg=Zostałeś usunięty z gry.
DefaultKickReason=Bez powodu
IdleKickReason=Wyrzucony za bezczynność
ACDisplayText[0]=Hasło gry
ACDisplayText[1]=Polityka dostępowa
ACDisplayText[2]=Hasło admina
ACDisplayText[3]=Czas do ponownego logowania
ACDescText[0]=Po zdefiniowaniu hasła gracze będą musieli je podać, by dołączyć do gry.
ACDescText[1]=Umożliwia określenie adresów IP lub zasięgu adresów, które zostały zbanowane.
ACDescText[2]=Hasło wymagane do zalogowania się z przywilejami administratora.
ACDescText[3]=Liczba sekund do ponownego logowania po nieudanym logowaniu.

[AdminBase]
Msg_PlayerList=Lista graczy:
Msg_AllGameMaps=Mapy obowiązujące (mogą być dodane) dla
Msg_AllMapLists=Dostępne listy map do %gametype%.
Msg_MapRotationList=Aktywne mapy do listy map %maplist%.
Msg_NoMapsAdded=Nie dodano map do listy map %maplist%.
Msg_AddedMapToList=Dodano mapy do listy map
Msg_NoMapsRemoved=Nie usunięto map z listy map %maplist%.
Msg_RemovedFromList=Usunięto mapy z listy map
Msg_PlayerBanned=%Player% został zabanowany na tym serwerze
Msg_SessionBanned=%Player% nie może wziąć udziału w tym meczu
Msg_PlayerKicked=%Player% został wykopany
Msg_NextMapNotFound="Nie odnaleziono następnej mapy; ponowne uruchamianie tej samej mapy"
Msg_ChangingMapTo=Zmiana mapy na %NextMap%
Msg_NoMapInRotation=Brak map skonfigurowanych do %maplist%.
Msg_NoMapsFound=Nie odnaleziono pasujących map w liście map %maplist%.
Msg_MapIsInRotation=Pasujące mapy %maplist%
Msg_MapNotInRotation=Pasujące mapy, które nie należą %maplist%.
Msg_UnknownParam=Nieznany parametr : %Value%
Msg_NoParamsFound=Nie odnaleziono parametrów!
Msg_ParamModified=Zakończono modyfikację
Msg_ParamNotModified=Nie udało się zmodyfikować parametru
Msg_MapListAdded=Dodano listę map %listname% do gry
Msg_MapListRemoved=Lista map %listname% została usunięta z gry
Msg_EditingMapList=Edycja listy map

[Ammo]
PickupMessage=Podniosłeś amunicję

[BroadcastHandler]
BHDisplayText[0]=Wycisz widzów
BHDisplayText[1]=Podziel widzów
BHDescText[0]=Wybierz tę opcję, aby uniemożliwić widzom rozmowę podczas gry.
BHDescText[1]=Wybierz tę opcję, aby oddzielić czat widzów od czata graczy.

[Canvas]
TinyFontName=UT2003Fonts.FontMono
SmallFontName=UT2003Fonts.FontMono
MedFontName=UT2003Fonts.FontMono800x600

[ChatRoomMessage]
AnonText=Ktoś
ChatRoomString[0]=Błędny kanał lub kanał, którego nie można odnaleźć: '%title%'
ChatRoomString[1]=Jesteś już członkiem kanału '%title%'
ChatRoomString[2]=Kanał '%title%' wymaga hasła!
ChatRoomString[3]=Nieprawidłowe hasło dla kanału '%title%'
ChatRoomString[4]=Zostałeś zbanowany na kanale '%title%'
ChatRoomString[5]=Nie można dołączyć do kanału '%title%'.  Kanał jest pełny!
ChatRoomString[6]=Nie możesz dołączyć do kanału '%title%'
ChatRoomString[7]=Dołączyłeś do kanału '%title%'
ChatRoomString[8]=Opuściłeś kanał '%title%'
ChatRoomString[9]=Rozmawiasz na kanale '%title%'
ChatRoomString[10]=Nie rozmawiasz już na kanale '%title%'
ChatRoomString[11]=%pri%' dołączył do kanału '%title%'
ChatRoomString[12]=%pri%' opuścił kanał '%title%'
ChatRoomString[13]=Zbanowałeś '%pri%' z prywatnego kanału
ChatRoomString[14]=Nie udało się odnaleźć użytkownika ze wskazanym ID. Banowanie zakończone niepowodzeniem.
ChatRoomString[15]=Na tym serwerze nie można korzystać z wideoczatu

[Crushed]
DeathString=%o został zmiażdżony przez %k.
FemaleSuicide=%o została zmiażdżona.
MaleSuicide=%o został zmiażdżony.

[DamRanOver]
DeathString=%k zabił %o
FemaleSuicide=%o zabiła się sama
MaleSuicide=%o zabił się sam

[DamTypeTelefragged]
DeathString=%o został sfragowany przez %k
FemaleSuicide=%o została sfragowana przez %k
MaleSuicide=%o został sfragowany przez %k

[DamageType]
DeathString=%o został zabity przez %k.
FemaleSuicide=%o zabiła się.
MaleSuicide=%o zabił się.

[FailedConnect]
FailMessage[0]=NIE UDAŁO SIĘ DOŁĄCZYĆ DO GRY. MUSISZ PODAĆ HASŁO.
FailMessage[1]=NIE UDAŁO SIĘ DOŁĄCZYĆ DO GRY. NIEPRAWIDŁOWE HASŁO.
FailMessage[2]=NIE UDAŁO SIĘ DOŁĄCZYĆ DO GRY. GRA JEST JUŻ W TOKU.
FailMessage[3]=NIE UDAŁO SIĘ DOŁĄCZYĆ DO GRY.

[FellLava]
DeathString=%k funduje %o zabójczo gorącą kąpiel.
FemaleSuicide=%o rozbiła się i spaliła
MaleSuicide=%o rozbił się i spalił

[GameInfo]
bAlternateMode=False
GoreLevelText[0]=Bez przemocy
GoreLevelText[1]=Zredukowana
GoreLevelText[2]=Bez ograniczeń
DefaultPlayerName=Gracz
GameName=Gra
GIPropsDisplayText[0]=Umiejętności bota
GIPropsDisplayText[1]=Broń na mapie
GIPropsDisplayText[2]=Zmniejszony poziom przemocy
GIPropsDisplayText[3]=Tempo gry
GIPropsDisplayText[4]=Maks. widzów
GIPropsDisplayText[5]=Maks. graczy
GIPropsDisplayText[6]=Limit punktowy
GIPropsDisplayText[7]=Maks. liczba żyć
GIPropsDisplayText[8]=Limit czasowy
GIPropsDisplayText[9]=Logowanie do międzynarodowych statystyk
GIPropsDisplayText[10]=Pozwól na upuszczanie broni
GIPropsDisplayText[11]=Dostępny widok z tyłu
GIPropsDisplayText[12]=Dostępna pauza admina
GIPropsDisplayText[13]=Czas do wykopania kampujących
GIPropsDisplayText[14]=Trzęsąca się broń
GIPropDescText[0]=Umożliwia zdefiniowanie umiejętności botów.
GIPropDescText[1]=Powoduje, iż na planszy zawsze znajduje się broń.
GIPropDescText[2]=Powoduje zmniejszenie ilości krwi i przemocy występujących w grze.
GIPropDescText[3]=Determinuje, jak szybko mija czas podczas pojedynków.
GIPropDescText[4]=Umożliwia zdefiniowanie maksymalnej liczby widzów.
GIPropDescText[5]=Umożliwia zdefiniowanie maksymalnej liczby graczy na serwer.
GIPropDescText[6]=Umożliwia określenie limitu punktowego. Jeżeli któryś z graczy go osiągnie, gra ulegnie zakończeniu.
GIPropDescText[7]=Umożliwia określenie tego, ile razy zabity gracz będzie mógł wrócić do gry.
GIPropDescText[8]=Umożliwia określenie limitu czasowego pojedynku. Gdy limit czasowy zostanie przekroczony, gra ulegnie zakończeniu.
GIPropDescText[9]=Aktywuj tę opcję, aby wysłać statystyki do serwera globalnych statystyk UT2004
GIPropDescText[10]=Umożliwia upuszczanie broni.
GIPropDescText[11]=Umożliwia przełączenie się do widoku TPP.
GIPropDescText[12]=Aktywacja tej opcji umożliwia administratorowi zatrzymanie gry.
GIPropDescText[13]=Określa jak długo gracz może nic nie robić, nim zostanie wyrzucony.
GIPropDescText[14]=Z chwilą aktywacji tej opcji część broni będzie się trzęsła podczas ostrzału.
GIPropsExtras[0]="0.000000;Nowicjusz;1.000000;Przeciętniak;2.000000;Doświadczony;3.000000;Weteran;4.000000;Zawodowiec;5.000000;Mistrz;6.000000;Nadczłowiek;7.000000;Bóg"
NoBindString=[Brak]

[GameMessage]
SwitchLevelMessage=Przełączenie poziomów
LeftMessage= opuścił grę.
FailedTeamMessage=Nie odnaleziono drużyny gracza
FailedPlaceMessage=Nie odnaleziono punktu startowego
FailedSpawnMessage=Nie udało się wskrzesić gracza
EnteredMessage= dołączył do gry.
MaxedOutMessage=Serwer jest już pełny.
OvertimeMessage=Mecz zakończył się remisem. Czas na nagłą śmierć!!!
GlobalNameChange=zmienił nazwę na
NewTeamMessage=jest teraz w
NoNameChange=Wpisana nazwa jest już w użyciu.
VoteStarted=rozpoczął głosowanie.
VotePassed=Zmiana przegłosowana.
MustHaveStats=Aby móc połączyć się z tym serwerem, musisz aktywować statystyki.
CantBeSpectator=Niestety nie możesz być teraz widzem w tej grze.
CantBePlayer=Niestety nie możesz być aktywnym graczem w tej grze.
BecameSpectator=został widzem.
NewPlayerMessage=Do gry dołączył nowy gracz.
KickWarning=Za moment zostaniesz wyrzucony za kampowanie!
NewSpecMessage=Do gry dołączył widz/
SpecEnteredMessage= dołączył jako widz.
SomeoneBecameSpectator="Ktoś przełączył się w tryb widza."

[GameProfile]
PositionName[0]=AUTOPRZYDZIAŁ
PositionName[1]=OBRONA
PositionName[2]=ATAK
PositionName[3]=ZWIAD
PositionName[4]=WSPARCIE

[GameReplicationInfo]
GRIPropsDisplayText[0]=Nazwa serwera
GRIPropsDisplayText[1]=Nazwa admina
GRIPropsDisplayText[2]=Email admina
GRIPropsDisplayText[3]=MOTD
GRIPropsDisplayText[4]=PZND
GRIPropDescText[0]=Nazwa serwera.
GRIPropDescText[1]=Nazwa admina.
GRIPropDescText[2]=Email admina.
GRIPropDescText[3]=Wiadomość dnia
GRIPropDescText[4]="Poprawnie zarejestrowana nazwa domeny (jeżeli nie używa statycznego adresu IPv4)"

[Gibbed]
DeathString=% rozpadł się na setki małych kawałeczków
FemaleSuicide=% rozpadła się na setki małych kawałeczków
MaleSuicide=% rozpadł się na setki małych kawałeczków

[HUD]
ProgressFontName=UT2003Fonts.FontEurostile12
FontArrayNames[0]=Engine.DefaultFont
FontArrayNames[1]=Engine.DefaultFont
FontArrayNames[2]=Engine.DefaultFont
FontArrayNames[3]=Engine.DefaultFont
FontArrayNames[4]=Engine.DefaultFont
FontArrayNames[5]=Engine.DefaultFont
FontArrayNames[6]=Engine.DefaultFont
FontArrayNames[7]=Engine.DefaultFont
FontArrayNames[8]=Engine.DefaultFont

[Info]
RulesGroup=Zasady
GameGroup=Gra
ServerGroup=Serwer                
ChatGroup=Czat
BotsGroup=Boty
MapVoteGroup=Głosowanie nad mapą
KickVoteGroup=Głosowanie nad wykopaniem

[LevelInfo]
Title=Bez tytułu

[MaplistManager]
DefaultListName=Domyślna
InvalidGameType=nie mógł zostać wczytany. Najczęściej oznacza to, że plik .u został usunięty, ale plik .int nie.
ReallyInvalidGameType=Typ gry: '%gametype%' nie mógł zostać wczytany.
DefaultListExists=Typ gry dysponuje już domyślną listą!

[MatSubAction]
Desc=N/D

[Pickup]
PickupMessage=Podniesiono przedmiot.

[PlayerController]
QuickSaveString=Szybki zapis
NoPauseMessage=Gra nie może zostać zatrzymana
ViewingFrom=Widok z
OwnCamera=Widok z własnej kamery

[PlayerReplicationInfo]
StringDead=Martwy
StringSpectating=Widz
StringUnknown=Nieznany                

[StreamPlaylistManager]
DefaultPlaylistName=Nowa lista odtwarzania

[SubActionCameraEffect]
Desc=Efekt kamery

[SubActionCameraShake]
Desc=Wstrząs

[SubActionFOV]
Desc=FOV

[SubActionFade]
Desc=Wygaszenie

[SubActionGameSpeed]
Desc=Tempo gry

[SubActionOrientation]
Desc=Kierunek

[SubActionSceneSpeed]
Desc=Szybkość sceny

[SubActionSubTitle]
Desc=Napisy

[SubActionTrigger]
Desc=Uruchamiacz

[Suicided]
DeathString=%o miał tętniaka.
FemaleSuicide=%o miał tętniaka.
MaleSuicide=%o miał tętniaka.

[TeamInfo]
TeamName=Drużyna
ColorNames[0]=Czerwoni
ColorNames[1]=Niebiescy
ColorNames[2]=Zieloni
ColorNames[3]=Złoci

[Vehicle]
VehiclePositionString=w pojeździe
VehicleNameString=Pojazd

[VoiceChatReplicationInfo]
PublicChannelNames="("Publiczny","Lokalny")"
VCDisplayText[0]=Aktywuj czat głosowy
VCDisplayText[1]=Aktywuj lokalny kanał
VCDisplayText[2]=Maks. zasięg lokalnego czatu
VCDisplayText[3]=Zasięg oddział. lokalnego czatu
VCDisplayText[4]=Pozwól na kodeki VOIP
VCDisplayText[5]=Pozwól na kodeki VOIP w LAN
VCDescText[0]=Udostępnij czat głosowy na serwerze.
VCDescText[1]=Umożliwia stworzenie lokalnego czatu głosowego. Za jego pomocą gracze mogą wysyłać pobliskim graczom wiadomości głosowe.
VCDescText[2]=Maksymalna odległość, w której można usłyszeć transmisje głosowe.
VCDescText[3]=Odległość, od której lokalne transmisje zaczną tracić na sile
VCDescText[4]=Można tu zdefiniować, które kodeki powinny być używane w grach internetowych.
VCDescText[5]=Można tu zdefiniować, które kodeki powinny być używane w grach LAN.
InstalledCodec="((CodecName="Wolny transfer",CodecDescription="(4.8kbps) - Nieznacznie obciąża łącze, ale dźwięk jest niskiej jakości."),(CodecName="Lepsza jakość",CodecDescription="(9.6kbps) - Bardziej obciąża łącze, ale dźwięk jest lepszej jakości."))"

[Volume]
LocationName=nieokreślony

[Weapon]
MessageNoAmmo= nie ma amunicji

[WeaponPickup]
PickupMessage=Podniosłeś broń

[XBoxPlayerInput]
LookPresets[0].PresetName=Liniowy
LookPresets[1].PresetName=Wykładniczy
LookPresets[2].PresetName=Hybrydowy
LookPresets[3].PresetName=Własny

[fell]
DeathString=%k zepchnął %o w przepaść.
FemaleSuicide=%o zostawiła po sobie mały krater
MaleSuicide=%o zostawił po sobie mały krater

