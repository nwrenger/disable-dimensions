# Run the full arrival flow once at the resolved destination
data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:nether_entered_pos/teleport_sequence"
execute as @s \
    run function disable_dimensions:teleport/positioned with storage disable_dimensions:tmp tp
