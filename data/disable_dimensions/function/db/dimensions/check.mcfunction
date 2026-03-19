# Iter through and check each entry
data modify storage disable_dimensions:tmp d_iterate set value {key:"d", storage:"config", array:"dimensions", body:"db/dimensions/check_entry", with:"d_cur"}
function disable_dimensions:db/iterate/main with storage disable_dimensions:tmp d_iterate

# Clear tag
tag @s remove disable_dimensions_tp
