# Iter through and display entries
data modify storage disable_dimensions:tmp d_iterate set value {key:"d", storage:"config", array:"dimensions", body:"db/dimensions/config_display", with:"d_cur"}
function disable_dimensions:db/iterate/main with storage disable_dimensions:tmp d_iterate
