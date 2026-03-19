$data modify storage disable_dimensions:tmp d set value {id:"$(id)",message_color:"$(message_color)",message_text:"$(message_text)"}
function disable_dimensions:db/dimensions/upsert

function disable_dimensions:config
