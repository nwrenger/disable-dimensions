$data modify storage disable_dimensions:tmp d set value {id:"$(id)",disabled:true}
function disable_dimensions:db/dimensions/upsert

function disable_dimensions:config
