$tellraw @s [ \
    {"color": "yellow", "translate": "disable_dimensions.config.world_spawn.label", "fallback": "World Spawn", "extra": [":"]}, \
    "  ", \
    { \
        "color": "gold", \
        "bold": true, \
        "text": "[", \
        "extra": [{"translate":"disable_dimensions.action.replace", "fallback":"Replace"}, "]"], \
        "clickEvent": { \
            "action": "run_command", "value": "function disable_dimensions:config/world_spawn/set" \
        }, \
        "hoverEvent": { \
            "action": "show_text", "value": [{"color": "gold", "translate": "disable_dimensions.config.world_spawn.hover.replace", "fallback": "Click to replace with your current position and dimension"}] \
        } \
    }, \
    "\n", \
    "  ", \
    {"color": "aqua", "text": "$(x)"}, \
    " ", \
    {"color": "aqua", "text": "$(y)"}, \
    " ", \
    {"color": "aqua", "text": "$(z)"}, \
    " ", \
    {"color": "dark_gray", "text": "("}, \
    {"color": "dark_aqua", "text": "$(dimension)"}, \
    {"color": "dark_gray", "text": ")"}, \
    "\n" \
]
