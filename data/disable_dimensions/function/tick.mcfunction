# Both the player and ender pearl entities are able interact with portals, so prevent both from entering
execute as @a if dimension minecraft:overworld at @s run function disable_dimensions:cleanup/all
execute as @e[type=minecraft:ender_pearl] if dimension minecraft:overworld at @s run function disable_dimensions:cleanup/all
