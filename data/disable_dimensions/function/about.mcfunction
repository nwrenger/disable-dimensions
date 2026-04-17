tellraw @s [ \
    "\n", \
    { \
        translate: "disable_dimensions.title_by_author", \
        fallback: "%1$s by %2$s", \
        with: [ \
            {text: "Disable Dimensions", bold:true, color:"gold"}, \
            { \
                text: "nwrenger", \
                italic: true, \
                color: "#F223F2", \
                click_event: {action: "open_url", url: "https://nwrenger.dev"} \
            } \
        ] \
    }, \
    "\n", \
    "\n", \
    {text: "▸ ", color:"dark_gray"}, \
    {translate: "disable_dimensions.about.other_projects", fallback: "Check out my other projects on", color: "gray"}, \
    " ", \
    { \
        text: "https://nwrenger.dev", \
        italic: true, \
        color: "aqua", \
        click_event: {action: "open_url", url: "https://nwrenger.dev"} \
    }, \
    "\n", \
    {text: "▸ ", color:"dark_gray"}, \
    {translate: "disable_dimensions.about.issue_prefix", fallback: "If you have an issue with this pack, report it", color: "gray"}, \
    " ", \
    { \
        translate: "disable_dimensions.about.issue_link", \
        fallback: "here", \
        italic: true, \
        color: "aqua", \
        click_event: {action: "open_url", url: "https://github.com/nwrenger/disable-dimensions/issues"} \
    }, \
    "\n", \
    {text: "▸ ", color: "dark_gray"}, \
    {translate: "disable_dimensions.about.config", fallback: "To configure this pack run",color:"gray"}, \
    " ", \
    { \
        text: "function disable_dimensions:config", \
        italic: true, \
        color: "aqua", \
        click_event: {action: "run_command", command: "function disable_dimensions:config"} \
    }, \
    "\n" \
]
