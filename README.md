# Disable Dimensions

[![modrinth](https://img.shields.io/modrinth/v/disable-dimensions.svg)](https://modrinth.com/datapack/disable-dimensions)
[![modrinth](https://img.shields.io/badge/dynamic/json?url=https://api.modrinth.com/v2/project/disable-dimensions&label=downloads&query=$.downloads&color=#00AF5C)](https://modrinth.com/datapack/disable-dimensions)
[![modrinth](https://img.shields.io/modrinth/game-versions/disable-dimensions.svg)](https://modrinth.com/datapack/disable-dimensions)

A **hard-to-break, grief-resistant solution** for preventing players from entering **The Nether** and/or **The End**.

Allows you to disable dimensions by removing any possible way for players to enter them. Each dimension can be separately `enabled` or `disabled`.

> Perfect for vanilla and modded multiplayer servers where you want to disable further dimensions to prevent players from progressing too fast.

## Why use this data pack/mod?

1. **Only Available Solution**:
   No other data pack based solution still works for the current Minecraft versions.
   All older ones are outdated or broken.
2. **Comprehensive Coverage**:
   Works in every realistic situation. For players in all game modes, ender pearls, minecarts, and more.
   Players **can enter** portals, but are instantly **teleported back**. From the Nether to their **entry point**, and from the End to their **respawn** or **world spawn**.
3. **Intended Vanilla Reward**:
   Players who try to swap dimensions will still receive the **vanilla “entered dimension” advancement** (for the Nether or the End).
   This is **intentional** and serves as a small reward for their attempt. Don’t worry, they’ll get teleported back safely!
4. **Immersive Feedback**:
   On teleport back, players see a short **action bar** message and hear a **subtle sound cue**, making the experience clear and responsive without being intrusive.
5. **Flexible and Compatible**:
   Works as either a **global mod** or a **world-specific data pack**, fully compatible with both **vanilla and modded setups** right out of the box.
6. **Server-Ready**:
   Built to be **reliable**, **grief-resistant**, and **completely passive**, with no extra overhead through tick-based checks. Perfect for public or semi-public multiplayer servers.
7. **Dynamic Configuration**:
   Can be adjusted in **real time** through the **in-game config panel**, no reloads or restarts required.

> **TL;DR**: A stable and lightweight way to stop unwanted dimension travel, made to just work.

## Configuration

You can configure it using the config panel.
You **have** to set the **World Spawn** once through it:

```mcfunction
/function disable_dimensions:config
```

## Showcase

> **'Going through' Nether Portal**
>
> ![through_nether_portal](showcase/through_nether_portal.gif)

> **Throwing Ender Pearl at Nether Portal**
>
> ![pearl_nether_portal](showcase/pearl_nether_portal.gif)

> **'Going through' End Portal**
>
> ![through_end_portal](showcase/through_end_portal.gif)

> **Throwing Ender Pearl at End Portal**
>
> ![pearl_end_portal](showcase/pearl_end_portal.gif)

## Contributing & Issues

I warmly welcome:

- Bug reports
- Feature requests
- Pull requests

Please open issues or PRs on [GitHub](https://github.com/nwrenger/disable-dimensions/issues).

## License

This project is licensed under the **MIT License**. See [LICENSE](https://github.com/nwrenger/disable-dimensions/blob/main/LICENSE) for details.
