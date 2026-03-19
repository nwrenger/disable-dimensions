# Checks conditions, creates tmp.disabled

# Skip when the dimension is currently enabled and has no condition overrides
execute unless data storage disable_dimensions:tmp {d_cur:{disabled:true}} unless data storage disable_dimensions:tmp {d_cur:{conditions:[{}]}} run return 1

# Start from the configured disabled flag
data modify storage disable_dimensions:tmp disabled set from storage disable_dimensions:tmp d_cur.disabled

# Let conditions overwrite the flag when they pass
function disable_dimensions:db/dimensions/conditions/check {id:"$(id)"}

# Only send the player back when the final flag stays true
$execute if data storage disable_dimensions:tmp {disabled:true} run function disable_dimensions:$(type)/main

# Cleanup
data remove storage disable_dimensions:tmp disabled
