# Run your positioned macro at that spot (teleport)
data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:tp"
execute as @a[tag=disable_dimensions_nether_tp] run function disable_dimensions:positioned with storage disable_dimensions:tmp tp

# Show message (re-use positioned context so the same base pos is used if needed)
data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:nether/message"
execute as @a[tag=disable_dimensions_nether_tp] run function disable_dimensions:positioned with storage disable_dimensions:tmp tp
