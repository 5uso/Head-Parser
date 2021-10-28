#tellraw @a "Ending context 3"

execute if score $get_name suso.str_heads matches 0 run function suso.str_heads:internal/decode/interpret
execute if score $get_name suso.str_heads matches 0 run data modify storage suso.str_heads:io out.name set from storage suso.str_heads:internal interpreted

execute unless score $get_sig suso.str_heads matches 0 unless score $get_skin suso.str_heads matches 0 unless score $get_model suso.str_heads matches 0 unless score $get_cape suso.str_heads matches 0 run function suso.str_heads:internal/end

execute if score $temp suso.str_heads matches 0 if score $offset suso.str_heads matches 0 run function suso.str_heads:internal/context/end/3/0
execute if score $temp suso.str_heads matches 0 if score $offset suso.str_heads matches 1 run function suso.str_heads:internal/context/end/3/1
execute if score $temp suso.str_heads matches 0 if score $offset suso.str_heads matches 3 run function suso.str_heads:internal/context/end/3/3
scoreboard players set $context suso.str_heads 4

# 3=LAogICJ
# 1=IsCiAgI
# 0=iwKICAi