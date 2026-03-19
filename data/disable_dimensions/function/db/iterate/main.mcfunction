# Requires: tmp.$(key)_iterate = {key,storage,array,body,with}, tmp.$(key)_iterate macro input, clears it

# Ensure list exists
$execute unless data storage disable_dimensions:$(storage) $(array) run data modify storage disable_dimensions:$(storage) $(array) set value []

# Append sentinel
$data modify storage disable_dimensions:$(storage) $(array) append value {__sentinel:1b}

# Rotate-scan the array
$function disable_dimensions:db/iterate/loop with storage disable_dimensions:tmp $(key)_iterate

# Remove sentinel at front
$data remove storage disable_dimensions:$(storage) $(array)[0]

# Clear generic iteration state
$data remove storage disable_dimensions:tmp $(key)_cur
data remove storage disable_dimensions:tmp $(key)_keep
$data remove storage disable_dimensions:tmp $(key)_iterate
