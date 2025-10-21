# Only if portal frames where replaced
execute unless data storage disable_dimensions:tmp {removed:1b} run return fail

title @s actionbar {text:"The End rejects your presence...", color:"light_purple"}
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
