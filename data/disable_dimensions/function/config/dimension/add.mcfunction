$data modify storage disable_dimensions:tmp d set value {name:"$(name)",id:"$(id)",type:"$(type)",disabled:true,message_color:"$(message_color)",message_text:"$(message_text)"}
function disable_dimensions:dimensions/upsert

function disable_dimensions:config
