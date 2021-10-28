data remove storage suso.str_heads:internal interpreted

execute unless score $context suso.str_heads matches 1 unless score $context suso.str_heads matches 3 run scoreboard players remove $ctx_offset suso.str_heads 2
scoreboard players operation $ctx_offset suso.str_heads %= $4 suso.str_heads
scoreboard players operation $ctx_offset suso.str_heads *= $2 suso.str_heads
execute if score $ctx_offset suso.str_heads matches 1.. run function suso.str_heads:internal/decode/clean_garbage

#tellraw @a {"nbt": "bits", "storage": "suso.str_heads:internal", "interpret": false}

function suso.str_heads:internal/decode/tree/do

data remove storage suso.str_heads:internal bits