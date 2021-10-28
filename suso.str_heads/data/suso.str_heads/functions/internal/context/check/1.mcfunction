execute if data storage suso.str_heads:internal {last_char:"L"} run function suso.str_heads:internal/context/end/1
execute if data storage suso.str_heads:internal {last_char:"C"} run function suso.str_heads:internal/context/end/1
execute if data storage suso.str_heads:internal {last_char:"S"} run function suso.str_heads:internal/context/end/1
execute if data storage suso.str_heads:internal {last_char:"i"} run function suso.str_heads:internal/context/end/1
execute if score $offset suso.str_heads matches 1 if data storage suso.str_heads:internal {last_char:"y"} run function suso.str_heads:internal/context/end/1
execute if data storage suso.str_heads:internal {last_char:"s"} run function suso.str_heads:internal/context/end/1