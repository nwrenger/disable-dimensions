# Requires: macro call of {id}, expects tmp.disabled to be pre-initialized

# Iter through and check each entry
# Checks if run inside a dimension loop, if so use the current (d_cur) dimension entry fields
execute if data storage disable_dimensions:tmp d_cur run data modify storage disable_dimensions:tmp c_iterate set value {key:"c", storage:"tmp", array:"d_cur.conditions", body:"db/dimensions/conditions/check_entry", with:"c_cur"}
$execute unless data storage disable_dimensions:tmp d_cur run data modify storage disable_dimensions:tmp c_iterate set value {key:"c", storage:"config", array:"dimensions[{id:\"$(id)\"}].conditions", body:"db/dimensions/conditions/check_entry", with:"c_cur"}
function disable_dimensions:db/iterate/main with storage disable_dimensions:tmp c_iterate
