tellraw @a [ \
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
    {"translate": "disable_dimensions.config.repair.title", "fallback": "Config Updated", "color": "yellow"}, \
    "\n", \
    "\n", \
    {"translate": "disable_dimensions.config.repair.description", "fallback": "Added missing default config fields for this version.", "color": "gray"}, \
    "\n" \
]
