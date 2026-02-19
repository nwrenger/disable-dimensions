# Default config: Nether and End, both disabled with custom messages, and world spawn at 0,80,0
data modify storage disable_dimensions:config init set value true
data modify storage disable_dimensions:config world_spawn set value {x:0.5d,y:80d,z:0.5d}
function disable_dimensions:dimensions/reset
