# Requires: tmp.c_query.name, clears it and macro call of {id}
# Removes the array entry

# Iter through and remove entry
$data modify storage disable_dimensions:tmp c_iterate set value {key:"c", storage:"config", array:"dimensions[{id:\"$(id)\"}].conditions", body:"db/dimensions/conditions/remove_matching", with:"c_query"}
function disable_dimensions:db/iterate/main with storage disable_dimensions:tmp c_iterate

# Clear tmp
data remove storage disable_dimensions:tmp c_query
