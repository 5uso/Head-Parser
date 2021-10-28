execute if score $context suso.str_heads matches 1 if score $get_time suso.str_heads matches 0 run function suso.str_heads:internal/decode/char_to_bits
execute if score $context suso.str_heads matches 2 if score $get_id suso.str_heads matches 0 run function suso.str_heads:internal/decode/char_to_bits
execute if score $context suso.str_heads matches 3 if score $get_name suso.str_heads matches 0 run function suso.str_heads:internal/decode/char_to_bits
execute if score $context suso.str_heads matches 5 if score $get_skin suso.str_heads matches 0 run function suso.str_heads:internal/decode/char_to_bits
execute if score $context suso.str_heads matches 8 if score $get_cape suso.str_heads matches 0 run function suso.str_heads:internal/decode/char_to_bits