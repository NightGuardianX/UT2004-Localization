[Public]
Object=(Name=IpDrv.UpdateServerCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=IpDrv.MasterServerCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=IpDrv.CompressCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=IpDrv.DecompressCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=IpDrv.TcpNetDriver,Class=Class,MetaClass=Engine.NetDriver)
Object=(Name=IpDrv.UdpBeacon,Class=Class,MetaClass=Engine.Actor)
Preferences=(Caption="Gra sieciowa TCP/IP",Parent="Networking",Class=IpDrv.TcpNetDriver)
Preferences=(Caption="Sygnał serwera LAN",Parent="Networking",Class=IpDrv.UdpBeacon,Immediate=True)

[TcpNetDriver]
ClassCaption=Gra sieciowa TCP/IP

[UdpBeacon]
ClassCaption=Sygnał serwera LAN

[DecompressCommandlet]
HelpCmd=wypakuj
HelpOneLiner=Wypakuj plik spakowany za pomocą kompresji ucc.
HelpUsage=wypakuj SpakowanyPlik
HelpParm[0]=SpakowanyPlik
HelpDesc[0]=Plik .uz do odpakowania

[CompressCommandlet]
HelpCmd=Spakuj
HelpOneLiner=Spakuj pakiet Unreal do automatycznego pobrania. Stworzony zostanie plik typu .uz
HelpUsage=spakuj Plik1 [Plik2 [Plik3…]]
HelpParm[0]=Pliki
HelpDesc[0]=Nazwy plików lub dzikie karty do spakowania

[MasterServerUplink]
MSUPropText[0]=Reklamuj serwer
MSUPropText[1]=Przetwarzaj statystyki
MSUPropText[2]="Ignoruj bany komisyjne"
MSUPropDesc[0]=w wypadku zaznaczenia twój serwer będzie reklamowany w przeglądarce serwerów internetowych.
MSUPropDesc[1]=Publikuje statystyki graczy z twojego serwera na stronie statystyk UT2004.
MSUPropDesc[2]="Włącz, aby twój serwer pozwalał na grę graczom zbanowanym przez Komisję na serwerze głównym."
