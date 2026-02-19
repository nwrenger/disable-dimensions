# Ensure list exists
execute unless data storage disable_dimensions:config dimensions run return fail

# Append sentinel
data modify storage disable_dimensions:config dimensions append value {__sentinel:1b}

function disable_dimensions:dimensions/_check_loop

# Remove sentinel at front
data remove storage disable_dimensions:config dimensions[0]

# Clear tmp and tag
data remove storage disable_dimensions:tmp cur
tag @s remove disable_dimensions_tp
