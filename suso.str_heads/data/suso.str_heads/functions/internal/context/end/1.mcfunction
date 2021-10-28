#tellraw @a "Ending context 1"

execute if score $get_time suso.str_heads matches 0 run function suso.str_heads:internal/decode/interpret
execute if score $get_time suso.str_heads matches 0 run data modify storage suso.str_heads:io out.time set from storage suso.str_heads:internal interpreted

data modify storage suso.str_heads:internal result append value "w"
data modify storage suso.str_heads:internal result append value "K"
data modify storage suso.str_heads:internal result append value "I"
data modify storage suso.str_heads:internal result append value "C"
data modify storage suso.str_heads:internal result append value "A"
data modify storage suso.str_heads:internal result append value "i"
data modify storage suso.str_heads:internal result append value "c"
data modify storage suso.str_heads:internal result append value "H"
data modify storage suso.str_heads:internal result append value "J"
data modify storage suso.str_heads:internal result append value "v"
data modify storage suso.str_heads:internal result append value "Z"
data modify storage suso.str_heads:internal result append value "m"
data modify storage suso.str_heads:internal result append value "l"
data modify storage suso.str_heads:internal result append value "s"
data modify storage suso.str_heads:internal result append value "Z"
data modify storage suso.str_heads:internal result append value "U"
data modify storage suso.str_heads:internal result append value "l"
data modify storage suso.str_heads:internal result append value "k"
data modify storage suso.str_heads:internal result append value "I"
data modify storage suso.str_heads:internal result append value "i"
data modify storage suso.str_heads:internal result append value "A"
data modify storage suso.str_heads:internal result append value "6"
data modify storage suso.str_heads:internal result append value "I"
data modify storage suso.str_heads:internal result append value "C"
scoreboard players set $context suso.str_heads 2
scoreboard players set $offset suso.str_heads -1

execute unless score $get_id suso.str_heads matches 0 unless score $get_name suso.str_heads matches 0 unless score $get_sig suso.str_heads matches 0 unless score $get_skin suso.str_heads matches 0 unless score $get_model suso.str_heads matches 0 unless score $get_cape suso.str_heads matches 0 run function suso.str_heads:internal/end