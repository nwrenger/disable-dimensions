# Handles teleport + messaging when no valid bed exists
function disable_dimensions:teleport/apply
execute run function disable_dimensions:fx/intermediary with storage disable_dimensions:config end_message
