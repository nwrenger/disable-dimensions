$data modify storage disable_dimensions:tmp c set value {name:"$(name)",disabled:false}
$function disable_dimensions:db/dimensions/conditions/upsert {id:"$(id)"}

function disable_dimensions:config
