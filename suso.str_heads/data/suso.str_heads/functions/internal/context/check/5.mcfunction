execute if score $offset suso.str_heads matches 2 if data storage suso.str_heads:internal {last_char:"I"} run function suso.str_heads:internal/context/end/5
execute if data storage suso.str_heads:internal {last_char:"C"} run function suso.str_heads:internal/context/end/5
execute if data storage suso.str_heads:internal {last_char:"S"} run function suso.str_heads:internal/context/end/5
execute if score $offset suso.str_heads matches 3 if data storage suso.str_heads:internal {last_char:"y"} run function suso.str_heads:internal/context/end/5

execute if score $offset suso.str_heads matches 1 if data storage suso.str_heads:internal {last_char:"i"} run function suso.str_heads:internal/context/check/5_aux
execute if score $offset suso.str_heads matches 3 if data storage suso.str_heads:internal {last_char:"i"} run function suso.str_heads:internal/context/end/5

data modify storage suso.str_heads:internal prev_char set from storage suso.str_heads:internal last_char