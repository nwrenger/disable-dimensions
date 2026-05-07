$execute if entity @s[advancements={$(value)=true}] \
    run data modify storage disable_dimensions:tmp condition_result set value true
