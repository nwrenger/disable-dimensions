# NORTH-facing frame with eye -> drop one Eye, then unset
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true,facing=north] run summon item ~ ~1 ~ {Item:{id:"minecraft:ender_eye",Count:1b}}
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true,facing=north] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=north]

# SOUTH
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true,facing=south] run summon item ~ ~1 ~ {Item:{id:"minecraft:ender_eye",Count:1b}}
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true,facing=south] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=south]

# EAST
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true,facing=east] run summon item ~ ~1 ~ {Item:{id:"minecraft:ender_eye",Count:1b}}
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true,facing=east] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=east]

# WEST
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true,facing=west] run summon item ~ ~1 ~ {Item:{id:"minecraft:ender_eye",Count:1b}}
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true,facing=west] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=west]
