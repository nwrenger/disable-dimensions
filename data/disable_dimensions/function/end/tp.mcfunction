# Run your positioned macro at that spot (teleport)
execute unless data storage disable_dimensions:tmp {tp:{bed_ok:true}} run data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:tp"
execute if data storage disable_dimensions:tmp {tp:{bed_ok:true}} run data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:tp_top"
execute as @a[tag=disable_dimensions_end_tp] run function disable_dimensions:positioned with storage disable_dimensions:tmp tp

# Show message (re-use positioned context so the same base pos is used if needed)
data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:end/message"
execute as @a[tag=disable_dimensions_end_tp] run function disable_dimensions:positioned with storage disable_dimensions:tmp tp
