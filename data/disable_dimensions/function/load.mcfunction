# Setup storage defaults if they don't exist
execute unless data storage disable_dimensions:config {init:true,world_spawn:{},dimensions:[{}]} \
    run function disable_dimensions:config/defaults
