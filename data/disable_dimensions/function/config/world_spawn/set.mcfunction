# Write from @s position and dimension into config storage
execute store result storage disable_dimensions:config world_spawn.x double 1 \
    run data get entity @s Pos[0]
execute store result storage disable_dimensions:config world_spawn.y double 1 \
    run data get entity @s Pos[1]
execute store result storage disable_dimensions:config world_spawn.z double 1 \
    run data get entity @s Pos[2]
data modify storage disable_dimensions:config world_spawn.dimension set from entity @s Dimension

function disable_dimensions:config
