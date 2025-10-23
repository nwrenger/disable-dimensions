# Executes a function `path` inside a 7x7x7 cube around the center

# Scan 9 layers (y = -3..+2), each a 7×7 square around the executor
$execute positioned ~ ~-3 ~ run function disable_dimensions:each_inside_cube/square {path:"$(path)"}
$execute positioned ~ ~-2 ~ run function disable_dimensions:each_inside_cube/square {path:"$(path)"}
$execute positioned ~ ~-1 ~ run function disable_dimensions:each_inside_cube/square {path:"$(path)"}
$execute positioned ~ ~ ~ run function disable_dimensions:each_inside_cube/square {path:"$(path)"}
$execute positioned ~ ~1 ~ run function disable_dimensions:each_inside_cube/square {path:"$(path)"}
$execute positioned ~ ~2 ~ run function disable_dimensions:each_inside_cube/square {path:"$(path)"}
$execute positioned ~ ~3 ~ run function disable_dimensions:each_inside_cube/square {path:"$(path)"}
