# Check if nether is disabled, but reset the advancement nonetheless
execute if data storage disable_dimensions:config {end:true} \
    run return \
    run advancement revoke @s only disable_dimensions:end_entered

# Run teleport and state updates 1 tick later
tag @s add disable_dimensions_end_tp
schedule function disable_dimensions:end/resolve_destination 1t append
