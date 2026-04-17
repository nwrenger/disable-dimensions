# Setup storage and scoreboard defaults

# Ensure condition helper scoreboard exists
scoreboard objectives add disable_dimensions.conditions dummy

# If config is valid, stop here
execute \
    if data storage disable_dimensions:config world_spawn.x \
    if data storage disable_dimensions:config world_spawn.y \
    if data storage disable_dimensions:config world_spawn.z \
    if data storage disable_dimensions:config world_spawn.dimension \
    if data storage disable_dimensions:config dimensions \
    if data storage disable_dimensions:config dimensions[].id \
    if data storage disable_dimensions:config dimensions[].conditions \
    run return fail

# Otherwise initialize storage defaults
function disable_dimensions:config/defaults
