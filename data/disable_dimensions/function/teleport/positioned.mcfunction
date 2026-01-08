# Run the function `path` positioned (`x`,`y`,`z`) inside the overworld.
# Enabled block checks with a forceload.
# Removing the forceload only if it was added here.

# Clear previous
data remove storage disable_dimensions:tmp forceload

$execute as @s \
    in minecraft:overworld \
    positioned $(x) $(y) $(z) \
    store success storage disable_dimensions:tmp forceload byte 1 \
    run forceload add ~ ~
$execute as @s \
    in minecraft:overworld \
    positioned $(x) $(y) $(z) \
    run function $(path)
$execute as @s in minecraft:overworld \
    positioned $(x) $(y) $(z) \
    if data storage disable_dimensions:tmp {forceload:1b} \
    run forceload remove ~ ~

# Cleanup
data remove storage disable_dimensions:tmp forceload
