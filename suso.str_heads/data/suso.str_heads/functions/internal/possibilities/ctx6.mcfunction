execute if score $offset suso.str_heads matches 3 run data modify storage suso.str_heads:internal possible_chars set value ["g","i"]
execute if score $offset suso.str_heads matches 5 run data modify storage suso.str_heads:internal possible_chars set value ["K","s"]
execute if score $offset suso.str_heads matches 2 run data modify storage suso.str_heads:internal possible_chars set value ["C","L"]