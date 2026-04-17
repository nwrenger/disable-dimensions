# Header
tellraw @s [ \
    "\n", \
    { \
        translate: "disable_dimensions.title_by_author", \
        fallback: "%1$s by %2$s", \
        with: [ \
            {text: "Disable Dimensions", bold: true, color: "gold"}, \
            { \
                text: "nwrenger", \
                italic: true, \
                color: "#F223F2", \
                click_event: {action: "open_url", url: "https://nwrenger.dev"} \
            } \
        ] \
    }, \
    " - ", \
    {translate: "disable_dimensions.config.title", fallback:"Config"}, \
    "\n" \
]

# Dimension config
function disable_dimensions:db/dimensions/config

# Footer actions
tellraw @s [ \
    "  ", \
    { \
        color: "green", \
        bold: true, \
        text: "[", \
        extra: [{translate: "disable_dimensions.action.add", fallback:"Add" }, "]"], \
        click_event: {action: "suggest_command", command: "/function disable_dimensions:config/dimension/add {name:\"\",id:\"\",type:\"\",message_color:\"\", message_text:\"\"}"}, \
        hover_event: {action: "show_text", value: [{color: "green", translate: "disable_dimensions.config.hover.add_dimension", fallback: "Add a new dimension entry"}]} \
    }, \
    "  ", \
    { \
        color: "red", \
        bold: true, \
        text: "[", \
        extra: [{translate: "disable_dimensions.action.reset", fallback: "Reset"}, "]"], \
        click_event: {action: "run_command", command: "function disable_dimensions:config/dimension/reset"}, \
        hover_event: {action: "show_text", value: [{color:"red", translate: "disable_dimensions.config.hover.reset_dimensions", fallback: "Reset dimension entries to defaults"}]} \
    }, \
    "\n" \
]

# World spawn config
function disable_dimensions:config/world_spawn/display with storage disable_dimensions:config world_spawn
