# Remove a single eye from an end portal frame at ~ ~ ~ (drop the item and keep facing)

# Bail if there's no eye here
execute unless block ~ ~ ~ minecraft:end_portal_frame[eye=true] run return fail

# Drop one Eye of Ender
summon item ~ ~1 ~ {Item:{id:"minecraft:ender_eye",Count:1b}}

# Preserve the original facing while clearing the eye
execute if block ~ ~ ~ minecraft:end_portal_frame[facing=north] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=north]
execute if block ~ ~ ~ minecraft:end_portal_frame[facing=south] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=south]
execute if block ~ ~ ~ minecraft:end_portal_frame[facing=east] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=east]
execute if block ~ ~ ~ minecraft:end_portal_frame[facing=west] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=west]
