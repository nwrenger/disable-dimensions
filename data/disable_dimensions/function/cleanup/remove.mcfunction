# In a 7x7x7 range scan for stuff and replace them
$execute store success storage disable_dimensions:tmp removed byte 1 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace $(block)

# Fallback to y = 0..3
$execute unless data storage disable_dimensions:tmp {removed:1b} store success storage disable_dimensions:tmp removed byte 1 run fill ~-3 ~ ~-3 ~3 ~3 ~3 air replace $(block)

# Fallback to y = -3..0
$execute unless data storage disable_dimensions:tmp {removed:1b} store success storage disable_dimensions:tmp removed byte 1 run fill ~-3 ~-3 ~-3 ~3 ~ ~3 air replace $(block)
