# Requires: tmp.d_query.id, clears it
# Removes the array entry

# Iter through and remove entry
data modify storage disable_dimensions:tmp d_iterate set value {key:"d", storage:"config", array:"dimensions", body:"db/dimensions/remove_matching", with:"d_query"}
function disable_dimensions:db/iterate/main with storage disable_dimensions:tmp d_iterate

# Clear tmp
data remove storage disable_dimensions:tmp d_query
