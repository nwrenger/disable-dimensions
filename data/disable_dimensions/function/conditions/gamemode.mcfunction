$execute if entity @s[gamemode=$(value)] \
    run data modify storage disable_dimensions:tmp condition_result set value true
