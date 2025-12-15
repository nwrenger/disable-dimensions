# Clear previous
data remove storage disable_dimensions:tmp tp

# Copy list indices into fields
data modify storage disable_dimensions:tmp tp.x set from entity @a[tag=disable_dimensions_nether_tp,limit=1] enteredNetherPosition.x
data modify storage disable_dimensions:tmp tp.y set from entity @a[tag=disable_dimensions_nether_tp,limit=1] enteredNetherPosition.y
data modify storage disable_dimensions:tmp tp.z set from entity @a[tag=disable_dimensions_nether_tp,limit=1] enteredNetherPosition.z

# Only teleport to enteredNetherPosition if it exists, otherwise fallback to worldspawn
execute unless data entity @a[tag=disable_dimensions_nether_tp,limit=1] enteredNetherPosition \
    run function disable_dimensions:teleport/apply_world_spawn

function disable_dimensions:nether/perform_tp

# Reset advancement
advancement revoke @a[tag=disable_dimensions_nether_tp] only disable_dimensions:nether_entered

# Cleanup
data remove storage disable_dimensions:tmp tp
tag @a[tag=disable_dimensions_nether_tp] remove disable_dimensions_nether_tp
