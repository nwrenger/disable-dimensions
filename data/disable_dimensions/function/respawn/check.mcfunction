# Flags if the respawn point is valid and has at least one valid spawn space nearby.

# 0) Clear result
data remove storage disable_dimensions:tmp tp.valid_respawn

# 1a) Check for beds
execute as @s \
    if predicate disable_dimensions:beds \
    run data modify storage disable_dimensions:tmp tp.valid_respawn set value true

# 1b) Check for charged respawn anchor
execute as @s \
    if predicate disable_dimensions:charged_respawn_anchor \
    run data modify storage disable_dimensions:tmp tp.valid_respawn set value true

# 2) ORTHOGONALS
# -X
execute as @s \
    if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    unless block ~-1 ~-1 ~ #disable_dimensions:any_air \
    unless block ~-1 ~-1 ~ #disable_dimensions:unsafe_floor \
    if block ~-1 ~ ~ #disable_dimensions:any_air \
    if block ~-1 ~1 ~ #disable_dimensions:any_air \
    run return fail
# +X
execute as @s \
    if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    unless block ~1 ~-1 ~ #disable_dimensions:any_air \
    unless block ~1 ~-1 ~ #disable_dimensions:unsafe_floor \
    if block ~1 ~ ~ #disable_dimensions:any_air \
    if block ~1 ~1 ~ #disable_dimensions:any_air \
    run return fail
# -Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    unless block ~ ~-1 ~-1 #disable_dimensions:any_air \
    unless block ~ ~-1 ~-1 #disable_dimensions:unsafe_floor \
    if block ~ ~ ~-1 #disable_dimensions:any_air \
    if block ~ ~1 ~-1 #disable_dimensions:any_air \
    run return fail
# +Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    unless block ~ ~-1 ~1 #disable_dimensions:any_air \
    unless block ~ ~-1 ~1 #disable_dimensions:unsafe_floor \
    if block ~ ~ ~1 #disable_dimensions:any_air \
    if block ~ ~1 ~1 #disable_dimensions:any_air \
    run return fail

# -X -Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    unless block ~-1 ~-1 ~-1 #disable_dimensions:any_air \
    unless block ~-1 ~-1 ~-1 #disable_dimensions:unsafe_floor \
    if block ~-1 ~ ~-1 #disable_dimensions:any_air \
    if block ~-1 ~1 ~-1 #disable_dimensions:any_air \
    run return fail
# 3) DIAGONALS
# +X -Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    unless block ~1 ~-1 ~-1 #disable_dimensions:any_air \
    unless block ~1 ~-1 ~-1 #disable_dimensions:unsafe_floor \
    if block ~1 ~ ~-1 #disable_dimensions:any_air \
    if block ~1 ~1 ~-1 #disable_dimensions:any_air \
    run return fail
# -X +Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    unless block ~-1 ~-1 ~1 #disable_dimensions:any_air \
    unless block ~-1 ~-1 ~1 #disable_dimensions:unsafe_floor \
    if block ~-1 ~ ~1 #disable_dimensions:any_air \
    if block ~-1 ~1 ~1 #disable_dimensions:any_air \
    run return fail
# +X +Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    unless block ~1 ~-1 ~1 #disable_dimensions:any_air \
    unless block ~1 ~-1 ~1 #disable_dimensions:unsafe_floor \
    if block ~1 ~ ~1 #disable_dimensions:any_air \
    if block ~1 ~1 ~1 #disable_dimensions:any_air \
    run return fail

# 4) TOP (fallback)
execute as @s \
    if data storage disable_dimensions:tmp {tp:{valid_respawn:true}} \
    if block ~ ~1 ~ #disable_dimensions:any_air \
    if block ~ ~2 ~ #disable_dimensions:any_air \
    run return fail

# None early returned so no valid respawn position found
data modify storage disable_dimensions:tmp tp.valid_respawn set value false
