# Setup storage defualts if they don't exist
execute unless data storage disable_dimensions:config {init:true} run function disable_dimensions:config/defaults

# Init Message
tellraw @a ""

tellraw @a ["",{"text":"Disable Dimensions","bold":true,"color":"gold"},{"text":" by "},{"text":"nwrenger","color":"#F223F2","click_event":{"action":"open_url","url":"https://nwrenger.dev"}}," successfully installed\n"]
tellraw @a ["",{"text":"> Check my other projects on ","color":"gray"},{"text":"https://nwrenger.dev","italic":true,"color":"aqua","click_event":{"action":"open_url","url":"https://nwrenger.dev"}}]
tellraw @a ["",{"text":"> If you have an issue with this pack, report it ","color":"gray"},{"text":"here","italic":true,"color":"aqua","click_event":{"action":"open_url","url":"https://github.com/nwrenger/disable-dimensions/issues"}}]
tellraw @a ["",{"text":"> To configure this pack run ","color":"gray"},{"text":"function disable_dimensions:config","italic":true,"color":"aqua","click_event":{"action":"run_command","command":"function disable_dimensions:config"}}]

tellraw @a ""
