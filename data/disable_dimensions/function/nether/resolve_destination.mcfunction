# Clear previous
data remove storage disable_dimensions:tmp tp

# Copy list indices into fields
data modify storage disable_dimensions:tmp tp.x set from entity @s entered_nether_pos[0]
data modify storage disable_dimensions:tmp tp.y set from entity @s entered_nether_pos[1]
data modify storage disable_dimensions:tmp tp.z set from entity @s entered_nether_pos[2]

# Set dimension, will be in all cases "minecraft:overworld"
data modify storage disable_dimensions:tmp tp.dimension set value "minecraft:overworld"

# Only teleport to entered_nether_pos if it exists, otherwise fallback to worldspawn
execute unless data entity @s entered_nether_pos \
    run function disable_dimensions:teleport/apply_world_spawn

function disable_dimensions:nether/perform_tp

# Reset advancement
advancement revoke @s only disable_dimensions:nether_entered

# Cleanup
data remove storage disable_dimensions:tmp tp
tag @s remove disable_dimensions_nether_tp
