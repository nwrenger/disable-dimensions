# Dimension entry display
$tellraw @s ["", \
  {"text":"▸ ", "color":"dark_gray"}, \
  {"color":"#d414e5", "text":"$(name)"}, \
  {"color":"dark_gray", "text":" ($(id))"}, \
  {"text":"  ", "color":"white"}, \
  { \
    "color":"red", "bold":true, "text":"[Remove]", \
    "clickEvent":{"action":"run_command", "value":"/function disable_dimensions:config/dimension/remove {id:\"$(id)\"}"}, \
    "hoverEvent":{"action":"show_text", "value":[{"color":"red", "text":"Remove this entry"}]} \
  } \
]

# Status and toggle button
$execute if data storage disable_dimensions:tmp {d_cur:{disabled:false}} \
    run tellraw @s ["", \
        {"text":"  "}, \
        {"color":"gray","text":"Status:"}, \
        {"text":" "}, \
        { \
            "color":"green", \
            "text":"☑", \
            "hoverEvent":{ \
                "action":"show_text", \
                "value":[ \
                    {"text":"Entering "}, \
                    {"color":"#d414e5","text":"$(name) "}, \
                    {"text":"is "}, \
                    {"color":"gold","text":"now "}, \
                    {"color":"green","text":"enabled"} \
                ] \
            } \
        }, \
        {"text":"  "}, \
        { \
            "color":"gold", \
            "bold":true, \
            "text":"[Toggle]", \
            "clickEvent":{ \
                "action":"run_command", \
                "value":"/function disable_dimensions:config/dimension/disable {id:\"$(id)\"}" \
            }, \
            "hoverEvent":{ \
                "action":"show_text", \
                "value":[{"color":"gold","text":"Click to toggle"}] \
            } \
        } \
    ]

$execute if data storage disable_dimensions:tmp {d_cur:{disabled:true}} \
    run tellraw @s ["", \
        {"text":"  "}, \
        {"color":"gray","text":"Status:"}, \
        {"text":" "}, \
        { \
            "color":"red", \
            "text":"☒", \
            "hoverEvent":{ \
                "action":"show_text", \
                "value":[ \
                    {"text":"Entering "}, \
                    {"color":"#d414e5","text":"$(name) "}, \
                    {"text":"is "}, \
                    {"color":"gold","text":"now "}, \
                    {"color":"red","text":"disabled"} \
                ] \
            } \
        }, \
        {"text":"  "}, \
        { \
            "color":"gold", \
            "bold":true, \
            "text":"[Toggle]", \
            "clickEvent":{ \
                "action":"run_command", \
                "value":"/function disable_dimensions:config/dimension/enable {id:\"$(id)\"}" \
            }, \
            "hoverEvent":{ \
                "action":"show_text", \
                "value":[{"color":"gold","text":"Click to toggle"}] \
            } \
        } \
    ]

$tellraw @s ["", \
  {"text":"  Message: ", "color":"gray"}, \
  {"color":"dark_gray", "text":"\""}, \
  {"color":"$(message_color)", "text":"$(message_text)"}, \
  {"color":"dark_gray", "text":"\""}, \
  {"text":"  ", "color":"white"}, \
  { \
    "color":"gold", "bold":true, "text":"[Edit]", \
    "clickEvent":{"action":"suggest_command", "value":"/function disable_dimensions:config/dimension/message {id:\"$(id)\",message_color:\"$(message_color)\", message_text:\"$(message_text)\"}"}, \
    "hoverEvent":{"action":"show_text", "value":[{"color":"gold","text":"Edit message text/color"}]} \
  } \
]

# Conditions list header + inline action
$tellraw @s ["", \
    {"text":"  Conditions:","color":"gray"}, \
    {"text":"  "}, \
    { \
        "color":"green", \
        "bold":true, \
        "text":"[Add]", \
        "clickEvent":{ \
            "action":"suggest_command", \
            "value":"/function disable_dimensions:config/dimension/condition/add {id:\"$(id)\",name:\"\",type:\"\",value:\"\", disabled:\"false\"}" \
        }, \
        "hoverEvent":{ \
            "action":"show_text", \
            "value":[{"color":"green","text":"Add a new condition entry"}] \
        } \
    } \
]

# Conditions entries
$function disable_dimensions:db/dimensions/conditions/config {id:"$(id)"}

# Spacing
tellraw @s ""
