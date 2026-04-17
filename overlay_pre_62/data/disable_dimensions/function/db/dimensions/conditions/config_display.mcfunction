# Config entry display
$tellraw @s [ \
    "    ", \
    {"text": "↳ ", "color": "dark_gray"}, \
    {"color": "dark_aqua", "text": "$(name)"}, \
    "  ", \
    { \
        "color": "red", \
        "bold": true, \
        "text": "[", \
        "extra": [{"translate": "disable_dimensions.action.remove", "fallback": "Remove"}, "]"], \
        "clickEvent": {"action": "run_command", "value": "/function disable_dimensions:config/dimension/condition/remove {id:\"$(id)\",name:\"$(name)\"}"}, \
        "hoverEvent": {"action": "show_text", "value": [{"color": "red", "translate": "disable_dimensions.config.condition.hover.remove", "fallback": "Remove this condition"}]} \
    } \
]

# Status and toggle button
$execute if data storage disable_dimensions:tmp {c_cur:{disabled:false}} \
    run tellraw @s [ \
        "      ", \
        {"color": "gray", "translate": "disable_dimensions.config.condition.status.label", "fallback": "Changed Status", "extra": [":"]}, \
        " ", \
        { \
            "color": "green", \
            "text": "☑", \
            "hoverEvent": { \
                "action": "show_text", \
                "value": [ \
                    { \
                        "translate": "disable_dimensions.config.condition.status.pattern", \
                        "fallback": "Entering %1$s will be %2$s", \
                        "with": [ \
                            {"translate": "disable_dimensions.config.condition.status.following", "fallback": "following this condition", "color": "gold"}, \
                            {"translate": "disable_dimensions.enabled", "fallback": "enabled", "color": "green"} \
                        ] \
                    } \
                ] \
            } \
        }, \
        "  ", \
        { \
            "color": "gold", \
            "bold": true, \
            "text": "[", \
            "extra": [{"translate": "disable_dimensions.action.toggle", "fallback": "Toggle"}, "]"], \
            "clickEvent": { \
                "action": "run_command", \
                "value": "/function disable_dimensions:config/dimension/condition/disable {id:\"$(id)\",name:\"$(name)\"}" \
            }, \
            "hoverEvent": { \
                "action": "show_text", \
                "value": [{"color": "gold", "translate": "disable_dimensions.action.toggle.hover", "fallback": "Click to toggle"}] \
            } \
        } \
    ]
$execute if data storage disable_dimensions:tmp {c_cur:{disabled:true}} \
    run tellraw @s [ \
        "      ", \
        {"color": "gray", "translate": "disable_dimensions.config.condition.status.label", "fallback": "Changed Status", "extra": [":"]}, \
        " ", \
        { \
            "color": "red", \
            "text": "☒", \
            "hoverEvent": { \
                "action": "show_text", \
                "value": [ \
                    { \
                        "translate": "disable_dimensions.config.condition.status.pattern", \
                        "fallback": "Entering %1$s will be %2$s", \
                        "with": [ \
                            {"translate": "disable_dimensions.config.condition.status.following", "fallback": "following this condition", "color": "gold"}, \
                            {"translate": "disable_dimensions.disabled", "fallback": "disabled", "color": "red"} \
                        ] \
                    } \
                ] \
            } \
        }, \
        "  ", \
        { \
            "color": "gold", \
            "bold": true, \
            "text": "[", \
            "extra": [{"translate": "disable_dimensions.action.toggle", "fallback": "Toggle"}, "]"], \
            "clickEvent": { \
                "action": "run_command", \
                "value": "/function disable_dimensions:config/dimension/condition/enable {id:\"$(id)\",name:\"$(name)\"}" \
            }, \
            "hoverEvent": { \
                "action": "show_text", \
                "value": [{"color": "gold", "translate": "disable_dimensions.action.toggle.hover", "fallback": "Click to toggle"}] \
            } \
        } \
    ]

$tellraw @s [ \
    "      ", \
    {"translate": "disable_dimensions.config.condition.trigger.label", "fallback": "Trigger", "color": "gray", "extra": [":"]}, \
    " ", \
    {"color": "dark_gray", "text": "\""}, \
    "$(value)", \
    {"color": "dark_gray", "text": "\""}, \
    " ", \
    {"color": "dark_gray", "text": "("}, \
    {"color": "dark_green", "text": "$(type)"}, \
    {"color": "dark_gray", "text": ")"}, \
    "  ", \
    { \
        "color": "gold", \
        "bold": true, \
        "text": "[", \
        "extra": [{"translate": "disable_dimensions.action.edit", "fallback": "Edit"}, "]"], \
        "clickEvent": {"action": "suggest_command", "value": "/function disable_dimensions:config/dimension/condition/edit {id:\"$(id)\",name:\"$(name)\",type:\"$(type)\",value:\"$(value)\"}"}, \
        "hoverEvent": {"action": "show_text", "value": [{"color": "gold", "translate": "disable_dimensions.config.condition.hover.edit", "fallback": "Edit trigger"}]} \
    } \
]
