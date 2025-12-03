# Run the full arrival flow once at the resolved destination
data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:nether/teleport_sequence"
execute as @a[tag=disable_dimensions_nether_tp] \
    run function disable_dimensions:teleport/positioned with storage disable_dimensions:tmp tp
