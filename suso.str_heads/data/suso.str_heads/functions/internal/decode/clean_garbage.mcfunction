scoreboard players remove $ctx_offset suso.str_heads 1
data remove storage suso.str_heads:internal bits[0]

execute if score $ctx_offset suso.str_heads matches 1.. run function suso.str_heads:internal/decode/clean_garbage