# Dimension entry display
$tellraw @s [ \
  {text:"• ", color:"dark_gray"}, \
  {color:"#d414e5", text:"$(name)"}, \
  {text:" ", color:"white"}, \
  {color:"dark_gray", text:"($(id))"}, \
  {text:"  ", color:"white"}, \
  { \
    color:"red", bold:true, text:"[Remove]", \
    click_event:{action:"run_command", command:"/function disable_dimensions:config/dimension/remove {id:\"$(id)\"}"}, \
    hover_event:{action:"show_text", value:[{color:"red", text:"Remove this entry"}]} \
  } \
]

# Status and toggle button
$execute if data storage disable_dimensions:tmp {cur:{disabled:false}} \
    run tellraw @s [ \
        "  ", \
        {color:"gray",text:"Status:"}, \
        " ", \
        { \
            color:"green", \
            text:"☑", \
            hover_event:{ \
                action:"show_text", \
                value:[ \
                    "Entering ", \
                    {color:"#d414e5",text:"$(name) "}, \
                    "is ", \
                    {color:"gold",text:"now "}, \
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
                command:"/function disable_dimensions:config/dimension/disable {id:\"$(id)\"}" \
            },\
            hover_event:{ \
                action:"show_text", \
                value:[{color:"gold",text:"Click to toggle"}] \
            } \
        } \
    ]
$execute if data storage disable_dimensions:tmp {cur:{disabled:true}} \
    run tellraw @s [ \
        "  ", \
        {color:"gray",text:"Status:"}, \
        " ", \
        { \
            color:"red", \
            text:"☒", \
            hover_event:{ \
                action:"show_text", \
                value:[ \
                    "Entering ", \
                    {color:"#d414e5",text:"$(name) "}, \
                    "is ", \
                    {color:"gold",text:"now "}, \
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
                command:"/function disable_dimensions:config/dimension/enable {id:\"$(id)\"}" \
            }, \
            hover_event:{ \
                action:"show_text", \
                value:[{color:"gold",text:"Click to toggle"}] \
            } \
        } \
    ]

$tellraw @s [ \
  {text:"  ", color:"white"}, \
  {color:"gray", text:"Message: "}, \
  {color:"dark_gray", text:"\""}, \
  {color:"$(message_color)", text:"$(message_text)"}, \
  {color:"dark_gray", text:"\""}, \
  {text:"  ", color:"white"}, \
  { \
    color:"gold", bold:true, text:"[Edit]", \
    click_event:{action:"suggest_command", command:"/function disable_dimensions:config/dimension/message {id:\"$(id)\",message_color:\"$(message_color)\", message_text:\"$(message_text)\"}"}, \
    hover_event:{action:"show_text", value:[{color:"gold",text:"Edit message text/color"}]} \
  } \
]

tellraw @s ""
