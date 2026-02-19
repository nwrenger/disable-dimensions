# Requires: tmp.cur

# Clear previous
data remove storage disable_dimensions:tmp tp

# Copy list indices into fields
data modify storage disable_dimensions:tmp tp.x set from entity @s SpawnX
data modify storage disable_dimensions:tmp tp.y set from entity @s SpawnY
data modify storage disable_dimensions:tmp tp.z set from entity @s SpawnZ

# Make sure the default is set
data modify storage disable_dimensions:tmp tp.dimension set value "minecraft:overworld"

# Copy respawn data
data modify storage disable_dimensions:tmp tp.dimension set from entity @s SpawnDimension
data modify storage disable_dimensions:tmp tp.forced_respawn set from entity @s SpawnForced

# Check if the respawn point is forced
# Otherwise check if respawn point is valid and prepare tmp
execute unless data storage disable_dimensions:tmp {tp:{forced_respawn:true}} \
    run data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:respawn/check"
execute as @s \
    unless data storage disable_dimensions:tmp {tp:{forced_respawn:true}} \
    run function disable_dimensions:teleport/positioned with storage disable_dimensions:tmp tp

# Otherwise fallback to worldspawn and prepare tmp
execute as @s \
    unless data storage disable_dimensions:tmp {tp:{forced_respawn:true}} \
    unless data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    run function disable_dimensions:teleport/apply_world_spawn

function disable_dimensions:respawn/perform_tp

# Cleanup
data remove storage disable_dimensions:tmp tp
