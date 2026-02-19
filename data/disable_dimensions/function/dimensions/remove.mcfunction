# Requires: tmp.query.id, clears it
# Removes the array entry

# Ensure list exists
execute unless data storage disable_dimensions:config dimensions run return fail

# Append sentinel
data modify storage disable_dimensions:config dimensions append value {__sentinel:1b}

# Start remove loop
function disable_dimensions:dimensions/_remove_loop with storage disable_dimensions:tmp query

# Remove sentinel at front
data remove storage disable_dimensions:config dimensions[0]

# Clear tmp
data remove storage disable_dimensions:tmp cur
data remove storage disable_dimensions:tmp query
