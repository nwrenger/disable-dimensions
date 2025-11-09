# Run your positioned macro at that spot (teleport)
execute unless data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    run data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:teleport/apply"
execute if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    run data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:teleport/apply_area"
execute as @a[tag=disable_dimensions_end_tp] \
    run function disable_dimensions:teleport/positioned with storage disable_dimensions:tmp tp

# Show message (re-use positioned context so the same base pos is used)
data modify storage disable_dimensions:tmp tp.path set value "disable_dimensions:end/arrival_message"
execute as @a[tag=disable_dimensions_end_tp] \
    run function disable_dimensions:teleport/positioned with storage disable_dimensions:tmp tp

# Apply fx
execute as @a[tag=disable_dimensions_end_tp] \
    run function disable_dimensions:fx/arrival
