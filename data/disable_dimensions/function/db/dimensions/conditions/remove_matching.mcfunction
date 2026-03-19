# Drop the current entry when its name matches the requested one
$execute if data storage disable_dimensions:tmp {c_cur:{name:"$(name)"}} run data modify storage disable_dimensions:tmp c_keep set value 0b
