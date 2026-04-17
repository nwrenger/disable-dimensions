# Dimension entry display
$tellraw @s [ \
    {text:"▸ ", color:"dark_gray"}, \
    {color:"#d414e5", text:"$(name)"}, \
    {color:"dark_gray", text:" ($(id))"}, \
    "  ", \
    { \
        color: "red", \
        bold: true, \
        text: "[", \
        extra: [{translate: "disable_dimensions.action.remove", fallback: "Remove"}, "]"], \
        click_event: {action: "run_command", command: "/function disable_dimensions:config/dimension/remove {id:\"$(id)\"}"}, \
        hover_event: {action: "show_text", value: [{color: "red", translate: "disable_dimensions.config.dimension.hover.remove", fallback: "Remove this entry"}]} \
    } \
]

# Status and toggle button
$execute if data storage disable_dimensions:tmp {d_cur:{disabled:false}} \
    run tellraw @s [ \
        "  ", \
        {color: "gray", translate: "disable_dimensions.config.dimension.status.label", fallback: "Status", extra: [ ":" ]}, \
        " ", \
        { \
            color:"green", \
            text:"☑", \
            hover_event: { \
                action: "show_text", \
                value: [ \
                    { \
                        translate: "disable_dimensions.config.dimension.status.pattern", \
                        fallback: "Entering %1$s is %2$s %3$s", \
                        with: [ \
                            {text: "$(name)", color: "#d414e5"}, \
                            {translate: "disable_dimensions.status.now", fallback: "now", color: "gold"}, \
                            {translate: "disable_dimensions.enabled", fallback: "enabled", color: "green"} \
                        ] \
                    } \
                ] \
            } \
        }, \
        "  ", \
        { \
            color: "gold", \
            bold: true, \
            text: "[", \
            extra: [{translate:"disable_dimensions.action.toggle", fallback:"Toggle"}, "]"], \
            click_event: { \
                action: "run_command", \
                command: "/function disable_dimensions:config/dimension/disable {id:\"$(id)\"}" \
            }, \
            hover_event: { \
                action: "show_text", \
                value: [{color: "gold", translate: "disable_dimensions.action.toggle.hover", fallback: "Click to toggle"}] \
            } \
        } \
    ]
$execute if data storage disable_dimensions:tmp {d_cur:{disabled:true}} \
    run tellraw @s [ \
        "  ", \
        {color: "gray", translate: "disable_dimensions.config.dimension.status.label", fallback: "Status", extra: [ ":" ]}, \
        " ", \
        { \
            color:"red", \
            text:"☒", \
            hover_event: { \
                action: "show_text", \
                value: [ \
                    { \
                        translate: "disable_dimensions.config.dimension.status.pattern", \
                        fallback: "Entering %1$s is %2$s %3$s", \
                        with: [ \
                            {text: "$(name)", color: "#d414e5"}, \
                            {translate: "disable_dimensions.status.now", fallback: "now", color: "gold"}, \
                            {translate: "disable_dimensions.disabled", fallback: "disabled", color: "red"} \
                        ] \
                    } \
                ] \
            } \
        }, \
        "  ", \
        { \
            color: "gold", \
            bold: true, \
            text: "[", \
            extra: [{translate:"disable_dimensions.action.toggle", fallback:"Toggle"}, "]"], \
            click_event: { \
                action: "run_command", \
                command: "/function disable_dimensions:config/dimension/enable {id:\"$(id)\"}" \
            }, \
            hover_event: { \
                action: "show_text", \
                value: [{color: "gold", translate: "disable_dimensions.action.toggle.hover", fallback: "Click to toggle"}] \
            } \
        } \
    ]

$tellraw @s [ \
    "  ", \
    {color: "gray", translate: "disable_dimensions.config.dimension.message.label", fallback: "Message", extra:[":"]}, \
    " ", \
    {color: "dark_gray", text: "\""}, \
    {color: "$(message_color)", text: "$(message_text)"}, \
    {color: "dark_gray", text: "\""}, \
    "  ", \
    { \
        color: "gold", \
        bold: true, \
        text: "[", \
        extra: [{translate:"disable_dimensions.action.edit", fallback: "Edit"}, "]"], \
        click_event: {action: "suggest_command", command: "/function disable_dimensions:config/dimension/message {id:\"$(id)\",message_color:\"$(message_color)\", message_text:\"$(message_text)\"}"}, \
        hover_event: {action: "show_text", value:[{color: "gold", translate: "disable_dimensions.config.dimension.message.hover.edit", fallback: "Edit message text/color"}]} \
    } \
]

# Conditions list header + inline action
$tellraw @s [ \
    "  ", \
    {color: "gray", translate: "disable_dimensions.config.dimension.conditions.label", fallback: "Conditions", extra: [":"]}, \
    "  ", \
    { \
        color: "green", \
        bold: true, \
        text: "[", \
        extra: [{translate: "disable_dimensions.action.add", fallback: "Add"}, "]"], \
        click_event: { \
            action: "suggest_command", \
            command: "/function disable_dimensions:config/dimension/condition/add {id:\"$(id)\",name:\"\",type:\"\",value:\"\", disabled:\"false\"}" \
        }, \
        hover_event: { \
            action: "show_text", \
            value: [{color: "green", translate: "disable_dimensions.config.dimension.conditions.hover.add", fallback: "Add a new condition entry"}] \
        } \
    } \
]

# Conditions entries
$function disable_dimensions:db/dimensions/conditions/config {id:"$(id)"}

# Spacing
tellraw @s ""
