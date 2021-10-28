#Head-specific: no need to check for complete match, directly assume state 3-1
#tellraw @a "STATE 3"

data modify storage suso.str_heads:internal flattened_cmp set from block ~1 ~ ~ LastOutput
data modify entity 00000000-0000-0226-0000-000000000001 Tags set value ["a, b, c"]
data modify entity 00000000-0000-0226-0000-000000000001 Tags append from storage suso.str_heads:internal flattened_in
data modify entity 00000000-0000-0226-0000-000000000001 Tags append from storage suso.str_heads:internal flattened_cmp
data modify block ~1 ~ ~ Command set value "tag 00000000-0000-0226-0000-000000000001 list"

scoreboard players set $state suso.str_heads 4