# Replace current record with tmp.d (update)
data modify storage disable_dimensions:tmp cur merge from storage disable_dimensions:tmp d
data modify storage disable_dimensions:tmp found set value 1b
