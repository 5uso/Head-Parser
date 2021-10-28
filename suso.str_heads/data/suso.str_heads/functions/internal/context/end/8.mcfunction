#tellraw @a "Ending context 8"

execute if score $get_cape suso.str_heads matches 0 run function suso.str_heads:internal/decode/interpret
execute if score $get_cape suso.str_heads matches 0 run data modify storage suso.str_heads:io out.cape set from storage suso.str_heads:internal interpreted

function suso.str_heads:internal/end