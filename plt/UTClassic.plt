[Public]
;Object=(Class=Class,MetaClass=Engine.Mutator,Name=UTClassic.MutUTClassic,Description="Klasyczny balans broni i poruszania się (m.in. uników przy ścianie).")
;Object=(Class=Class,MetaClass=Engine.Mutator,Name=UTClassic.MutUseSniper,Description="Zastępuje porażacze klasycznymi karabinami snajperskimi.")
;Object=(Class=Class,MetaClass=Engine.Mutator,Name=UTClassic.MutUseLightning,Description="Zastępuje klasyczne karabiny snajperskie porażaczami.")
;Object=(Class=Class,MetaClass=Engine.Weapon,Name=UTClassic.ClassicSniperRifle,Description="Karabin snajperski strzelający nabojami z ogromną prędkością, zaopatrzony w lunetę z maks. 10-krotnym zbliżeniem, jest zabójczą bronią na każdy dystans, szczególnie w przypadku trafienia przeciwnika w głowę.")

[ClassicSniperAmmo]
ItemName=Pociski snajperskie

[ClassicSniperAmmoPickup]
PickupMessage=Podnosisz amunicję snajperską.

[ClassicSniperRifle]
Description=Karabin snajperski z długą lufą i 10-krotnym przybliżeniem jest zabójczą bronią z każdej odległości. Szczególnie gdy trafiasz wroga w głowę.
ItemName=Karabin snajperski

[ClassicSniperRiflePickup]
PickupMessage=Podnosisz karabin snajperski.

[DamTypeClassicHeadshot]
DeathString=%k strzela ze snajperki. %o ma dziurę w głowie.
FemaleSuicide=%o strzeliła sobie w głowę.
MaleSuicide=%o strzelił sobie w głowę.

[DamTypeClassicSniper]
DeathString=%k przedziurawia zawodnika: %o
FemaleSuicide=%o strzeliła sobie w stopę.
MaleSuicide=%o strzelił sobie w stopę.

[MutUTClassic]
DJString=Pozwól na podwójne skoki
WDString=Pozwól na odbijanie od ścian
DDJString=Pozwól na podwójne skoki przy odbijaniu
DJHelp=Włączenie opcji pozwala zawodnikom skoczyć ponownie w szczytowym punkcie skoku.
WDHelp=Włączenie opcji umożliwia zawodnikom odbijanie się od ścian.
DDJHelp=Włączenie opcji pozwala zawodnikom skoczyć ponownie w szczytowym punkcie skoku odbitego od ściany.
WeapString=Modyfikacja obrażeń broni
WeapHelp=Po włączeniu broń zadaje większe obrażenia.
TranslocString=Modyfikacja translokatora
TranslocHelp=Po włączeniu translokator ładuje się szybciej.
FriendlyName=Klasyczny UT
Description=Opcje broni i poruszania się z klasycznego UT.

[MutUseLightning]
FriendlyName=Porażacze
Description=Zamienia karabiny snajperskie na Porażacze.

[MutUseSniper]
FriendlyName=Karabiny snajperskie
Description=Zamienia Porażacze na karabiny snajperskie.

