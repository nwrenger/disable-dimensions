# Only act if portal frames were replaced
execute unless data storage disable_dimensions:tmp {removed:1b} run return fail

# Scan a 5×5×5 cube centered on the executor (x, y, z ∈ [-2, 2]) and process each spot.
## --- Layer y = -2 ---
execute positioned ~-2 ~-2 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-2 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-2 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-2 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-2 ~-2 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~-2 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-2 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-2 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-2 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-2 ~-1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~-2 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-2 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-2 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-2 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-2 ~ run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~-2 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-2 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-2 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-2 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-2 ~1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~-2 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-2 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-2 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-2 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-2 ~2 run function disable_dimensions:cleanup/unset_here

## --- Layer y = -1 ---
execute positioned ~-2 ~-1 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-1 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-1 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-1 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-1 ~-2 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~-1 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-1 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-1 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-1 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-1 ~-1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~-1 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-1 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-1 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-1 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-1 ~ run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~-1 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-1 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-1 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-1 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-1 ~1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~-1 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~-1 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~-1 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~-1 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~-1 ~2 run function disable_dimensions:cleanup/unset_here

## --- Layer y = 0 ---
execute positioned ~-2 ~ ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~ ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~ ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~ ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~ ~-2 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~ ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~ ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~ ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~ ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~ ~-1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~ ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~ ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~ ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~ ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~ ~ run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~ ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~ ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~ ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~ ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~ ~1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~ ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~ ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~ ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~ ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~ ~2 run function disable_dimensions:cleanup/unset_here

## --- Layer y = +1 ---
execute positioned ~-2 ~1 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~1 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~1 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~1 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~1 ~-2 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~1 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~1 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~1 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~1 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~1 ~-1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~1 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~1 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~1 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~1 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~1 ~ run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~1 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~1 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~1 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~1 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~1 ~1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~1 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~1 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~1 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~1 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~1 ~2 run function disable_dimensions:cleanup/unset_here

## --- Layer y = +2 ---
execute positioned ~-2 ~2 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~2 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~2 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~2 ~-2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~2 ~-2 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~2 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~2 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~2 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~2 ~-1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~2 ~-1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~2 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~2 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~2 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~2 ~ run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~2 ~ run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~2 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~2 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~2 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~2 ~1 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~2 ~1 run function disable_dimensions:cleanup/unset_here

execute positioned ~-2 ~2 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~-1 ~2 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~ ~2 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~1 ~2 ~2 run function disable_dimensions:cleanup/unset_here
execute positioned ~2 ~2 ~2 run function disable_dimensions:cleanup/unset_here
