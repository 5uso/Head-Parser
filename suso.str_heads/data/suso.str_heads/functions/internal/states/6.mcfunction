#tellraw @a "STATE 6"

#tellraw @p {"nbt":"LastOutput","block":"~1 ~ ~","interpret":true}
execute store success score $temp suso.str_heads run data modify storage suso.str_heads:internal flattened_tag_list set from block ~1 ~ ~ LastOutput

execute if score $temp suso.str_heads matches 1 run function suso.str_heads:internal/states/6-1
execute if score $temp suso.str_heads matches 0 run function suso.str_heads:internal/states/6-2

scoreboard players set $state suso.str_heads 7