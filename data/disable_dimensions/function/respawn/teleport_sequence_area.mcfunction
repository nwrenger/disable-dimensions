# Handles teleport + messaging for valid respawn points
function disable_dimensions:teleport/apply_area
execute run function disable_dimensions:fx/arrival with storage disable_dimensions:tmp cur
