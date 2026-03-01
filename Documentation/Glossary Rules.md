# Glossary Rules

Rules how glossary should be organized.

A separate glossary file must be created for each game entity

Entities should be created by context from files containing in /int directory

Files which name start with same 3-5 characters like DM- CTF- ONS- and so on are Maps entity

We should separate game entities from UI and narrative entities.

For example:

Game entities:

- Weapon Names
- Vehicle Names
- Object Names
- Item Names
- Ability Names
- Gamemode Names
- Trait Names
- Role Names

UI entities:

- Button Names
- Menu Names
- Dialog Names
- Popup Names
- Tooltip Names
- Notification Names
- Error Names
- Success Names
- Warning Names
- Info Names
- Help Names

Narrative entities:

- Character Names
- Team Names
- Racial/Species Names
- Game Universe Location Names (not sublocations from maps)
- Historical Event Names

You can look into some wikis for more information:
https://unreal.fandom.com/wiki/Unreal_Tournament_2004 
https://igrowiki.fandom.com/ru/wiki/Unreal_Tournament_2004

Glossary content should be in format Technical Name - English Name - Current Russian Name -  Old Russian Name
Technical name is some base definition like map name AS-Convoy, SinglePlayerButtonText or something alike that
English name should be taken from files in /int directory
Current Russian name should be taken from /rut directory from the file with same name
Old Russian name should be taken from /Documentation/rut_pirate_ directory from the file with same name. If it is same with Current Name - leave field empty
