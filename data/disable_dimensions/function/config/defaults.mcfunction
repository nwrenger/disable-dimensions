# Default config: Nether and End, both disabled with custom messages, and world spawn at 0,80,0
data modify storage disable_dimensions:config world_spawn set value {x: 0d, y: 80d, z: 0d, dimension: "minecraft:overworld"}
function disable_dimensions:db/dimensions/reset
