# Config entry display
$tellraw @s ["", \
  {"text":"    ↳ ", "color":"dark_gray"}, \
  {"color":"dark_aqua", "text":"$(name)"}, \
  {"text":"  ", "color":"white"}, \
  { \
    "color":"red", "bold":true, "text":"[Remove]", \
    "clickEvent":{"action":"run_command", "value":"/function disable_dimensions:config/dimension/condition/remove {id:\"$(id)\", name:\"$(name)\"}"}, \
    "hoverEvent":{"action":"show_text", "value":[{"color":"red", "text":"Remove this condition"}]} \
  } \
]

# Status and toggle button
$execute if data storage disable_dimensions:tmp {c_cur:{disabled:false}} \
    run tellraw @s ["", \
        {"text":"      "}, \
        {"color":"gray","text":"Changed Status:"}, \
        {"text":" "}, \
        { \
            "color":"green", \
            "text":"☑", \
            "hoverEvent":{ \
                "action":"show_text", \
                "value":[ \
                    {"text":"Entering "}, \
                    {"color":"gold","text":"following this condition "}, \
                    {"text":"will be "}, \
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
                "value":"/function disable_dimensions:config/dimension/condition/disable {id:\"$(id)\", name:\"$(name)\"}" \
            }, \
            "hoverEvent":{ \
                "action":"show_text", \
                "value":[{"color":"gold","text":"Click to toggle"}] \
            } \
        } \
    ]

$execute if data storage disable_dimensions:tmp {c_cur:{disabled:true}} \
    run tellraw @s ["", \
        {"text":"      "}, \
        {"color":"gray","text":"Changed Status:"}, \
        {"text":" "}, \
        { \
            "color":"red", \
            "text":"☒", \
            "hoverEvent":{ \
                "action":"show_text", \
                "value":[ \
                    {"text":"Entering "}, \
                    {"color":"gold","text":"following this condition "}, \
                    {"text":"will be "}, \
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
                "value":"/function disable_dimensions:config/dimension/condition/enable {id:\"$(id)\", name:\"$(name)\"}" \
            }, \
            "hoverEvent":{ \
                "action":"show_text", \
                "value":[{"color":"gold","text":"Click to toggle"}] \
            } \
        } \
    ]

$tellraw @s ["", \
  {"text":"      Trigger: ", "color":"gray"}, \
  {"color":"dark_gray", "text":"\""}, \
  {"color":"white", "text":"$(value)"}, \
  {"color":"dark_gray", "text":"\""}, \
  {"text":" ", "color":"white"}, \
  {"color":"dark_gray", "text":"("}, \
  {"color":"dark_green", "text":"$(type)"}, \
  {"color":"dark_gray", "text":")"}, \
  {"text":"  ", "color":"white"}, \
  { \
    "color":"gold", "bold":true, "text":"[Edit]", \
    "clickEvent":{"action":"suggest_command", "value":"/function disable_dimensions:config/dimension/condition/edit {id:\"$(id)\", name:\"$(name)\", type:\"$(type)\", value:\"$(value)\"}"}, \
    "hoverEvent":{"action":"show_text", "value":[{"color":"gold","text":"Edit trigger"}]} \
  } \
]
