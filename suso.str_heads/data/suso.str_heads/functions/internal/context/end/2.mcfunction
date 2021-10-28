#tellraw @a "Ending context 2"

execute if score $get_id suso.str_heads matches 0 run function suso.str_heads:internal/decode/interpret
execute if score $get_id suso.str_heads matches 0 run data modify storage suso.str_heads:io out.id set from storage suso.str_heads:internal interpreted

data modify storage suso.str_heads:internal result append value "I"
data modify storage suso.str_heads:internal result append value "s"
data modify storage suso.str_heads:internal result append value "C"
data modify storage suso.str_heads:internal result append value "i"
data modify storage suso.str_heads:internal result append value "A"
data modify storage suso.str_heads:internal result append value "g"
data modify storage suso.str_heads:internal result append value "I"
data modify storage suso.str_heads:internal result append value "n"
data modify storage suso.str_heads:internal result append value "B"
data modify storage suso.str_heads:internal result append value "y"
data modify storage suso.str_heads:internal result append value "b"
data modify storage suso.str_heads:internal result append value "2"
data modify storage suso.str_heads:internal result append value "Z"
data modify storage suso.str_heads:internal result append value "p"
data modify storage suso.str_heads:internal result append value "b"
data modify storage suso.str_heads:internal result append value "G"
data modify storage suso.str_heads:internal result append value "V"
data modify storage suso.str_heads:internal result append value "O"
data modify storage suso.str_heads:internal result append value "Y"
data modify storage suso.str_heads:internal result append value "W"
data modify storage suso.str_heads:internal result append value "1"
data modify storage suso.str_heads:internal result append value "l"
data modify storage suso.str_heads:internal result append value "I"
data modify storage suso.str_heads:internal result append value "i"
data modify storage suso.str_heads:internal result append value "A"
data modify storage suso.str_heads:internal result append value "6"
data modify storage suso.str_heads:internal result append value "I"
data modify storage suso.str_heads:internal result append value "C"
scoreboard players set $context suso.str_heads 3
scoreboard players set $offset suso.str_heads 1

execute unless score $get_name suso.str_heads matches 0 unless score $get_sig suso.str_heads matches 0 unless score $get_skin suso.str_heads matches 0 unless score $get_model suso.str_heads matches 0 unless score $get_cape suso.str_heads matches 0 run function suso.str_heads:internal/end