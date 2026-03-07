# Карта проекта

> Навигация по репозиторию локализации UT2004 (русская локаль). **Вся документация проекта** — в этой папке `Documentation/`; папки локалей (/int, /est, /rut и др.) относятся к данным перевода и не смешиваются с документацией.

## Локали и источники

| Папка | Назначение |
|--------|------------|
| /int | Исходные файлы (English), основной источник ключей и строк |
| /est | Дополнительный источник, когда в /int нет соответствующего .int |
| /rut | Русская локализация (.rut) |

Список языков: [_LANGUAGES_LIST.md](_LANGUAGES_LIST.md).

## Документация

| Элемент | Описание |
|---------|----------|
| [LOC_CONFIG.md](LOC_CONFIG.md) | Конфиг пайплайна (источники, язык, сущности, процесс) |
| [LOC_PROCESS.md](LOC_PROCESS.md) | Процесс: анализ → глоссарий → валидация → перевод → ревью → интеграция |
| [GENERAL_RULES.md](GENERAL_RULES.md) | Общие правила документации |
| [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) | Таблица статусов перевода файлов .rut |
| [_GLOSSARIES_LIST.md](_GLOSSARIES_LIST.md) | Индекс глоссариев и список сущностей со ссылками на глоссарии |
| [GLOSSARY_RULES](GLOSSARY_RULES.md) · [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md) | Правила (статус файлов, глоссарии сущностей) |
| [Glossary/](Glossary/) | Глоссарии сущностей + [LOCALIZATION_GLOSSARY.md](Glossary/LOCALIZATION_GLOSSARY.md) |

## Ключевые связи

- Конфиг: [LOC_CONFIG.md](LOC_CONFIG.md)
- Процесс: [LOC_PROCESS.md](LOC_PROCESS.md)
