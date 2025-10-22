# Reset flag
data modify storage disable_dimensions:tmp removed set value 0b

# In a 9x9x9 range scan for stuff and replace them
function disable_dimensions:cleanup/end/portal/sweep

# Pop the eyes of the end portal frames
function disable_dimensions:cleanup/end/pop_eyes/sweep

# Show feedback
# Always get player to display the message
execute if entity @s[type=player] run function disable_dimensions:cleanup/end/message
execute if entity @s[type=ender_pearl] on origin run function disable_dimensions:cleanup/end/message
