$scoreboard players set #disable_dimensions.threshold disable_dimensions.conditions $(value)
execute store result score #disable_dimensions.day disable_dimensions.conditions run time query day
execute if score #disable_dimensions.day disable_dimensions.conditions >= #disable_dimensions.threshold disable_dimensions.conditions \
    run data modify storage disable_dimensions:tmp condition_result set value true
