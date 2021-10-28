data modify storage suso.str_heads:internal possible_chars2 append from storage suso.str_heads:internal possible_chars[0]
data remove storage suso.str_heads:internal possible_chars[0]

scoreboard players remove $half suso.str_heads 1
execute if score $half suso.str_heads matches 1.. run function suso.str_heads:internal/try_char/move_half