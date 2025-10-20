# Disable Dimensions

[![modrinth](https://img.shields.io/modrinth/v/disable-dimensions.svg)](https://modrinth.com/datapack/disable-dimensions)
[![modrinth](https://img.shields.io/modrinth/game-versions/disable-dimensions.svg)](https://modrinth.com/datapack/disable-dimensions)

A **hard-to-break, grief-resistant solution** for preventing players from entering specific dimensions in vanilla Minecraft.

Allows you to disable dimensions by removing any possible way for players to enter them. Each dimension can be separately `enabled` or `disabled`.

> Perfect for vanilla multiplayer servers where you want to disable further dimensions to prevent players from progressing too fast.

## Configuration

You can configure it using the config panel:

```mc
/function disable_dimensions:config
```

## Showcase

> Already lit Nether Portal
>
> ![lit_nether_portal](lit_nether_portal.gif)

> Igniting Nether Portal
>
> ![igniting_nether_portal](igniting_nether_portal.gif)

> Throwing Ender Pearl at Nether Portal
>
> ![pearl_nether_portal](pearl_nether_portal.gif)

> Activating End Portal (Outside)
>
> ![end_portal_outside](end_portal_outside.gif)

> Activating End Portal (Inside)
>
> ![end_portal_inside](end_portal_inside.gif)

> Throwing Ender Pearl at End Portal
>
> ![pearl_end_portal](pearl_end_portal.gif)

## Performance Notice

Be aware that this datapack performs two small 5×4×5 block scans per player and per ender pearl entity per tick when dimensions are disabled (a total of **200 blocks per player and per ender pearl per tick**, or **100** if only one, The Nether or The End, is disabled).

Through testing with `/spark tps`, the average cost was measured at around **0.011–0.012 ms per entity per tick**. Even with **800 pearls**, the server’s median tick time only increased by about **9–10 ms**, which equals roughly **+2 ms/tick at 200 players** and **<0.3 ms/tick below 30 players**.

This is extremely lightweight under normal server loads and will not noticeably affect performance. If your server hosts hundreds of players simultaneously, you might need to use a different solution. But as far as I’m aware, any datapack-based solution that’s as safe as mine requires this kind of scanning to work!

> Testing was done on a MacBook Pro 14" (M1 Pro), representing typical mid-range modern hardware.

## Contributing & Issues

I warmly welcome:

- Bug reports
- Feature requests
- Pull requests

Please open issues or PRs on [GitHub](https://github.com/nwrenger/disable-dimensions/issues).

## License

This project is licensed under the **MIT License**. See [LICENSE](https://github.com/nwrenger/disable-dimensions/blob/main/LICENSE) for details.
