# Handles teleport + messaging for valid bed respawns
function disable_dimensions:teleport/apply_area
execute run function disable_dimensions:fx/intermediary with storage disable_dimensions:config end_message
