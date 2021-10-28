execute if score $offset suso.str_heads matches 4 run scoreboard players set $offset suso.str_heads 0
execute if score $offset suso.str_heads matches 0 run data modify storage suso.str_heads:internal possible_chars set value ["L","M","N","O"]
execute if score $offset suso.str_heads matches 1 run function suso.str_heads:internal/possibilities/ctx1/1
execute if score $offset suso.str_heads matches 2 run data modify storage suso.str_heads:internal possible_chars set value ["A","E","I","M","Q","U","Y","c","g","k"]
execute if score $offset suso.str_heads matches 3 run data modify storage suso.str_heads:internal possible_chars set value ["0","1","2","3","4","5","s","w","x","y","z"]