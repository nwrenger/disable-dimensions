# Check the current record with queried id
$execute if data storage disable_dimensions:tmp {found:0b} if data storage disable_dimensions:tmp {d_cur:{id:"$(id)"}} run function disable_dimensions:db/dimensions/upsert_replace
