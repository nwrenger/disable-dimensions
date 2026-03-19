$execute if entity @s[tag=$(value)] \
    run data modify storage disable_dimensions:tmp condition_result set value true
