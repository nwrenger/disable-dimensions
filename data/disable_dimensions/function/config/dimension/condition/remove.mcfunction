$data modify storage disable_dimensions:tmp c_query set value {name:"$(name)"}
$function disable_dimensions:db/dimensions/conditions/remove {id:"$(id)"}

function disable_dimensions:config
