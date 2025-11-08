# Reset any motion
tp @s @s

# Checks safe spawn positions around the current block and teleports @s to the first valid one with a fallback which teleports @s on top the bed.

# 1) ORTHOGONALS
# -X
execute as @s unless block ~-1 ~-1 ~ #disable_dimensions:any_air unless block ~-1 ~-1 ~ #disable_dimensions:unsafe_floor if block ~-1 ~ ~ #disable_dimensions:any_air if block ~-1 ~1 ~ #disable_dimensions:any_air run return run tp @s ~-1 ~ ~ facing ~ ~ ~
# +X
execute as @s unless block ~1 ~-1 ~ #disable_dimensions:any_air unless block ~1 ~-1 ~ #disable_dimensions:unsafe_floor if block ~1 ~ ~ #disable_dimensions:any_air if block ~1 ~1 ~ #disable_dimensions:any_air run return run tp @s ~1 ~ ~ facing ~ ~ ~
# -Z
execute as @s unless block ~ ~-1 ~-1 #disable_dimensions:any_air unless block ~ ~-1 ~-1 #disable_dimensions:unsafe_floor if block ~ ~ ~-1 #disable_dimensions:any_air if block ~ ~1 ~-1 #disable_dimensions:any_air run return run tp @s ~ ~ ~-1 facing ~ ~ ~
# +Z
execute as @s unless block ~ ~-1 ~1 #disable_dimensions:any_air unless block ~ ~-1 ~1 #disable_dimensions:unsafe_floor if block ~ ~ ~1 #disable_dimensions:any_air if block ~ ~1 ~1 #disable_dimensions:any_air run return run tp @s ~ ~ ~1 facing ~ ~ ~

# 2) DIAGONALS
# -X -Z
execute as @s unless block ~-1 ~-1 ~-1 #disable_dimensions:any_air unless block ~-1 ~-1 ~-1 #disable_dimensions:unsafe_floor if block ~-1 ~ ~-1 #disable_dimensions:any_air if block ~-1 ~1 ~-1 #disable_dimensions:any_air run return run tp @s ~-1 ~ ~-1 facing ~ ~ ~
# +X -Z
execute as @s unless block ~1 ~-1 ~-1 #disable_dimensions:any_air unless block ~1 ~-1 ~-1 #disable_dimensions:unsafe_floor if block ~1 ~ ~-1 #disable_dimensions:any_air if block ~1 ~1 ~-1 #disable_dimensions:any_air run return run tp @s ~1 ~ ~-1 facing ~ ~ ~
# -X +Z
execute as @s unless block ~-1 ~-1 ~1 #disable_dimensions:any_air unless block ~-1 ~-1 ~1 #disable_dimensions:unsafe_floor if block ~-1 ~ ~1 #disable_dimensions:any_air if block ~-1 ~1 ~1 #disable_dimensions:any_air run return run tp @s ~-1 ~ ~1 facing ~ ~ ~
# +X +Z
execute as @s unless block ~1 ~-1 ~1 #disable_dimensions:any_air unless block ~1 ~-1 ~1 #disable_dimensions:unsafe_floor if block ~1 ~ ~1 #disable_dimensions:any_air if block ~1 ~1 ~1 #disable_dimensions:any_air run return run tp @s ~1 ~ ~1 facing ~ ~ ~

# 3) TOP on bed (fallback)
# We can always fallback without checks, because before apply_area gets called, valid positions get checked via disable_dimensions:respawn/check_bed
execute as @s run return run tp @s ~ ~1 ~ facing ~ ~ ~
