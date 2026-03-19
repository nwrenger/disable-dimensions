# Stop when sentinel reaches front
$execute if data storage disable_dimensions:$(storage) $(array)[0].__sentinel run return fail

# Pop front into tmp.cur
$data modify storage disable_dimensions:tmp $(key)_cur set from storage disable_dimensions:$(storage) $(array)[0]
$data remove storage disable_dimensions:$(storage) $(array)[0]

# Keep entries by default unless the callback clears the flag
$data modify storage disable_dimensions:tmp $(key)_keep set value 1b

# Run the per-entry callback
$function disable_dimensions:$(body) with storage disable_dimensions:tmp $(with)

# Push cur back to end when keeping the entry
$execute if data storage disable_dimensions:tmp {$(key)_keep:1b} run data modify storage disable_dimensions:$(storage) $(array) append from storage disable_dimensions:tmp $(key)_cur

# Continue rotating
$data remove storage disable_dimensions:tmp $(key)_keep
$function disable_dimensions:db/iterate/loop with storage disable_dimensions:tmp $(key)_iterate
