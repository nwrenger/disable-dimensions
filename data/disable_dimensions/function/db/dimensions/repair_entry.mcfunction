# Reset when a dimension entry is missing core fields or still uses empty identifiers
execute unless data storage disable_dimensions:tmp d_cur.id \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute if data storage disable_dimensions:tmp {d_cur:{id:""}} \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute unless data storage disable_dimensions:tmp d_cur.type \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute if data storage disable_dimensions:tmp {d_cur:{type:""}} \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute unless data storage disable_dimensions:tmp d_cur.disabled \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute unless data storage disable_dimensions:tmp d_cur.name \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute if data storage disable_dimensions:tmp {d_cur:{name:""}} \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute unless data storage disable_dimensions:tmp d_cur.message_color \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute if data storage disable_dimensions:tmp {d_cur:{message_color:""}} \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute unless data storage disable_dimensions:tmp d_cur.message_text \
    run data modify storage disable_dimensions:tmp load_reset set value 1b
execute if data storage disable_dimensions:tmp {d_cur:{message_text:""}} \
    run data modify storage disable_dimensions:tmp load_reset set value 1b

# Repair missing or non-list conditions in place
execute unless data storage disable_dimensions:tmp {load_reset:1b} \
    unless data storage disable_dimensions:tmp {d_cur:{conditions:[]}} \
    unless data storage disable_dimensions:tmp {d_cur:{conditions:[{}]}} \
    run data modify storage disable_dimensions:tmp load_repaired set value 1b
execute unless data storage disable_dimensions:tmp {load_reset:1b} \
    unless data storage disable_dimensions:tmp {d_cur:{conditions:[]}} \
    unless data storage disable_dimensions:tmp {d_cur:{conditions:[{}]}} \
    run data modify storage disable_dimensions:tmp d_cur.conditions set value []
