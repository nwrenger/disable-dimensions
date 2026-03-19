# Requires: tmp.c = {name,type,value,disabled}, clears it and macro call of {id}

# found flag (byte)
data modify storage disable_dimensions:tmp found set value 0b

# Iter through and update entry
$data modify storage disable_dimensions:tmp c_iterate set value {key:"c", storage:"config", array:"dimensions[{id:\"$(id)\"}].conditions", body:"db/dimensions/conditions/upsert_check", with:"c"}
function disable_dimensions:db/iterate/main with storage disable_dimensions:tmp c_iterate

# If not found, append new record
$execute if data storage disable_dimensions:tmp {found:0b} run data modify storage disable_dimensions:config dimensions[{id:"$(id)"}].conditions append from storage disable_dimensions:tmp c

# Clear tmp
data remove storage disable_dimensions:tmp c
data remove storage disable_dimensions:tmp found
