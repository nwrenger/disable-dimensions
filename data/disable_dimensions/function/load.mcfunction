# Setup storage defaults if they don't exist
execute unless data storage disable_dimensions:config {init:true,world_spawn:{}} \
    run function disable_dimensions:config/defaults

# Init Message
tellraw @a [ \
    "\n", \
    {text:"Disable Dimensions",bold:true,color:"gold"}, \
    {text:" by "}, \
    { \
        text:"nwrenger", \
        italic:true, \
        color:"#F223F2", \
        click_event:{action:"open_url",url:"https://nwrenger.dev"} \
    }, \
    " successfully loaded\n", \
    "\n", \
    {text:"> Check my other projects on ",color:"gray"}, \
    { \
        text:"https://nwrenger.dev", \
        italic:true, \
        color:"aqua", \
        click_event:{action:"open_url",url:"https://nwrenger.dev"} \
    }, \
    "\n", \
    {text:"> If you have an issue with this pack, report it ",color:"gray"}, \
    { \
        text:"here", \
        italic:true, \
        color:"aqua", \
        click_event:{action:"open_url",url:"https://github.com/nwrenger/disable-dimensions/issues"} \
    }, \
    "\n", \
    {text:"> To configure this pack run ",color:"gray"}, \
    { \
        text:"function disable_dimensions:config", \
        italic:true, \
        color:"aqua", \
        click_event:{action:"run_command","command":"function disable_dimensions:config"} \
    }, \
    "\n" \
]
