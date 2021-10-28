execute if score $offset suso.str_heads matches 1 run data modify storage suso.str_heads:internal possible_chars set value ["c","d"]
execute if score $offset suso.str_heads matches 2 run data modify storage suso.str_heads:internal possible_chars set value ["N","R"]
execute if score $offset suso.str_heads matches 4 run data modify storage suso.str_heads:internal possible_chars set value ["0","z"]