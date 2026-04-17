# Clear previous
data remove storage disable_dimensions:tmp tp

# Destination = configured world spawn
data modify storage disable_dimensions:tmp tp set from storage disable_dimensions:config world_spawn
