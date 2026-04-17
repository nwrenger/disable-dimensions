# Disable Dimensions Translations

This resource pack provides translations for the **Disable Dimensions** data pack/mod.
Contributions for additional languages are very welcome!

## Supported translations

- Deutsch (Deutschland) by @nwrenger (me)

## Adding a Translation

1. Go to the [repository](https://github.com/nwrenger/disable-dimensions)
2. Duplicate `resourcepack/assets/disable_dimensions/lang/de_de.json`
3. Rename it to your language code (e.g. `en_us.json`, `fr_fr.json`)
4. Translate the values appropiatly
5. Open a PR on the repository

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
