# Setup storage and scoreboard defaults

# Ensure condition helper scoreboard exists
scoreboard objectives add disable_dimensions.conditions dummy

# Reset load-state flags
data remove storage disable_dimensions:tmp load_reset
data remove storage disable_dimensions:tmp load_repaired

# Repair safe top-level omissions in place
execute unless data storage disable_dimensions:config world_spawn.x \
    run data modify storage disable_dimensions:tmp load_repaired set value 1b
execute unless data storage disable_dimensions:config world_spawn.x \
    run data modify storage disable_dimensions:config world_spawn.x set value 0d
execute unless data storage disable_dimensions:config world_spawn.y \
    run data modify storage disable_dimensions:tmp load_repaired set value 1b
execute unless data storage disable_dimensions:config world_spawn.y \
    run data modify storage disable_dimensions:config world_spawn.y set value 80d
execute unless data storage disable_dimensions:config world_spawn.z \
    run data modify storage disable_dimensions:tmp load_repaired set value 1b
execute unless data storage disable_dimensions:config world_spawn.z \
    run data modify storage disable_dimensions:config world_spawn.z set value 0d
execute unless data storage disable_dimensions:config world_spawn.dimension \
    run data modify storage disable_dimensions:tmp load_repaired set value 1b
execute unless data storage disable_dimensions:config world_spawn.dimension \
    run data modify storage disable_dimensions:config world_spawn.dimension set value "minecraft:overworld"

# Reset fully when the dimensions list is missing or unusable
execute unless data storage disable_dimensions:config dimensions[0] \
    run data modify storage disable_dimensions:tmp load_reset set value 1b

# Repair safe per-dimension omissions while keeping the rest of the config intact
execute unless data storage disable_dimensions:tmp {load_reset:1b} \
    run function disable_dimensions:db/dimensions/repair

# Full reset remains the fallback for empty or incompatible configs
execute if data storage disable_dimensions:tmp {load_reset:1b} \
    run function disable_dimensions:config/defaults

# Notify online players when load changed the config
execute if data storage disable_dimensions:tmp {load_reset:1b} \
    run function disable_dimensions:load/notify/reset
execute unless data storage disable_dimensions:tmp {load_reset:1b} \
    if data storage disable_dimensions:tmp {load_repaired:1b} \
    run function disable_dimensions:load/notify/repaired

# Cleanup
data remove storage disable_dimensions:tmp load_reset
data remove storage disable_dimensions:tmp load_repaired
