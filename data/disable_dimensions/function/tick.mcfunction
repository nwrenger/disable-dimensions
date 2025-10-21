# Both the player and ender pearl entities are able interact with portals, so prevent both from entering
execute as @a at @s if dimension minecraft:overworld run function disable_dimensions:cleanup/all
execute as @e[type=minecraft:ender_pearl] at @s if dimension minecraft:overworld run function disable_dimensions:cleanup/all
