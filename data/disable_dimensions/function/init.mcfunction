# Default settings: block Nether ON, block End ON (change as you like)
data modify storage disable_dimensions:config init set value true
data modify storage disable_dimensions:config nether set value false
data modify storage disable_dimensions:config end set value false
tellraw @s {"text":"[Disable Dimensions] Settings initialized (Nether: Disabled, End: Disabled)","color":"gray"}
