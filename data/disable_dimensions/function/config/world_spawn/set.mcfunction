# Only allow setting in the Overworld
execute unless dimension minecraft:overworld run title @s actionbar {"text":"Go to the Overworld at your desired spawn, then click again.","color":"yellow"}
execute unless dimension minecraft:overworld run return fail

# Write @s position from NBT
execute store result storage disable_dimensions:config world_spawn.x double 1 run data get entity @s Pos[0]
execute store result storage disable_dimensions:config world_spawn.y double 1 run data get entity @s Pos[1]
execute store result storage disable_dimensions:config world_spawn.z double 1 run data get entity @s Pos[2]

function disable_dimensions:config
