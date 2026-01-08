# Check if nether is disabled, but reset the advancement nonetheless
execute if data storage disable_dimensions:config {nether:true} \
    run return \
    run advancement revoke @s only disable_dimensions:nether_entered

# Run logic and updates 1 tick later
tag @s add disable_dimensions_nether_tp
schedule function disable_dimensions:nether/each_player 1t append
