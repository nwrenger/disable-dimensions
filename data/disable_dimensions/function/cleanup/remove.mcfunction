# In a 7x7x7 range scan for stuff and replace them
$execute unless predicate disable_dimensions:near_bottom unless predicate disable_dimensions:near_top store success storage disable_dimensions:tmp removed byte 1 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace $(block)

# Fallback to y = 0..3
$execute if predicate disable_dimensions:near_bottom store success storage disable_dimensions:tmp removed byte 1 run fill ~-3 ~ ~-3 ~3 ~3 ~3 air replace $(block)

# Fallback to y = -3..0
$execute if predicate disable_dimensions:near_top store success storage disable_dimensions:tmp removed byte 1 run fill ~-3 ~-3 ~-3 ~3 ~ ~3 air replace $(block)
