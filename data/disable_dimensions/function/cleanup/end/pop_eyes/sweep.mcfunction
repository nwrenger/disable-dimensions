# Only act if portal frames were replaced
execute unless data storage disable_dimensions:tmp {removed:1b} run return fail

# Scan 9 layers (y = -4..+4), each a 8×8 square around the executor
execute positioned ~ ~-4 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~-3 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~-2 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~-1 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~ ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~1 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~2 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~3 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~4 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
