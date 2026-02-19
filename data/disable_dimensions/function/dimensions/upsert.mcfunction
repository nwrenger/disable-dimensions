# Requires: tmp.d = {name,id,type,disabled,message}, clears it

# Ensure list exists
execute unless data storage disable_dimensions:config dimensions run data modify storage disable_dimensions:config dimensions set value []

# found flag (byte)
data modify storage disable_dimensions:tmp found set value 0b

# Append sentinel record
data modify storage disable_dimensions:config dimensions append value {__sentinel:1b}

# Rotate-scan and update if match
function disable_dimensions:dimensions/_upsert_loop with storage disable_dimensions:tmp d

# If not found, append new record
execute if data storage disable_dimensions:tmp {found:0b} run data modify storage disable_dimensions:config dimensions append from storage disable_dimensions:tmp d

# Remove sentinel at front
data remove storage disable_dimensions:config dimensions[0]

# Clear tmp
data remove storage disable_dimensions:tmp cur
data remove storage disable_dimensions:tmp d
data remove storage disable_dimensions:tmp found
