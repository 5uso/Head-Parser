#tellraw @a "Ending context 4"

execute unless score $get_skin suso.str_heads matches 0 unless score $get_model suso.str_heads matches 0 unless score $get_cape suso.str_heads matches 0 run function suso.str_heads:internal/end

#tellraw @a {"nbt": "last_char","storage": "suso.str_heads:internal"}
execute if data storage suso.str_heads:internal {last_char:"c"} run function suso.str_heads:internal/context/end/4/c
execute if data storage suso.str_heads:internal {last_char:"d"} run function suso.str_heads:internal/context/end/4/d
execute if data storage suso.str_heads:internal {last_char:"N"} run function suso.str_heads:internal/context/end/4/n
execute if data storage suso.str_heads:internal {last_char:"R"} run function suso.str_heads:internal/context/end/4/r
execute if data storage suso.str_heads:internal {last_char:"z"} run function suso.str_heads:internal/context/end/4/z
execute if data storage suso.str_heads:internal {last_char:"0"} run function suso.str_heads:internal/context/end/4/0
scoreboard players set $context suso.str_heads 5
#data modify block ~ ~ ~ UpdateLastExecution set value 1b