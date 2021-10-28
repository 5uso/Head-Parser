execute store result score $bit suso.str_heads run data get storage suso.str_heads:internal bits[0]
data remove storage suso.str_heads:internal bits[0]
execute if score $bit suso.str_heads matches 0 run function suso.str_heads:internal/decode/tree/0/1/1/1/0
execute if score $bit suso.str_heads matches 1 run function suso.str_heads:internal/decode/tree/0/1/1/1/1