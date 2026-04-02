[Public]
Object=(Name=XWebAdmin.UT2K3Skin,Class=Class,MetaClass=XWebAdmin.WebSkin)
Object=(Name=XWebAdmin.ClassicUT,Class=Class,MetaClass=XWebAdmin.WebSkin)
Object=(Name=XWebAdmin.UT2K3Stats,Class=Class,MetaClass=XWebAdmin.WebSkin)
Object=(Name=XWebAdmin.UnrealAdminPage,Class=Class,MetaClass=XWebAdmin.WebSkin)

[ClassicUT]
DisplayName=Klasyczny UT

[UT2K3Skin]
DisplayName=Standardowy UT2K4

[UT2K3Stats]
DisplayName=Statystyki UT2K3

[UTServerAdmin]
Accept=Akceptuj
Deny=Odmowa
Update=Aktualizuj
Custom=Własny
Error=Błąd
NoneText=Brak
SwitchText=Przełącz
DeleteText=Usuń
NewText=Nowy
Edit=Edytuj
WaitTitle=Proszę czekać
MapChanging=Serwer przełącza mapy. Zaczekaj 10-15 sekund zanim serwer zmieni mapy.
MapChangingTo=Serwer przełącza na mapę: %MapName%. Zaczekaj 10-15 sekund, zanim serwer zmieni mapy.
AccessDeniedText=Brak dostępu
ErrorAuthenticating=W trakcie autoryzacji wystąpił błąd!
NoPrivs=Nie masz odpowiednich praw, by oglądać tę stronę.
LoadingGames=Wczytywanie typów gry
LoadingMaps=Wczytywanie dostępnych map
Initialized=%class% uruchomiono na porcie %port%

[UnrealAdminPage]
DisplayName=Strona Administracyjna Unreala

[WebSkin]
DisplayName=Jakaś skóra

[xWebQueryAdmins]
NoteUserHomePage=Witamy w zarządzaniu Adminami i Grupami
NoteAccountPage=Możesz tu zmienić swoje hasło. Możesz też zobaczyć, jakie przywileje zostały ci nadane przez zarządzającego.
NoteUserAddPage=Jako admin tego serwera możesz dodawać nowych adminów i nadawać im przywileje. Upewnij się, że hasło przydzielone nowemu adminowi nie jest łatwe do złamania.
NoteUserEditPage=Jako admin tego serwera możesz modyfikować informacje i przywileje innych adminów, którymi zarządzasz.
NoteUsersBrowsePage=Tu możesz obejrzeć innych adminów, których przywileje możesz modyfikować. Możesz też przypisać ich do różnych grup.
NoteGroupAddPage=Możesz tworzyć nowe grupy, których członkowie będą mieć wspólne przywileje. Grupy stosowane są przy jednoczesnym przyznawaniu tych samych przywilejów kilku adminom.
NoteGroupEditPage=Możesz zdecydować, jakie przywileje przypisane są danej grupie. Zwróć uwagę, że możesz tylko zmieniać przywileje, które sam posiadasz.
NoteGroupsBrowsePage=Tutaj obejrzysz wszystkie grupy, którymi możesz zarządzać. Kliknij nazwę grupy, by ją zmienić.
NoteGroupAccessPage=Tutaj możesz zdecydować, w jakich grupach znajdzie się wybrany admin. To zdecyduje o jego przywilejach podstawowych.
NoteMGroupAccessPage=Tutaj możesz zdecydować, jakimi grupami wybrany admin będzie zarządzał. Będzie mógł przypisywać innych adminów do tych grup.
NameText=Nazwa
Deleting=usuwanie
Group=grupa
Groups=Grupy
User=użytkownik
Modify=modyfikuj
Managed=Zarządzanie
Privileges=Przywileje
SecurityLevel=Poziom bezpieczeństwa
AdminPageTitle=Zarządzanie użytkownikami i grupami
AdminHomeTitle=Strona główna admina
AdminAccountTitle=Konto
BrowseUsersTitle=Przeglądaj dostępnych użytkowników
BrowseGroupsTitle=Przeglądaj dostępne grupy
AddUserTitle=Dodaj nowego administratora
AddUserButton=Dodaj admina
AddGroupTitle=Dodaj nową grupę administracyjną
AddGroupButton=Dodaj grupę
EditUserTitle=Modyfikuj administratora
EditUserButton=Modyfikuj admina
EditGroupTitle=Modyfikuj grupę administracyjną
EditGroupButton=Modyfikuj grupę
ModifyUserGroup=Modyfikuj grupy dla
ModifyMUserGroup=Modyfikuj zarządzane grupy dla
UserRemoved=Użytkownik: '%UserName%' został usunięty!
GroupRemoved=Grupa: '%GroupName%' została usunięta!
AdminNotFound=Nie znaleziono admina
GroupNotFound=Nie znaleziono grupy
PrivTitle=Niedostateczne przywileje
NoneText=*** Brak ***
NoneItemText=*** Brak: %Item% do wyświetlenia **
PasswordError=Błędne znaki w haśle lub hasło za krótkie (przynajmniej 6 znaków).
InsufficientPrivs=Twoje przywileje nie pozwalają ci wykonać czynności: %Action% na tym elemencie: %Item%.
InvalidItem=Błędna nazwa elementu %Item%!
InvalidCharacters=Błędne znaki w nazwie elementu %Item%!
NameExists=Musisz podać unikatową nazwę dla
YouMustSelect=Musisz wybrać
DoesNotExist=Wybrany element: %Item% nie istnieje!
CouldNotCreate=Błąd wyjątku przy tworzeniu nowego
NegSecLevel=Ujemny poziom bezpieczeństwa jest błędny!
CannotAssignHigher=Nie możesz przypisać poziomu bezpieczeństwa wyższego niż twój
CannotAssignPrivs=Nie możesz przyznawać przywilejów

