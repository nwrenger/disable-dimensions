# Header
tellraw @s [ \
    "\n", \
    {"text":"Disable Dimensions","bold":true,"color":"gold"}, \
    " by ", \
    {"text":"nwrenger","italic":true,"color":"#F223F2","clickEvent":{"action":"open_url","value":"https://nwrenger.dev"}}, \
    " - Config\n" \
]

# Dimension config
function disable_dimensions:dimensions/config

# Footer actions
tellraw @s [ \
  "  ", \
  { \
    "text":"[Add]","bold":true,"color":"green", \
    "clickEvent":{"action":"suggest_command","value":"/function disable_dimensions:config/dimension/add {name:\"\",id:\"\",type:\"\",message_color:\"\", message_text:\"\"}"}, \
    "hoverEvent":{"action":"show_text","value":[{"text":"Add a new dimension entry","color":"green"}]} \
  }, \
  "  ", \
  { \
    "text":"[Reset]","bold":true,"color":"red", \
    "clickEvent":{"action":"run_command","value":"function disable_dimensions:config/dimension/reset"}, \
    "hoverEvent":{"action":"show_text","value":[{"text":"Reset dimension entries to defaults","color":"red"}]} \
  }, \
  "\n" \
]

# World spawn config
tellraw @s [ \
    {"text":"World Spawn: ","color":"yellow"}, \
    {"nbt":"world_spawn.x","storage":"disable_dimensions:config","color":"aqua"}, \
    " ", \
    {"nbt":"world_spawn.y","storage":"disable_dimensions:config","color":"aqua"}, \
    " ", \
    {"nbt":"world_spawn.z","storage":"disable_dimensions:config","color":"aqua"}, \
    " ", \
    { \
        "text":"[Replace]","bold":true,"color":"gold", \
        "clickEvent":{"action":"run_command","value":"/function disable_dimensions:config/world_spawn/set"}, \
        "hoverEvent":{"action":"show_text","value":[{"text":"Click to replace with your current position","color":"gold"}]} \
    }, \
    "\n" \
]
