# Add dimension id
data modify storage disable_dimensions:tmp c_cur merge from storage disable_dimensions:tmp dimension_id
function disable_dimensions:db/dimensions/conditions/config_display with storage disable_dimensions:tmp c_cur