[xWebQueryCurrent]
BadGameType=Nieobsługiwany typ gry
CurrentLinks[0]=Aktualna gra
CurrentLinks[1]=Lista graczy
CurrentLinks[2]=Konsola serwera
CurrentLinks[3]=Mutatory
CurrentLinks[4]=Boty
CurrentLinks[5]=Restartuj mapę
NoBotsTitle=Boty niedostępne
KickButtonText[0]=Wykop
KickButtonText[1]=Banuj
KickButtonText[2]=Wykop/Blokuj
NoPlayersConnected=** Brak połączonych graczy **
SelectedMutators=Wybrane mutatory
PickMutators=Wybierz żądane mutatory
GameTypeUnsupported=Typ gry '%GameType%' nie korzysta ze standardowych botów.
NoBots=Nie możesz dodać botów, kiedy włączone jest logowanie statystyk światowych.
Added=Dodano
Removed=Usunięto
BotStatus=%Action% boty.
SingleBotStatus=%Action% bota.
ConsoleUserlist=Otrzymanie lub ustawienie konta admina i grup nie jest dozwolone przez konsolę webadmina. Próba została zarejestrowana.
NoteGamePage=Możesz oglądać i wybierać mapy innych typów gry, korzystając z listy rozwijanej. Wybór mapy innego typu automatycznie przełączy serwer na ten typ.
NotePlayersPage=Aby obejrzeć globalne ID połączonych graczy, zmień wartość parametru bBanbyID w części [Engine.AccessControl] swojego ini na 'True'. Botów nie można blokować.
NoteConsolePage=Możesz komunikować się z graczami w grze, wpisując tekst w oknie tekstowym i klikając na opcję 'Wyślij'. Możesz też wprowadzać komendy konsolowe, by zarządzać serwerem. Komunikaty gry są wyświetlane w oknie dziennika, z wyjątkiem komunikatów drużynowych.
NoteMutatorsPage=Wybierz mutatory, jakie chcesz użyć, kiedy skorzystasz z opcji Restartuj połączenie z serwerem
NoteBotsPage=Boty możesz dodać tylko po rozpoczęciu gry. Dodanie botów ma wpływ na ustawienie MinGraczy i może spowodować zmianę tego parametru. Jeśli włączone są statystyki, możesz dodać boty tylko wtedy, jeśli biorą już one udział w grze.

[xWebQueryDefaults]
DefaultsMapsLink=Mapy
DefaultsIPPolicyLink=Polityka dostępowa
DefaultsRestartLink=Restartuj poziom
IDBan=(Globalna blokada)
DefaultsVotingGameConfigLink=Głosowanie na konfigurację gry
ActiveMapNotFound=Nie znaleziono aktywnej mapy:
InactiveMapNotFound=Nie znaleziono nieaktywnej mapy:
CannotModify=** Nie możesz modyfikować żadnych ustawień w tej części **
NoteMapsPage=Aby zapisać zmiany do własnej listy map, kliknij przycisk Zapisz. Aby użyć wybranej listy map w rotacji map serwera, kliknij przycisk 'Użyj'.
NoteRulesPage=Na tej stronie można zmienić konfigurowalne parametry gry. Niektóre parametry mogą wpływać na więcej niż jeden typ gry.
NotePolicyPage=Zablokowani gracze zostaną automatycznie dodani do tej listy. Będziesz mógł dodawać blokady adresów IP tylko ręcznie.
NoteVotingGameConfigPage=Na tej stronie możesz zmodyfikować konfigurację gry odnośnie głosowania na mapy.

