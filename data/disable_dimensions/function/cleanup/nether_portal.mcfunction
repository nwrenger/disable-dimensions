# Detect world-edge cases automatically in a 5x4x5 cube around the player/ender pearl
# and store whether the command SUCCEEDED (1b if any blocks were replaced; 0b otherwise)

# If player/ender pearl is near the bottom (Y ≤ -63): shift the scan up (0..+2)
execute if predicate disable_dimensions:below_world_floor run execute store success storage disable_dimensions:tmp removed byte 1 run fill ~-2 ~ ~-2 ~2 ~2 ~2 air replace minecraft:nether_portal

# If near the top (Y ≥ 317): shift the scan down (-2..0)
execute if predicate disable_dimensions:above_world_ceiling run execute store success storage disable_dimensions:tmp removed byte 1 run fill ~-2 ~-2 ~-2 ~2 ~ ~2 air replace minecraft:nether_portal

# Otherwise use the normal centered 5×4×5 (-1..+2)
execute unless predicate disable_dimensions:below_world_floor unless predicate disable_dimensions:above_world_ceiling run execute store success storage disable_dimensions:tmp removed byte 1 run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air replace minecraft:nether_portal

# Show feedback
# Always get player to display the message
execute if entity @s[type=player] run function disable_dimensions:cleanup/nether_message
execute if entity @s[type=ender_pearl] on origin run function disable_dimensions:cleanup/nether_message
