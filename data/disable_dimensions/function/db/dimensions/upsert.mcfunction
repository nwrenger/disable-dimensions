# Requires: tmp.d = {name,id,type,disabled,message}, clears it

# found flag (byte)
data modify storage disable_dimensions:tmp found set value 0b

# Iter through and update entry
data modify storage disable_dimensions:tmp d_iterate set value {key:"d", storage:"config", array:"dimensions", body:"db/dimensions/upsert_check", with:"d"}
function disable_dimensions:db/iterate/main with storage disable_dimensions:tmp d_iterate

# If not found, append new record
execute if data storage disable_dimensions:tmp {found:0b} run data modify storage disable_dimensions:config dimensions append from storage disable_dimensions:tmp d

# Clear tmp
data remove storage disable_dimensions:tmp d
data remove storage disable_dimensions:tmp found
