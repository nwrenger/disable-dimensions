# Disable Dimensions

[![modrinth](https://img.shields.io/modrinth/v/disable-dimensions.svg)](https://modrinth.com/datapack/disable-dimensions)
[![modrinth](https://img.shields.io/badge/dynamic/json?url=https://api.modrinth.com/v2/project/disable-dimensions&label=downloads&query=$.downloads&color=#00AF5C)](https://modrinth.com/datapack/disable-dimensions)
[![modrinth](https://img.shields.io/modrinth/game-versions/disable-dimensions.svg)](https://modrinth.com/datapack/disable-dimensions)

A **hard-to-break, grief-resistant solution** for preventing players from entering **The Nether**, **The End**, and any further **custom dimensions**.

Allows you to disable dimensions by intercepting all known dimension-entry methods and returning players immediately. Each dimension can be separately `enabled` or `disabled`.

> Perfect for vanilla and modded multiplayer servers where you want to disable further dimensions to prevent players from progressing too fast.

## Why use this data pack/mod?

1. **Only Complete Solution**:
   No other data pack currently disables The Nether, The End, and further custom dimensions for the current Minecraft versions.
   All older ones are outdated or broken.
2. **Comprehensive Coverage**:
   Works in every situation. For players in all game modes, teleportation commands, ender pearls, minecarts, and more.
   Players can enter portals or teleport, but are instantly teleported back. From the Nether to their entry point with a fallback to world spawn, and from the End to their respawn point or world spawn. See [Edge Cases](#edge-cases) for the handful of scenarios that require manual cleanup.
3. **Intended Vanilla Reward**:
   Players who try to swap dimensions will still receive the vanilla “entered dimension” advancement (for the Nether or the End).
   This is intentional and serves as a small reward for their attempt. And you know who tried by checking their achievements. Don’t worry, they’ll get teleported back safely!
4. **Immersive Feedback**:
   On teleport back, players see a short action bar message, hear a subtle sound cue and get a slowness effect applied, making the experience clear and responsive without being intrusive.
5. **Flexible and Compatible**:
   Works as either a global mod or a world-specific data pack, fully compatible with both vanilla, modded and custom dimensions setups right out of the box.
6. **Server-Ready**:
   Built to be reliable, grief-resistant, and completely passive, with no extra overhead through tick-based checks. Perfect for public or semi-public multiplayer servers.
7. **Dynamic Configuration**:
   Can be adjusted in real time through the in-game config panel, no reloads or restarts required.

> **TL;DR**: A stable and lightweight way to stop unwanted dimension travel, made to just work.

## Installation

After adding the data pack/mod to your world or server, you should be able to open the about panel, which is fully controllable with the mouse:

```mcfunction
/function disable_dimensions:about
```

![about_panel](showcase/screenshots/about_panel.png)

## Configuration

Open the configuration panel by the following command:

```mcfunction
/function disable_dimensions:config
```

![config_panel](showcase/screenshots/config_panel.png)

From here, you can:

- Toggle each dimension `enabled` / `disabled`
- Edit the return message and color
- Add custom dimension entries, see [Custom Dimensions](#custom-dimensions) for a guide
- Remove dimension entries
- Reset dimension entries to defaults
- Set the World Spawn

> A default World Spawn exists, but you **should** set it to your desired location once before production use by standing there and pressing `Replace`.

### Custom Dimensions

To block a custom dimension, add a new entry via the config panel.

Each entry requires:

- `name`: The display name of the entry. Used for display in the config panel and shouldn't be empty.
- `id`: The in-game dimension identifier, needs to match the one of the custom dimension.
- `type`: Can be either `nether_entered_pos` for Nether portals or for The End and every other custom dimension `respawn`, which will teleport the player back to their respawn point or the World Spawn.
- `message_color`: The color of the message shown to the player on return, use valid text component colors.
- `message_text`: The text of the message shown to the player on return.

Here are two examples of adding a custom dimension:

1. **The Aether**

```mcfunction
/function disable_dimensions:config/dimension/add {name: "The Aether", id: "aether:the_aether", type: "respawn", message_color: "aqua", message_text:"A radiant force from the heavens bars your ascent..."}
```

2. **ATM10 - The Other**

```mcfunction
/function disable_dimensions:config/dimension/add {name: "The Other", id: "allthemodium:the_other", type: "respawn", message_color: "dark_purple", message_text:"A mysterious force from The Other prevents your entry..."}
```

### Server Only

The config panel will only be usable when you're physically logged in to the server and have `op`.

To configure the data pack/mod, you can use the config commands used by the config panel directly inside the server terminal as follows:

- Dimensions
  - Add Entry: `function disable_dimensions:config/dimension/add {name: "", id: "", type: "", message_color: "", message_text:""}`
  - Enable: `function disable_dimensions:config/dimension/enable {id: ""}`
  - Disable: `function disable_dimensions:config/dimension/disable {id: ""}`
  - Edit Message: `function disable_dimensions:config/dimension/message {id: "", message_color: "", message_text:""}`
  - Remove Entry: `function disable_dimensions:config/dimension/remove {id: ""}`
  - Reset Entries: `function disable_dimensions:config/dimension/reset`
- World Spawn:
  - Set: _Not possible_ due to requiring physical presence at the desired location

> The `id` will be the dimension identifier from the game.
> For The Nether it's `{id: "minecraft:the_nether"}` and for The End it's `{id: "minecraft:the_end"}`.

## Edge Cases

This data pack/mod is intentionally event-driven, with a few rare transitions requiring manual cleanup:

1. **Respawn in disabled dimension**:
   If a respawn point via a respawn anchor or the `spawnpoint` command is set inside a dimension that later gets disabled, the player will continue to respawn there until the respawn point is cleared or reset.
2. **Already inside on disable**:
   Players who are already in The Nether or The End when it gets disabled will remain there until they change dimensions. Teleport them out if needed.

## Showcase

> **'Going Through' Nether Portal**
>
> ![through_nether_portal](showcase/gifs/through_nether_portal.gif)

> **Throwing Ender Pearl at Nether Portal**
>
> ![pearl_nether_portal](showcase/gifs/pearl_nether_portal.gif)

> **Teleporting to The Nether**
>
> ![pearl_nether_portal](showcase/gifs/teleport_nether.gif)

> **'Going Through' End Portal**
>
> ![through_end_portal](showcase/gifs/through_end_portal.gif)

> **Throwing Ender Pearl at End Portal**
>
> ![pearl_end_portal](showcase/gifs/pearl_end_portal.gif)

> **Teleporting to The End**
>
> ![pearl_end_portal](showcase/gifs/teleport_end.gif)

## Contributing & Issues

I warmly welcome:

- Bug reports
- Feature requests
- Pull requests

Please open issues or PRs on [GitHub](https://github.com/nwrenger/disable-dimensions/issues).

## License

This project is licensed under the **MIT License**. See [LICENSE](https://github.com/nwrenger/disable-dimensions/blob/main/LICENSE) for details.
