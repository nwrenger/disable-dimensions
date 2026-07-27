$scoreboard players set #disable_dimensions.threshold disable_dimensions.conditions $(value)
execute store result score #disable_dimensions.day disable_dimensions.conditions run time of minecraft:overworld query time
scoreboard players set #disable_dimensions.daytime disable_dimensions.conditions 24000
scoreboard players operation #disable_dimensions.day disable_dimensions.conditions /= #disable_dimensions.daytime disable_dimensions.conditions
execute if score #disable_dimensions.day disable_dimensions.conditions >= #disable_dimensions.threshold disable_dimensions.conditions \
    run data modify storage disable_dimensions:tmp condition_result set value true
