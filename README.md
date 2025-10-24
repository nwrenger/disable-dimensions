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
   Works in every realistic situation. For players in all game modes, ender pearls, minecarts, thrown items, teleport events near portals, and more.
   Everything inside a **7×7×7 range** around both **players and ender pearls** is safely covered.
3. **Edge-Safe Logic**:
   At the extreme world edges (around **Y = −61** and **Y = 316**), the scan range is **vertically reduced by 3 blocks** to prevent errors.
   It scans a **7×4×7 range**, skipping the lowest 3 blocks at the bottom edge and the highest 3 blocks at the top edge.
   Horizontally moving entities remain fully covered.
   Only **very fast vertically moving or falling entities** could theoretically pass through these narrow vertical bands, but such cases are effectively unreachable in normal gameplay:
   - Nether portals cannot be built vertically enterable.
   - End portals never generate at those heights.
4. **Flexible and Compatible**:
   Works as either a **global mod** or a **world-specific data pack**, fully compatible with both **vanilla and modded setups** right out of the box.
5. **Server-Ready**:
   Built to be **reliable, lightweight, and grief-resistant**, making it perfect for public or semi-public multiplayer servers.
6. **Dynamic Configuration**:
   Can be adjusted in **real time** through the **in-game config panel**, no reloads or restarts required.

> **TL;DR**: A stable and lightweight way to stop unwanted dimension travel, made to just work.

## Configuration

You can configure it using the config panel:

```mc
/function disable_dimensions:config
```

## Showcase

> **Already lit Nether Portal**
>
> ![lit_nether_portal](showcase/lit_nether_portal.gif)

> **Igniting Nether Portal**
>
> ![igniting_nether_portal](showcase/igniting_nether_portal.gif)

> **Throwing Ender Pearl at Nether Portal**
>
> ![pearl_nether_portal](showcase/pearl_nether_portal.gif)

> **Activating End Portal (Outside)**
>
> ![end_portal_outside](showcase/end_portal_outside.gif)

> **Activating End Portal (Inside)**
>
> ![end_portal_inside](showcase/end_portal_inside.gif)

> **Throwing Ender Pearl at End Portal**
>
> ![pearl_end_portal](showcase/pearl_end_portal.gif)

## Performance Notice

Be aware that this data pack/mod performs two small 7x7x7 block scans per player and per ender pearl entity per tick when dimensions are disabled (a total of **686 blocks per player and per ender pearl per tick**, or **343** if only one, The Nether or The End, is disabled).

Through testing in vanilla with `f3 + 2`, the average cost was measured at around **0.034 ms per entity per tick**. Even with **800 pearls**, the server’s median tick time increased only by about **27 ms**, which equals roughly **+6.75 ms/tick at 200 players** and **<1 ms/tick below 30 players**.

This is extremely lightweight under normal server loads and will not noticeably affect performance. If your server hosts hundreds of players simultaneously, you might need to use a different solution. But as far as I’m aware, any data pack based solution that’s as safe as mine requires this kind of scanning to work!

> Testing was done on a MacBook Pro 14" (M1 Pro).

## Contributing & Issues

I warmly welcome:

- Bug reports
- Feature requests
- Pull requests

Please open issues or PRs on [GitHub](https://github.com/nwrenger/disable-dimensions/issues).

## License

This project is licensed under the **MIT License**. See [LICENSE](https://github.com/nwrenger/disable-dimensions/blob/main/LICENSE) for details.
