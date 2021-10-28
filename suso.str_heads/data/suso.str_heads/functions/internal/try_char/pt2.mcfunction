scoreboard players operation $half suso.str_heads /= $2 suso.str_heads

function suso.str_heads:internal/try_char/move_half

data modify storage suso.str_heads:internal current_char set from storage suso.str_heads:internal possible_chars[0]
data modify block ~ ~1 ~ Text2 set value '[{"nbt":"result","storage":"suso.str_heads:internal","interpret":true},{"nbt":"current_char","storage":"suso.str_heads:internal"}]'