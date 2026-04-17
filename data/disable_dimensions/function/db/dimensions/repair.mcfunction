# Rotate through configured dimensions and patch safe omissions, creates load_reset if a reset is needed
data modify storage disable_dimensions:tmp d_iterate set value {key:"d", storage:"config", array:"dimensions", body:"db/dimensions/repair_entry", with:"d_cur"}
function disable_dimensions:db/iterate/main with storage disable_dimensions:tmp d_iterate
