# Check the current record with queried name
$execute if data storage disable_dimensions:tmp {found:0b} if data storage disable_dimensions:tmp {c_cur:{name:"$(name)"}} run function disable_dimensions:db/dimensions/conditions/upsert_replace
