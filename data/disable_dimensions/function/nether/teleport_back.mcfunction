# Only execute if entered_nether_pos exists, otherwise fallback to worldspawn
execute unless data entity @a[tag=disable_dimensions_nether_tp,limit=1] entered_nether_pos run return run function disable_dimensions:to_worldspawn {path:"disable_dimensions:nether/tp"}

# Clear previous
data remove storage disable_dimensions:tmp tp

# Copy list indices into fields
data modify storage disable_dimensions:tmp tp.x set from entity @a[tag=disable_dimensions_nether_tp,limit=1] entered_nether_pos[0]
data modify storage disable_dimensions:tmp tp.y set from entity @a[tag=disable_dimensions_nether_tp,limit=1] entered_nether_pos[1]
data modify storage disable_dimensions:tmp tp.z set from entity @a[tag=disable_dimensions_nether_tp,limit=1] entered_nether_pos[2]

function disable_dimensions:nether/tp

# Reset advancement
advancement revoke @a[tag=disable_dimensions_nether_tp] only disable_dimensions:nether_entered

# Cleanup
data remove storage disable_dimensions:tmp tp
tag @a[tag=disable_dimensions_nether_tp] remove disable_dimensions_nether_tp
