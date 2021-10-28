data modify storage suso.str_heads:internal result append value "i"
data modify storage suso.str_heads:internal result append value "A"
data modify storage suso.str_heads:internal result append value "g"
data modify storage suso.str_heads:internal result append value "I"
data modify storage suso.str_heads:internal result append value "C"
data modify storage suso.str_heads:internal result append value "B"
data modify storage suso.str_heads:internal result append value "9"

scoreboard players set $offset suso.str_heads 1
execute if score $get_model suso.str_heads matches 0 run data modify storage suso.str_heads:io out.model set value 0b
#L:, C:\n