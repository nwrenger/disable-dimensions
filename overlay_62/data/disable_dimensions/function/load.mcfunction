# Setup storage defaults if they don't exist
execute unless data storage disable_dimensions:config {init:true,world_spawn:{},nether_message:{},end_message:{}} \
    run function disable_dimensions:config/defaults

# Init Message
tellraw @a [ \
    "\n", \
    {"text":"Disable Dimensions","bold":true,"color":"gold"}, \
    " by ", \
    { \
        "text":"nwrenger", \
        "italic":true, \
        "color":"#F223F2", \
        "clickEvent":{"action":"open_url","value":"https://nwrenger.dev"} \
    }, \
    " successfully loaded\n", \
    "\n", \
    {"text":"> Check my other projects on ","color":"gray"}, \
    { \
        "text":"https://nwrenger.dev", \
        "italic":true, \
        "color":"aqua", \
        "clickEvent":{"action":"open_url","value":"https://nwrenger.dev"} \
    }, \
    "\n", \
    {"text":"> If you have an issue with this pack, report it ","color":"gray"}, \
    { \
        "text":"here", \
        "italic":true, \
        "color":"aqua", \
        "clickEvent":{"action":"open_url","value":"https://github.com/nwrenger/disable-dimensions/issues"} \
    }, \
    "\n", \
    {"text":"> To configure this pack run ","color":"gray"}, \
    { \
        "text":"function disable_dimensions:config", \
        "italic":true, \
        "color":"aqua", \
        "clickEvent":{"action":"run_command","value":"/function disable_dimensions:config"} \
    }, \
    "\n" \
]
