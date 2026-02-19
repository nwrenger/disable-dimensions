# Stop when sentinel reaches front
execute if data storage disable_dimensions:config dimensions[0].__sentinel run return fail

# Pop front into tmp.cur
data modify storage disable_dimensions:tmp cur set from storage disable_dimensions:config dimensions[0]
data remove storage disable_dimensions:config dimensions[0]

# Compare cur.id with tmp.d.id
$execute if data storage disable_dimensions:tmp {found:0b} if data storage disable_dimensions:tmp {cur:{id:"$(id)"}} run function disable_dimensions:dimensions/_upsert_replace

# Push (possibly updated) cur back to end
data modify storage disable_dimensions:config dimensions append from storage disable_dimensions:tmp cur

# Continue rotating
function disable_dimensions:dimensions/_upsert_loop with storage disable_dimensions:tmp d
