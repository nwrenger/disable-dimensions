$data modify storage disable_dimensions:tmp c set value {name:"$(name)",type:"$(type)",value:"$(value)"}
$function disable_dimensions:db/dimensions/conditions/upsert {id:"$(id)"}

function disable_dimensions:config
