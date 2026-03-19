# Requires: macro call of {id}

# Current dimension id
$data modify storage disable_dimensions:tmp dimension_id set value {id:"$(id)"}

# Conditions config
# Checks if run inside a dimension loop, if so use the current (d_cur) dimension entry fields
execute if data storage disable_dimensions:tmp d_cur run data modify storage disable_dimensions:tmp c_iterate set value {key:"c", storage:"tmp", array:"d_cur.conditions", body:"db/dimensions/conditions/config_id", with:"c_cur"}
$execute unless data storage disable_dimensions:tmp d_cur run data modify storage disable_dimensions:tmp c_iterate set value {key:"c", storage:"config", array:"dimensions[{id:\"$(id)\"}].conditions", body:"db/dimensions/conditions/config_id", with:"c_cur"}
function disable_dimensions:db/iterate/main with storage disable_dimensions:tmp c_iterate

# Clear id
data remove storage disable_dimensions:tmp dimension_id
