$data modify storage disable_dimensions:tmp d set value {id:"$(id)",disabled:false}
function disable_dimensions:dimensions/upsert

function disable_dimensions:config
