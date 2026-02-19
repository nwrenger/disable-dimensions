data modify storage disable_dimensions:config dimensions set value [ \
    { \
        name: "The Nether", \
        id: "minecraft:the_nether", \
        type: "nether_entered_pos", \
        disabled: true, \
        message_color:"dark_red", \
        message_text:"A sinister presence denies your passage...", \
   }, \
   { \
        name: "The End", \
        id: "minecraft:the_end", \
        type: "respawn", \
        disabled: true, \
        message_color:"light_purple", \
        message_text:"The End rejects your presence...", \
  }, \
]
