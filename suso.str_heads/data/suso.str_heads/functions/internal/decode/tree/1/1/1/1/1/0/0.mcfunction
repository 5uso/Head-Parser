data modify storage suso.str_heads:internal interpreted append value "|"

execute store result score $bit suso.str_heads if data storage suso.str_heads:internal bits[]
execute if score $bit suso.str_heads matches 8.. run function suso.str_heads:internal/decode/tree/do