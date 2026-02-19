# Header
tellraw @s [ \
    "\n", \
    {text:"Disable Dimensions",bold:true,color:"gold"}, \
    " by ", \
    {text:"nwrenger",italic:true,color:"#F223F2",click_event:{action:"open_url",url:"https://nwrenger.dev"}}, \
    " - Config\n" \
]

# Dimension config
function disable_dimensions:dimensions/config

# Footer actions
tellraw @s [ \
  "  ", \
  { \
    "color":"green","bold":true,"text":"[Add]", \
    "click_event":{"action":"suggest_command","command":"/function disable_dimensions:config/dimension/add {name:\"\",id:\"\",type:\"\",message_color:\"\", message_text:\"\"}"}, \
    "hover_event":{"action":"show_text","value":[{"color":"green","text":"Add a new dimension entry"}]} \
  }, \
  {"text":"  ","color":"white"}, \
  { \
    "color":"red","bold":true,"text":"[Reset]", \
    "click_event":{"action":"run_command","command":"function disable_dimensions:config/dimension/reset"}, \
    "hover_event":{"action":"show_text","value":[{"color":"red","text":"Reset dimension entries to defaults"}]} \
  }, \
  "\n" \
]

# World spawn config
tellraw @s [ \
    {color:"yellow",text:"World Spawn: "}, \
    {color:"aqua",nbt:"world_spawn.x",storage:"disable_dimensions:config"}, \
    " ", \
    {color:"aqua",nbt:"world_spawn.y",storage:"disable_dimensions:config"}, \
    " ", \
    {color:"aqua",nbt:"world_spawn.z",storage:"disable_dimensions:config"}, \
    " ", \
    { \
        color:"gold", \
        bold:true, \
        text:"[Replace]", \
        click_event:{ \
            action:"run_command",command:"function disable_dimensions:config/world_spawn/set" \
        }, \
        hover_event:{ \
            action:"show_text",value:[{color:"gold",text:"Click to replace with your current position"}] \
        } \
    }, \
    "\n" \
]
