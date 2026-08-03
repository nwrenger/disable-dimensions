# Translations for Disable Dimensions

Official translations for the **Disable Dimensions** data pack/mod. Contributions for improving existing translations or adding new languages are very welcome!

## Supported translations

- `Deutsch (Deutschland)` by @nwrenger (Author)
- `Español (España)` AI-generated
- `Español (México)` by @Ferbook3000 (Contributor)
- `Français (France)` AI-generated
- `Italiano (Italia)` AI-generated
- `日本語 (日本)` AI-generated
- `한국어 (대한민국)` AI-generated
- `Nederlands (Nederland)` AI-generated
- `Polski (Polska)` AI-generated
- `Português (Brasil)` AI-generated
- `Русский (Россия)` AI-generated
- `简体中文 (中国大陆)` AI-generated

The default fallback strings are provided directly in the data pack commands, so `en_us.json` is intentionally not included.

Translations marked as AI-generated were created with AI assistance and have not yet been fully reviewed by a native speaker. They are very likely to contain mistakes, awkward phrasing, or missing context, so corrections are especially welcome.

## Adding a Translation

1. Go to the [repository](https://github.com/nwrenger/disable-dimensions)
2. Duplicate `resourcepack/assets/disable_dimensions/lang/de_de.json`
3. Rename it to your Minecraft language code (e.g. `fr_fr.json`, `es_mx.json`)
4. Translate the values appropriately
5. Open a PR on the repository

## Updating a Translation

- Keep every key from the source file, even if a value has not been translated yet.
- Preserve placeholders such as `%1$s`, `%2$s`, and `%3$s` exactly.
- Preserve the formatting expectations: short labels should stay short, and tooltip text should be clear in chat UI.
- Use UTF-8 JSON without comments or trailing commas.
- If a phrase sounds awkward because of placeholder order, reorder the placeholders instead of changing or removing them.

## Key Reference

### General

| Key                                            | Description                                               |
| ---------------------------------------------- | --------------------------------------------------------- |
| `disable_dimensions.description.resource_pack` | Shown as the resource pack description                    |
| `disable_dimensions.description.data_pack`     | Shown as the datapack description                         |
| `disable_dimensions.status.now`                | Word for "now", used inline in status messages            |
| `disable_dimensions.enabled`                   | Word for "enabled"                                        |
| `disable_dimensions.disabled`                  | Word for "disabled"                                       |
| `disable_dimensions.title_by_author`           | Header pattern — `%1$s` = pack name, `%2$s` = author name |

### About Screen

| Key                                       | Description                                 |
| ----------------------------------------- | ------------------------------------------- |
| `disable_dimensions.about.other_projects` | Intro text before the author's website link |
| `disable_dimensions.about.issue_prefix`   | Intro text before the issue tracker link    |
| `disable_dimensions.about.issue_link`     | Clickable link label for the issue tracker  |
| `disable_dimensions.about.config`         | Intro text before the config command        |

### Actions (buttons)

| Key                                      | Description                                 |
| ---------------------------------------- | ------------------------------------------- |
| `disable_dimensions.action.add`          | Label for add buttons                       |
| `disable_dimensions.action.edit`         | Label for edit buttons                      |
| `disable_dimensions.action.toggle`       | Label for toggle buttons                    |
| `disable_dimensions.action.toggle.hover` | Tooltip shown when hovering a toggle button |
| `disable_dimensions.action.reset`        | Label for reset buttons                     |
| `disable_dimensions.action.replace`      | Label for replace buttons                   |
| `disable_dimensions.action.remove`       | Label for remove buttons                    |

### Config — General

| Key                                                | Description                             |
| -------------------------------------------------- | --------------------------------------- |
| `disable_dimensions.config.title`                  | Title of the config screen              |
| `disable_dimensions.config.hover.add_dimension`    | Tooltip for the add dimension button    |
| `disable_dimensions.config.hover.reset_dimensions` | Tooltip for the reset dimensions button |

### Config — World Spawn

| Key                                                   | Description                                    |
| ----------------------------------------------------- | ---------------------------------------------- |
| `disable_dimensions.config.world_spawn.label`         | Label shown before the world spawn coordinates |
| `disable_dimensions.config.world_spawn.hover.replace` | Tooltip for the replace spawn button           |

### Config — Reset / Repair Notices

| Key                                            | Description                                                                                |
| ---------------------------------------------- | ------------------------------------------------------------------------------------------ |
| `disable_dimensions.config.reset.title`        | Title shown when the config has been reset                                                 |
| `disable_dimensions.config.reset.description`  | Description shown when the config was reset because it was missing, empty, or incompatible |
| `disable_dimensions.config.repair.title`       | Title shown when the config has been updated                                               |
| `disable_dimensions.config.repair.description` | Description shown when missing default fields were added                                   |

### Config — Dimension Entry

| Key                                                        | Description                                                                                                                                             |
| ---------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `disable_dimensions.config.dimension.hover.remove`         | Tooltip for the remove dimension button                                                                                                                 |
| `disable_dimensions.config.dimension.status.label`         | Label for the dimension status field                                                                                                                    |
| `disable_dimensions.config.dimension.status.pattern`       | Status pattern — `%1$s` = dimension name, `%2$s` = "disable_dimensions.status.now", `%3$s` = "disable_dimensions.enabled"/"disable_dimensions.disabled" |
| `disable_dimensions.config.dimension.message.label`        | Label for the block message field                                                                                                                       |
| `disable_dimensions.config.dimension.message.hover.edit`   | Tooltip for the edit message button                                                                                                                     |
| `disable_dimensions.config.dimension.conditions.label`     | Label for the conditions list                                                                                                                           |
| `disable_dimensions.config.dimension.conditions.hover.add` | Tooltip for the add condition button                                                                                                                    |

### Config — Condition Entry

| Key                                                    | Description                                                                                                                                           |
| ------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `disable_dimensions.config.condition.hover.remove`     | Tooltip for the remove condition button                                                                                                               |
| `disable_dimensions.config.condition.status.label`     | Label for the condition's status override field                                                                                                       |
| `disable_dimensions.config.condition.status.pattern`   | Status pattern — `%1$s` = "disable_dimensions.config.condition.status.following", `%2$s` = "disable_dimensions.enabled"/"disable_dimensions.disabled" |
| `disable_dimensions.config.condition.status.following` | Phrase used as `%1$s` in the condition status pattern                                                                                                 |
| `disable_dimensions.config.condition.trigger.label`    | Label for the trigger field                                                                                                                           |
| `disable_dimensions.config.condition.hover.edit`       | Tooltip for the edit trigger button                                                                                                                   |
