# Header
tellraw @s [ \
    "\n", \
    { \
        "translate": "disable_dimensions.title_by_author", \
        "fallback": "%1$s by %2$s", \
        "with": [ \
            {"text": "Disable Dimensions", "bold": true, "color": "gold"}, \
            { \
                "text": "nwrenger", \
                "italic": true, \
                "color": "#F223F2", \
                "clickEvent": {"action": "open_url", "value": "https://nwrenger.dev"} \
            } \
        ] \
    }, \
    " - ", \
    {"translate": "disable_dimensions.config.title", "fallback": "Config"}, \
    "\n" \
]

# Dimension config
function disable_dimensions:db/dimensions/config

# Footer actions
tellraw @s [ \
    "  ", \
    { \
        "color": "green", \
        "bold": true, \
        "text": "[", \
        "extra": [{"translate": "disable_dimensions.action.add", "fallback": "Add"}, "]"], \
        "clickEvent": {"action": "suggest_command", "value": "/function disable_dimensions:config/dimension/add {name:\"\",id:\"\",type:\"\",message_color:\"\",message_text:\"\"}"}, \
        "hoverEvent": {"action": "show_text", "value": [{"color": "green", "translate": "disable_dimensions.config.hover.add_dimension", "fallback": "Add a new dimension entry"}]} \
    }, \
    "  ", \
    { \
        "color": "red", \
        "bold": true, \
        "text": "[", \
        "extra": [{"translate": "disable_dimensions.action.reset", "fallback": "Reset"}, "]"], \
        "clickEvent": {"action": "run_command", "value": "function disable_dimensions:config/dimension/reset"}, \
        "hoverEvent": {"action": "show_text", "value": [{"color": "red", "translate": "disable_dimensions.config.hover.reset_dimensions", "fallback": "Reset dimension entries to defaults"}]} \
    }, \
    "\n" \
]

# World spawn config
function disable_dimensions:config_spawn with storage disable_dimensions:config world_spawn
