# Replace current record with tmp.c (update)
data modify storage disable_dimensions:tmp c_cur merge from storage disable_dimensions:tmp c
data modify storage disable_dimensions:tmp found set value 1b
