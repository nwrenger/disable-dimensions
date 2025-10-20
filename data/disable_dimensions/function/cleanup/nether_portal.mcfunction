# Reset previous flag
data remove storage disable_dimensions:tmp removed

# Try to remove nether portal blocks in a 5×5×5 cube around the player
# and store whether the command SUCCEEDED (1b if any blocks were replaced; 0b otherwise)
execute store success storage disable_dimensions:tmp removed byte 1 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace minecraft:nether_portal

# Only if something was actually removed, show feedback
execute if data storage disable_dimensions:tmp {removed:1b} run title @s actionbar {text:"A sinister presence denies your passage...", color:"dark_red"}
execute if data storage disable_dimensions:tmp {removed:1b} run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
