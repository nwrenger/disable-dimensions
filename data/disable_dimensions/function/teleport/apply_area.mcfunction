# Checks safe spawn positions around the current block and teleports @s to the first valid one.

# 1) ORTHOGONALS
# -X
execute as @s unless block ~-1 ~-1 ~ #disable_dimensions:any_air unless block ~-1 ~-1 ~ #disable_dimensions:unsafe_floor if block ~-1 ~ ~ #disable_dimensions:any_air if block ~-1 ~1 ~ #disable_dimensions:any_air run return run tp @s ~-1 ~ ~
# +X
execute as @s unless block ~1 ~-1 ~ #disable_dimensions:any_air unless block ~1 ~-1 ~ #disable_dimensions:unsafe_floor if block ~1 ~ ~ #disable_dimensions:any_air if block ~1 ~1 ~ #disable_dimensions:any_air run return run tp @s ~1 ~ ~
# -Z
execute as @s unless block ~ ~-1 ~-1 #disable_dimensions:any_air unless block ~ ~-1 ~-1 #disable_dimensions:unsafe_floor if block ~ ~ ~-1 #disable_dimensions:any_air if block ~ ~1 ~-1 #disable_dimensions:any_air run return run tp @s ~ ~ ~-1
# +Z
execute as @s unless block ~ ~-1 ~1 #disable_dimensions:any_air unless block ~ ~-1 ~1 #disable_dimensions:unsafe_floor if block ~ ~ ~1 #disable_dimensions:any_air if block ~ ~1 ~1 #disable_dimensions:any_air run return run tp @s ~ ~ ~1

# 2) DIAGONALS (fallbacks)
# -X -Z
execute as @s unless block ~-1 ~-1 ~-1 #disable_dimensions:any_air unless block ~-1 ~-1 ~-1 #disable_dimensions:unsafe_floor if block ~-1 ~ ~-1 #disable_dimensions:any_air if block ~-1 ~1 ~-1 #disable_dimensions:any_air run return run tp @s ~-1 ~ ~-1
# +X -Z
execute as @s unless block ~1 ~-1 ~-1 #disable_dimensions:any_air unless block ~1 ~-1 ~-1 #disable_dimensions:unsafe_floor if block ~1 ~ ~-1 #disable_dimensions:any_air if block ~1 ~1 ~-1 #disable_dimensions:any_air run return run tp @s ~1 ~ ~-1
# -X +Z
execute as @s unless block ~-1 ~-1 ~1 #disable_dimensions:any_air unless block ~-1 ~-1 ~1 #disable_dimensions:unsafe_floor if block ~-1 ~ ~1 #disable_dimensions:any_air if block ~-1 ~1 ~1 #disable_dimensions:any_air run return run tp @s ~-1 ~ ~1
# +X +Z
execute as @s unless block ~1 ~-1 ~1 #disable_dimensions:any_air unless block ~1 ~-1 ~1 #disable_dimensions:unsafe_floor if block ~1 ~ ~1 #disable_dimensions:any_air if block ~1 ~1 ~1 #disable_dimensions:any_air run return run tp @s ~1 ~ ~1

# 3) TOP on bed (fallback)
execute as @s if data storage disable_dimensions:tmp {tp:{bed_ok:true}} if block ~ ~1 ~ #disable_dimensions:any_air if block ~ ~2 ~ #disable_dimensions:any_air run return run tp @s ~ ~1 ~
