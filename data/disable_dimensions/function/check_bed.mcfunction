# Flag that a bed is present at or directly below the stored position
execute as @s if block ~ ~ ~ #minecraft:beds run data modify storage disable_dimensions:tmp tp.bed_ok set value true
