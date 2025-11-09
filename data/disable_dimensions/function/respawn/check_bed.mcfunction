# Flags if a bed is present and has at least one valid spawn space nearby.

# 0) Clear result
data remove storage disable_dimensions:tmp tp.bed_ok

# 1) Bed presence
execute as @s \
    if block ~ ~ ~ #minecraft:beds \
    run data modify storage disable_dimensions:tmp tp.bed_ok set value true

# 2) ORTHOGONALS
# -X
execute as @s \
    if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    unless block ~-1 ~-1 ~ #disable_dimensions:any_air \
    unless block ~-1 ~-1 ~ #disable_dimensions:unsafe_floor \
    if block ~-1 ~ ~ #disable_dimensions:any_air \
    if block ~-1 ~1 ~ #disable_dimensions:any_air \
    run return fail
# +X
execute as @s \
    if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    unless block ~1 ~-1 ~ #disable_dimensions:any_air \
    unless block ~1 ~-1 ~ #disable_dimensions:unsafe_floor \
    if block ~1 ~ ~ #disable_dimensions:any_air \
    if block ~1 ~1 ~ #disable_dimensions:any_air \
    run return fail
# -Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    unless block ~ ~-1 ~-1 #disable_dimensions:any_air \
    unless block ~ ~-1 ~-1 #disable_dimensions:unsafe_floor \
    if block ~ ~ ~-1 #disable_dimensions:any_air \
    if block ~ ~1 ~-1 #disable_dimensions:any_air \
    run return fail
# +Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    unless block ~ ~-1 ~1 #disable_dimensions:any_air \
    unless block ~ ~-1 ~1 #disable_dimensions:unsafe_floor \
    if block ~ ~ ~1 #disable_dimensions:any_air \
    if block ~ ~1 ~1 #disable_dimensions:any_air \
    run return fail

# -X -Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    unless block ~-1 ~-1 ~-1 #disable_dimensions:any_air \
    unless block ~-1 ~-1 ~-1 #disable_dimensions:unsafe_floor \
    if block ~-1 ~ ~-1 #disable_dimensions:any_air \
    if block ~-1 ~1 ~-1 #disable_dimensions:any_air \
    run return fail
# 3) DIAGONALS
# +X -Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    unless block ~1 ~-1 ~-1 #disable_dimensions:any_air \
    unless block ~1 ~-1 ~-1 #disable_dimensions:unsafe_floor \
    if block ~1 ~ ~-1 #disable_dimensions:any_air \
    if block ~1 ~1 ~-1 #disable_dimensions:any_air \
    run return fail
# -X +Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    unless block ~-1 ~-1 ~1 #disable_dimensions:any_air \
    unless block ~-1 ~-1 ~1 #disable_dimensions:unsafe_floor \
    if block ~-1 ~ ~1 #disable_dimensions:any_air \
    if block ~-1 ~1 ~1 #disable_dimensions:any_air \
    run return fail
# +X +Z
execute as @s \
    if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    unless block ~1 ~-1 ~1 #disable_dimensions:any_air \
    unless block ~1 ~-1 ~1 #disable_dimensions:unsafe_floor \
    if block ~1 ~ ~1 #disable_dimensions:any_air \
    if block ~1 ~1 ~1 #disable_dimensions:any_air \
    run return fail

# 4) TOP (fallback)
execute as @s \
    if data storage disable_dimensions:tmp {tp:{bed_ok:true}} \
    if block ~ ~1 ~ #disable_dimensions:any_air \
    if block ~ ~2 ~ #disable_dimensions:any_air \
    run return fail

# None early returned so no valid respawn position found
data modify storage disable_dimensions:tmp tp.bed_ok set value false
