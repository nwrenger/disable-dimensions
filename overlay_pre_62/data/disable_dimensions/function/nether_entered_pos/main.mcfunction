# Requires: tmp.cur

# Clear previous
data remove storage disable_dimensions:tmp tp

# Copy list indices into fields
data modify storage disable_dimensions:tmp tp.x set from entity @s enteredNetherPosition.x
data modify storage disable_dimensions:tmp tp.y set from entity @s enteredNetherPosition.y
data modify storage disable_dimensions:tmp tp.z set from entity @s enteredNetherPosition.z

# Set dimension, will be in all cases "minecraft:overworld"
data modify storage disable_dimensions:tmp tp.dimension set value "minecraft:overworld"

# Only teleport to enteredNetherPosition if it exists, otherwise fallback to worldspawn
execute unless data entity @s enteredNetherPosition \
    run function disable_dimensions:teleport/apply_world_spawn

function disable_dimensions:nether_entered_pos/perform_tp

# Reset advancement
advancement revoke @s only disable_dimensions:nether_entered

# Cleanup
data remove storage disable_dimensions:tmp tp
