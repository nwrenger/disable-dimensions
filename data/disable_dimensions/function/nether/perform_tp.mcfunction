# Run your positioned macro at that spot (teleport)
data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:teleport/apply"
execute as @a[tag=disable_dimensions_nether_tp] \
    run function disable_dimensions:teleport/positioned with storage disable_dimensions:tmp tp

# Show message (re-use positioned context so the same base pos is used if needed)
data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:nether/arrival_message"
execute as @a[tag=disable_dimensions_nether_tp] \
    run function disable_dimensions:teleport/positioned with storage disable_dimensions:tmp tp

# Apply fx
execute as @a[tag=disable_dimensions_nether_tp] \
    run function disable_dimensions:fx/arrival
