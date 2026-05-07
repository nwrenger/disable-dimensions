$execute if entity @s[team=$(value)] \
    run data modify storage disable_dimensions:tmp condition_result set value true
