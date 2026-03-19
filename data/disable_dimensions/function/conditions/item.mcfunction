# Checks all inventory slots on the player: hotbar, inventory, armor, weapon
$execute unless data storage disable_dimensions:tmp {condition_result:true} \
    if items entity @s hotbar.* $(value) \
    run data modify storage disable_dimensions:tmp condition_result set value true
$execute unless data storage disable_dimensions:tmp {condition_result:true} \
    if items entity @s inventory.* $(value) \
    run data modify storage disable_dimensions:tmp condition_result set value true
$execute unless data storage disable_dimensions:tmp {condition_result:true} \
    if items entity @s armor.* $(value) \
    run data modify storage disable_dimensions:tmp condition_result set value true
$execute unless data storage disable_dimensions:tmp {condition_result:true} \
    if items entity @s weapon.* $(value) \
    run data modify storage disable_dimensions:tmp condition_result set value true
