# Drop the current entry when its id matches the requested one
$execute if data storage disable_dimensions:tmp {d_cur:{id:"$(id)"}} run data modify storage disable_dimensions:tmp d_keep set value 0b
