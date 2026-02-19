# Revoke advancement
advancement revoke @s only disable_dimensions:entered_dimension

# Run logic and updates 1 tick later
tag @s add disable_dimensions_tp
schedule function disable_dimensions:each_player 1t append
