# Run your positioned macro at that spot (teleport + messaging)
execute unless data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    run data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:respawn/teleport_sequence"
execute if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    run data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:respawn/teleport_sequence_area"
execute as @s \
    run function disable_dimensions:teleport/positioned with storage disable_dimensions:tmp tp
