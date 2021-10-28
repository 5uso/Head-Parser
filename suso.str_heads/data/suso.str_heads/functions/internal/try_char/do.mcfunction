scoreboard players set $got suso.str_heads 0
execute store result score $half suso.str_heads run data get storage suso.str_heads:internal possible_chars
execute if score $half suso.str_heads matches 2.. run function suso.str_heads:internal/try_char/pt2
execute if score $half suso.str_heads matches 1 run function suso.str_heads:internal/try_char/got

#tellraw @a [{"text":"Trying string \""},{"block":"~ ~1 ~","nbt":"Text2","interpret":true},"\""]