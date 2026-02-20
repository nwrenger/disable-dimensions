# Setup storage defaults

# If config is valid, stop here
execute \
    if data storage disable_dimensions:config world_spawn.x \
    if data storage disable_dimensions:config world_spawn.y \
    if data storage disable_dimensions:config world_spawn.z \
    if data storage disable_dimensions:config dimensions \
    run return fail

# Otherwise initialize defaults
function disable_dimensions:config/defaults
