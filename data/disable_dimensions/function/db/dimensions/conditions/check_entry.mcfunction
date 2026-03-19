# Run the condition-type function and track whether it matched
data modify storage disable_dimensions:tmp condition_result set value false
$function disable_dimensions:conditions/$(type) {value:"$(value)"}

# Apply overrides when the condition succeeded
execute if data storage disable_dimensions:tmp {condition_result:true} run data modify storage disable_dimensions:tmp disabled set from storage disable_dimensions:tmp c_cur.disabled

# Cleanup
data remove storage disable_dimensions:tmp condition_result
