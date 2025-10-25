# Clear previous
data remove storage disable_dimensions:tmp tp

# Copy list indices into fields
data modify storage disable_dimensions:tmp tp.x set from entity @a[tag=disable_dimensions_end_tp,limit=1] respawn.pos[0]
data modify storage disable_dimensions:tmp tp.y set from entity @a[tag=disable_dimensions_end_tp,limit=1] respawn.pos[1]
data modify storage disable_dimensions:tmp tp.z set from entity @a[tag=disable_dimensions_end_tp,limit=1] respawn.pos[2]

# Check if respawn at bed exists and set tmp
data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:check_bed"
execute as @a[tag=disable_dimensions_end_tp] run function disable_dimensions:positioned with storage disable_dimensions:tmp tp

# Otherwise fallback to worldspawn and prepare tmp
execute as @a[tag=disable_dimensions_end_tp] unless data storage disable_dimensions:tmp {tp:{bed_ok:true}} run function disable_dimensions:to_worldspawn {path:"disable_dimensions:end/tp"}

execute if data storage disable_dimensions:tmp {tp:{bed_ok:true}} run function disable_dimensions:end/tp

# Reset advancements
advancement revoke @a[tag=disable_dimensions_end_tp] only disable_dimensions:end_entered

# Cleanup
data remove storage disable_dimensions:tmp tp
tag @a[tag=disable_dimensions_end_tp] remove disable_dimensions_end_tp
