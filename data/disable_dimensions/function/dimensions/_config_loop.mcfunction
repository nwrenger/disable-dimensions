# Stop when sentinel reaches front
execute if data storage disable_dimensions:config dimensions[0].__sentinel run return fail

# Pop front into tmp.cur
data modify storage disable_dimensions:tmp cur set from storage disable_dimensions:config dimensions[0]
data remove storage disable_dimensions:config dimensions[0]

# Run check
function disable_dimensions:dimensions/_config_display with storage disable_dimensions:tmp cur

# Push cur back to end (keeps DB intact)
data modify storage disable_dimensions:config dimensions append from storage disable_dimensions:tmp cur

# Continue
function disable_dimensions:dimensions/_config_loop
