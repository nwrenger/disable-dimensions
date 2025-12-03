# Run your positioned macro at that spot (teleport + messaging)
execute unless data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    run data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:end/teleport_sequence_fallback"
execute if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    run data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:end/teleport_sequence_bed"
execute as @a[tag=disable_dimensions_end_tp] \
    run function disable_dimensions:teleport/positioned with storage disable_dimensions:tmp tp
