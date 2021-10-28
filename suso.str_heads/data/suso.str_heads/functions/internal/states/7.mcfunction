#tellraw @a "STATE 7"

data modify storage suso.str_heads:internal flattened_cmp set from storage suso.str_heads:internal flattened_in

function suso.str_heads:internal/try_char/do
data modify entity 00000000-0000-0226-0000-000000000000 CustomName set from block ~ ~1 ~ Text2
data modify block ~1 ~ ~ Command set value "enchant 00000000-0000-0226-0000-000000000000 minecraft:aqua_affinity"

scoreboard players set $done suso.str_heads 1
execute if score $got suso.str_heads matches 1 run scoreboard players set $state suso.str_heads 7
execute if score $got suso.str_heads matches 0 run scoreboard players set $state suso.str_heads 3