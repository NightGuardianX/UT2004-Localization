[Public]
Object=(Name=Editor.MasterCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.MakeCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.ConformCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.BatchExportCommandlet,Class=Class,MetaClass=Core.Commandlet)
;Object=(Name=Editor.MergeDXTCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.PackageFlagCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.DataRipCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.PkgCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.MapConvertCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.DXTConvertCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.AnalyzeContentCommandlet,Class=Class,MetaClass=Core.Commandlet)
;Object=(Name=PSX2Convert.PSX2ConvertCommandlet,Class=Class,MetaClass=Core.Commandlet)
;Object=(Name=PSX2Convert.PSX2MusicCommandlet,Class=Class,MetaClass=Core.Commandlet)
;Object=(Name=GCNConvert.GCNConvertCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.AnalyzeBuildCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.ConvertMaterialCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.TextureLODCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.RebuildCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.DumpIntCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.SetNormalLODCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.DumpConfigCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.ClassFlagCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.BatchImportCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.BatchingSummary,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.CheckEmitters,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.CheckSounds,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.CheckStaticMeshes,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.CheckTextures,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.CheckUnicodeCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.ChecksumPackageCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.CompareIntCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.CompressTextures,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.CutdownContentCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.GroupRepairCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.ListExports,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.LoadPackage,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.PackageGenerationCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.MapKillZ,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.MergeIntCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.ObjectRenameCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.PS2ConvertCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.RearrangeIntCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.SoundConvert,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.SoundLocCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.StaticMeshConvert,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.StripSourceCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.SurfaceTypeCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.TextureInfoCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.TextureStripCommandlet,Class=Class,MetaClass=Core.Commandlet)
Object=(Name=Editor.UpdateUMODCommandlet,Class=Class,MetaClass=Core.Commandlet)
Preferences="(Caption="Edytor",Parent="Zaawansowane opcje")"
Preferences="(Caption="Zaawansowane",Parent="Edytor",Class=Editor.EditorEngine,Immediate=True,Category=Advanced)"
Preferences="(Caption="Barwy",Parent="Edytor",Class=Editor.EditorEngine,Immediate=True,Category=Colors)"
Preferences="(Caption="Siatka",Parent="Edytor",Class=Editor.EditorEngine,Immediate=True,Category=Grid)"
Preferences="(Caption="Siatka obrotu",Parent="Edytor",Class=Editor.EditorEngine,Immediate=True,Category=RotationGrid)"

[PkgCommandlet]
HelpCmd=pkg
HelpOneLiner=Umożliwia import/eksport danych do/z pakietów w oparciu o strukturę katalogów.
HelpUsage=pkg [import/export] [tekstura/dźwięk] [nazwa pakietu] [katalog]
HelpParm[0]=import/export
HelpDesc[0]=Określa czynność, która ma zostać wykonana
HelpParm[1]=tekstura/dźwięk
HelpDesc[1]=Określa typ pakietu
HelpParm[2]=nazwa pakietu
HelpDesc[2]=Określa pakiet, który tworzysz lub eksportujesz
HelpParm[3]=katalog
HelpDesc[3]=Określa katalog, z którego mają zostać odczytane/zapisane dane

[MasterCommandlet]
HelpCmd=master
HelpOneLiner=Umożliwia budowę plików instalatora
HelpUsage=master [-option...] [parm=value]...
HelpParm[0]=MasterPath
HelpDesc[0]=Określa skąd mają być kopiowane pliki źródłowe
HelpParm[1]=SrcPath
HelpDesc[1]=Określa, gdzie mają zostać przekopiowane dane
HelpParm[2]=RefPath
HelpDesc[2]=Ścieżka dla danych delta-skompresowanych

[MapConvertCommandlet]
HelpCmd=mapconvert
HelpOneLiner=Zmienia format mapy ze starego na nowy (bez transformacji brushy)
HelpUsage=mapconvert SrcFilename DstFilename
HelpParm[0]=SrcFilename
HelpDesc[0]=Nazwa pliku mapy, który ma zostać odczytany
HelpParm[1]=DstFilename
HelpDesc[1]=Nazwa pliku mapy, który ma zostać zapisany

