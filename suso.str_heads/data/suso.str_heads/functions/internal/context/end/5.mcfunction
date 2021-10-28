#tellraw @a "Ending context 5"

execute if score $get_skin suso.str_heads matches 0 run function suso.str_heads:internal/decode/interpret
execute if score $get_skin suso.str_heads matches 0 run data modify storage suso.str_heads:io out.skin set from storage suso.str_heads:internal interpreted
execute unless score $get_model suso.str_heads matches 0 unless score $get_cape suso.str_heads matches 0 run function suso.str_heads:internal/end

execute if score $offset suso.str_heads matches 3 run data modify storage suso.str_heads:internal result append value "I"
execute if score $offset suso.str_heads matches 3 run scoreboard players add $offset suso.str_heads 1
scoreboard players set $context suso.str_heads 6

#data modify block ~ ~ ~ UpdateLastExecution set value 1b