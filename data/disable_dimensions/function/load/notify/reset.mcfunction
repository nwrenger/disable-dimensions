tellraw @a [ \
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
    {translate: "disable_dimensions.config.reset.title", fallback: "Config Reset", color: "red"}, \
    "\n", \
    "\n", \
    {translate: "disable_dimensions.config.reset.description", fallback: "Config was reset to defaults because it was non-existant, empty, or incompatible with this version.", color: "gray"}, \
    "\n" \
]
