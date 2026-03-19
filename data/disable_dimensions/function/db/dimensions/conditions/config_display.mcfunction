# Config entry display
$tellraw @s [ \
  {text:"    ↳ ", color:"dark_gray"}, \
  {color:"dark_aqua", text:"$(name)"}, \
  {text:"  ", color:"white"}, \
  { \
    color:"red", bold:true, text:"[Remove]", \
    click_event:{action:"run_command", command:"/function disable_dimensions:config/dimension/condition/remove {id:\"$(id)\", name:\"$(name)\"}"}, \
    hover_event:{action:"show_text", value:[{color:"red", text:"Remove this condition"}]} \
  } \
]

# Status and toggle button
$execute if data storage disable_dimensions:tmp {c_cur:{disabled:false}} \
    run tellraw @s [ \
        "      ", \
        {color:"gray",text:"Changed Status:"}, \
        " ", \
        { \
            color:"green", \
            text:"☑", \
            hover_event:{ \
                action:"show_text", \
                value:[ \
                    "Entering ", \
                    {color:"gold",text:"following this condition "}, \
                    "will be ", \
                    {color:"green",text:"enabled"} \
                ] \
            } \
        }, \
        "  ", \
        { \
            color:"gold", \
            bold:true, \
            text:"[Toggle]", \
            click_event:{ \
                action:"run_command", \
                command:"/function disable_dimensions:config/dimension/condition/disable {id:\"$(id)\", name:\"$(name)\"}" \
            },\
            hover_event:{ \
                action:"show_text", \
                value:[{color:"gold",text:"Click to toggle"}] \
            } \
        } \
    ]
$execute if data storage disable_dimensions:tmp {c_cur:{disabled:true}} \
    run tellraw @s [ \
        "      ", \
        {color:"gray",text:"Changed Status:"}, \
        " ", \
        { \
            color:"red", \
            text:"☒", \
            hover_event:{ \
                action:"show_text", \
                value:[ \
                    "Entering ", \
                    {color:"gold",text:"following this condition "}, \
                    "will be ", \
                    {color:"red",text:"disabled"} \
                ] \
            } \
        }, \
        "  ", \
        { \
            color:"gold", \
            bold:true, \
            text:"[Toggle]", \
            click_event:{ \
                action:"run_command", \
                command:"/function disable_dimensions:config/dimension/condition/enable {id:\"$(id)\", name:\"$(name)\"}" \
            }, \
            hover_event:{ \
                action:"show_text", \
                value:[{color:"gold",text:"Click to toggle"}] \
            } \
        } \
    ]

$tellraw @s [ \
  {text:"      Trigger: ", color:"gray"}, \
  {color:"dark_gray", text:"\""}, \
  {color:"white", text:"$(value)"}, \
  {color:"dark_gray", text:"\""}, \
  {text:" ", color:"white"}, \
  {color:"dark_gray", text:"("}, \
  {color:"dark_green", text:"$(type)"}, \
  {color:"dark_gray", text:")"}, \
  {text:"  ", color:"white"}, \
  { \
    color:"gold", bold:true, text:"[Edit]", \
    click_event:{action:"suggest_command", command:"/function disable_dimensions:config/dimension/condition/edit {id:\"$(id)\", name:\"$(name)\", type:\"$(type)\", value:\"$(value)\"}"}, \
    hover_event:{action:"show_text", value:[{color:"gold",text:"Edit trigger"}]} \
  } \
]
