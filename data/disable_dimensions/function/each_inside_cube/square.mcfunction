# Scans z = -3..+3
$execute positioned ~ ~ ~-3 run function disable_dimensions:each_inside_cube/row {path:"$(path)"}
$execute positioned ~ ~ ~-2 run function disable_dimensions:each_inside_cube/row {path:"$(path)"}
$execute positioned ~ ~ ~-1 run function disable_dimensions:each_inside_cube/row {path:"$(path)"}
$execute positioned ~ ~ ~ run function disable_dimensions:each_inside_cube/row {path:"$(path)"}
$execute positioned ~ ~ ~1 run function disable_dimensions:each_inside_cube/row {path:"$(path)"}
$execute positioned ~ ~ ~2 run function disable_dimensions:each_inside_cube/row {path:"$(path)"}
$execute positioned ~ ~ ~3 run function disable_dimensions:each_inside_cube/row {path:"$(path)"}
