$execute if entity @s[scores={$(value)}] \
    run data modify storage disable_dimensions:tmp condition_result set value true
