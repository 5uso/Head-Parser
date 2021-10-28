#tellraw @a "STATE 2"

#tellraw @p {"nbt":"LastOutput","block":"~1 ~ ~","interpret":true}
data modify storage suso.str_heads:internal flattened_in set from block ~1 ~ ~ LastOutput
data modify storage suso.str_heads:internal flattened_cmp set from block ~1 ~ ~ LastOutput

function suso.str_heads:internal/try_char/do
data modify entity 00000000-0000-0226-0000-000000000000 CustomName set from block ~ ~1 ~ Text2

execute if score $got suso.str_heads matches 1 run scoreboard players set $state suso.str_heads 7
execute if score $got suso.str_heads matches 0 run scoreboard players set $state suso.str_heads 3