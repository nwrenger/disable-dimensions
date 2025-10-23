# In a 5x5x5 range scan for a portal and remove it
function disable_dimensions:cleanup/remove {block:"minecraft:nether_portal"}

# When frames got removed, unless return early
execute unless data storage disable_dimensions:tmp {removed:1b} run return fail

# Show feedback on player
function disable_dimensions:on_player {path:"disable_dimensions:cleanup/nether/message"}
