tellraw @s [ \
    "\n", \
    {text:"Disable Dimensions",bold:true,color:"gold"}, \
    " by ", \
    {text:"nwrenger",italic:true,color:"#F223F2",click_event:{action:"open_url",url:"https://nwrenger.dev"}}, \
    " - Config\n" \
]

tellraw @s [ \
    {color:"#d414e5",text:"The Nether"}, \
]

execute if data storage disable_dimensions:config {nether:true} \
    run tellraw @s [ \
        {color:"gray",text:"> Status: "}, \
        { \
            color:"green", \
            text:"☑", \
            hover_event:{ \
                action:"show_text", \
                value:[ \
                    "Entering ", \
                    {color:"dark_purple",text:"The Nether "}, \
                    "is ", \
                    {color:"gold",text:"now "}, \
                    {color:"green",text:"enabled"} \
                ] \
            } \
        }, \
        " ", \
        { \
            color:"gold", \
            bold:true, \
            text:"[Toggle]", \
            click_event:{ \
                action:"run_command", \
                command:"function disable_dimensions:config/nether/disable" \
            },\
            hover_event:{ \
                action:"show_text", \
                value:[{color:"gold",text:"Click to toggle"}] \
            } \
        } \
    ]
execute if data storage disable_dimensions:config {nether:false} \
    run tellraw @s [ \
        {color:"gray",text:"> Status: "}, \
        { \
            color:"red", \
            text:"☒", \
            hover_event:{ \
                action:"show_text", \
                value:[ \
                    "Entering ", \
                    {color:"dark_purple",text:"The Nether "}, \
                    "is ", \
                    {color:"gold",text:"now "}, \
                    {color:"red",text:"disabled"} \
                ] \
            } \
        }, \
        " ", \
        { \
            color:"gold", \
            bold:true, \
            text:"[Toggle]", \
            click_event:{ \
                action:"run_command", \
                command:"function disable_dimensions:config/nether/enable" \
            }, \
            hover_event:{ \
                action:"show_text", \
                value:[{color:"gold",text:"Click to toggle"}] \
            } \
        } \
    ]

tellraw @s [ \
    {color:"gray",text:"> Message: "}, \
    { \
        interpret:true, \
        nbt:"nether_message.component", \
        storage:"disable_dimensions:config" \
    }, \
    " ", \
    { \
        color:"gold", \
        bold:true, \
        text:"[Edit]", \
        click_event:{ \
            action:"suggest_command", \
            command:"/function disable_dimensions:config/nether/message {color:\"dark_red\", text:\"A sinister presence denies your passage...\"}" \
        }, \
        hover_event:{ \
            action:"show_text", \
            value:[{color:"gold",text:"Click to edit"}] \
        } \
    } \
]

tellraw @s [ \
    "\n", \
    {color:"#0beaaf",text:"The End"} \
]

execute if data storage disable_dimensions:config {end:true} \
    run tellraw @s [ \
        {color:"gray",text:"> Status: "}, \
        { \
            color:"green", \
            text:"☑", \
            hover_event:{ \
                action:"show_text", \
                value:[ \
                    "Entering ", \
                    {color:"#0beaaf",text:"The End "}, \
                    "is ", \
                    {color:"gold",text:"now "}, \
                    {color:"green",text:"enabled"} \
                ] \
            } \
        }, \
        " ", \
        { \
            color:"gold", \
            bold:true, \
            text:"[Toggle]", \
            click_event:{ \
                action:"run_command", \
                command:"function disable_dimensions:config/end/disable" \
            }, \
            hover_event:{ \
                action:"show_text", \
                value:[{color:"gold",text:"Click to toggle"}] \
            } \
        } \
    ]
execute if data storage disable_dimensions:config {end:false} \
    run tellraw @s [ \
        {color:"gray",text:"> Status: "}, \
        { \
            color:"red", \
            text:"☒", \
            hover_event:{ \
                action:"show_text", \
                value:[ \
                    "Entering ", \
                    {color:"#0beaaf",text:"The End "}, \
                    "is ", \
                    {color:"gold",text:"now "}, \
                    {color:"red",text:"disabled"} \
                ] \
            } \
        }, \
        " ", \
        { \
            color:"gold", \
            bold:true, \
            text:"[Toggle]", \
            click_event:{ \
                action:"run_command", \
                command:"function disable_dimensions:config/end/enable" \
            }, \
            hover_event:{ \
                action:"show_text", \
                value:[{color:"gold",text:"Click to toggle"}] \
            } \
        } \
    ]

tellraw @s [ \
    {color:"gray",text:"> Message: "}, \
    { \
        interpret:true, \
        nbt:"end_message.component", \
        storage:"disable_dimensions:config" \
    }, \
    " ", \
    { \
        color:"gold", \
        bold:true, \
        text:"[Edit]", \
        click_event:{ \
            action:"suggest_command", \
            command:"/function disable_dimensions:config/end/message {color:\"light_purple\", text:\"The End rejects your presence...\"}" \
        }, \
        hover_event:{ \
            action:"show_text", \
            value:[{color:"gold",text:"Click to edit"}] \
        } \
    } \
]

tellraw @s [ \
    "\n", \
    {color:"yellow",text:"World Spawn: "}, \
    {color:"aqua",nbt:"world_spawn.x",storage:"disable_dimensions:config"}, \
    " ", \
    {color:"aqua",nbt:"world_spawn.y",storage:"disable_dimensions:config"}, \
    " ", \
    {color:"aqua",nbt:"world_spawn.z",storage:"disable_dimensions:config"}, \
    " ", \
    { \
        color:"gold", \
        bold:true, \
        text:"[Replace]", \
        click_event:{ \
            action:"run_command",command:"function disable_dimensions:config/world_spawn/set" \
        }, \
        hover_event:{ \
            action:"show_text",value:[{color:"gold",text:"Click to replace with your current position"}] \
        } \
    }, \
    "\n" \
]
