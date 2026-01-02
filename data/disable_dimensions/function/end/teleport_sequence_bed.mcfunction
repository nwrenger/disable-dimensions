# Handles teleport + messaging
function disable_dimensions:teleport/apply_area
execute run function disable_dimensions:fx/arrival with storage disable_dimensions:config end_message
