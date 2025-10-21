# Only act if portal frames were replaced
execute unless data storage disable_dimensions:tmp {removed:1b} run return fail

# Scan 5 layers (y = -2..+2), each a 5×5 square around the executor
execute positioned ~ ~-2 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~-1 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~ ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~1 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
execute positioned ~ ~2 ~ run function disable_dimensions:cleanup/end/pop_eyes/square
