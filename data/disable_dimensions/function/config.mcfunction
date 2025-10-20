tellraw @s "---"

tellraw @s ["",{"text":"Disable Dimensions","color":"gold"},{"text":" by "},{"text":"nwrenger","color":"#F223F2","click_event":{"action":"open_url","url":"https://nwrenger.dev"}}," - Config\n"]

execute if data storage disable_dimensions:config {nether:true} run tellraw @s ["",{color:"#d414e5",text:"Nether Portals: "},{color:"green",text:"☑",click_event:{action:"run_command",command:"function disable_dimensions:config/disable_nether"},hover_event:{action:"show_text",value:["",{color:"dark_purple",text:"Nether Portals "},{color:"white",text:"are "},{color:"gold",text:"now "},{color:"green",text:"enabled"}]}}]
execute if data storage disable_dimensions:config {nether:false} run tellraw @s ["",{color:"#d414e5",text:"Nether Portals: "},{color:"red",text:"☒",click_event:{action:"run_command",command:"function disable_dimensions:config/enable_nether"},hover_event:{action:"show_text",value:["",{color:"dark_purple",text:"Nether Portals "},{color:"white",text:"are "},{color:"gold",text:"now "},{color:"red",text:"disabled"}]}}]

execute if data storage disable_dimensions:config {end:true} run tellraw @s ["",{color:"#0beaaf",text:"End Portals: "},{color:"green",text:"☑",click_event:{action:"run_command",command:"function disable_dimensions:config/disable_end"},hover_event:{action:"show_text",value:["",{color:"dark_aqua",text:"End Portals "},{color:"white",text:"are "},{color:"gold",text:"now "},{color:"green",text:"enabled"}]}}]
execute if data storage disable_dimensions:config {end:false} run tellraw @s ["",{color:"#0beaaf",text:"End Portals: "},{color:"red",text:"☒",click_event:{action:"run_command",command:"function disable_dimensions:config/enable_end"},hover_event:{action:"show_text",value:["",{color:"dark_aqua",text:"End Portals "},{color:"white",text:"are "},{color:"gold",text:"now "},{color:"red",text:"disabled"}]}}]

tellraw @s "---"
