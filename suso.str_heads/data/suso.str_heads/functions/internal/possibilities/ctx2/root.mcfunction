execute if score $offset suso.str_heads matches 5 run scoreboard players set $offset suso.str_heads 1
execute if score $offset suso.str_heads matches 0 run data modify storage suso.str_heads:internal possible_chars set value ["I","J"]

execute if score $offset suso.str_heads matches 1 run function suso.str_heads:internal/possibilities/ctx2/1
execute if score $offset suso.str_heads matches 2 run data modify storage suso.str_heads:internal possible_chars set value ["I","M","N","O","Y","Z"]
execute if score $offset suso.str_heads matches 3 run function suso.str_heads:internal/possibilities/ctx2/3
execute if score $offset suso.str_heads matches 4 run function suso.str_heads:internal/possibilities/ctx2/4