[MakeCommandlet]
HelpCmd=make
HelpOneLiner=Umożliwia przebudowę pakietów UnrealScript
HelpUsage=make [-option...] [parm=value]...
HelpParm[0]=auto
HelpDesc[0]="Na wszystkie pytania zostanie automatycznie udzielona odp. "tak"
HelpParm[1]=nobind
HelpDesc[1]=Nie wymuszać współpracy rodzimych funkcji powiązanych z plikami DLL
HelpParm[2]=silentbuild
HelpDesc[2]=Nie wyświetlać informacji dotyczących analizy i kompilacji dla każdej z klas
HelpParm[3]=exportcache
HelpDesc[3]=Stwórz podręczny wykaz plików do skompilowanego pakietu

[DXTConvertCommandlet]
HelpCmd=dxtconvert
HelpOneLiner=Konwertuj tekstury DXT3/5 na DXT1/ RGBA
HelpUsage=dxtconvert srcpath destpath
HelpParm[0]=srcpath
HelpDesc[0]=Ścieżka dla plików źródłowych
HelpParm[1]=destpath
HelpDesc[1]=Ścieżka dla plików docelowych

[DataRipCommandlet]
HelpCmd=datarip
HelpOneLiner=Tworzy pakiet bez: tekstur, muzyki i dźwięków.
HelpUsage=datarip srcpackage.ext dstpackage.ext
HelpParm[0]=srcpackage.ext
HelpDesc[0]=Pakiet źródłowy
HelpParm[1]=dstpackage.ext
HelpDesc[1]=Pakiet docelowy

[PackageFlagCommandlet]
HelpCmd=packageflag
HelpOneLiner=Ustanawia flagi pakietów, w plikach pakietu
HelpUsage=packageflag src.ext [dest.ext <+|->flag [<+|->flag] ...]
HelpParm[0]=src.ext
HelpDesc[0]=Plik pakietu, który ma zostać wczytany
HelpParm[1]=dest.ext
HelpDesc[1]=Nazwa nowego pliku pakietu z nowymi ustawieniami flagi
HelpParm[2]=flag
HelpDesc[2]=+ ustawia flagę, - usuwa flagę
HelpParm[3]=        
HelpDesc[3]=  AllowDownload
HelpParm[4]=        
HelpDesc[4]=  ClientOptional
HelpParm[5]=        
HelpDesc[5]=  ServerSideOnly
HelpParm[6]=        
HelpDesc[6]=  BrokenLinks
HelpParm[7]=        
HelpDesc[7]=  Unsecure

[ConformCommandlet]
HelpCmd=conform
HelpOneLiner=Generuje dopasowane pliki binarne
HelpUsage=conform existing_file.ext old_file.ext
HelpParm[0]=existingfile.ext
HelpDesc[0]=Plik binarny do wczytania, dopasowania lub zapisania
HelpParm[1]=oldfile.ext
HelpDesc[1]=Stary plik, z którym ma stać się kompatybilny źródłowy plik binarny

[BatchExportCommandlet]
HelpCmd=batchexport
HelpOneLiner=Eksport serii obiektów
HelpUsage=batchexport package.ext classname export_ext
HelpParm[0]=package.ext
HelpDesc[0]=Pakiet, który chcesz eksportować
HelpParm[1]=classname
HelpDesc[1]=Klasa obiektu, który ma zostać eksportowany
HelpParm[2]=export_ext
HelpDesc[2]=Rozszerzenie pliku, do którego ma odbyć się eksport
HelpParm[3]=path
HelpDesc[3]=Ścieżka dla eksportowanego pliku, np. c:\MojaŚcieżka

[AnalyzeContentCommandlet]
HelpCmd=analyzecontent
HelpOneLiner=Analizuje mapę
HelpUsage=analyzecontent mapname
HelpParm[0]=mapname
HelpDesc[0]=Ścieżka do pliku z mapą
