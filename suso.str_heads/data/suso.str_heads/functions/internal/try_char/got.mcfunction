data modify storage suso.str_heads:internal current_char set from storage suso.str_heads:internal possible_chars[0]
data modify storage suso.str_heads:internal last_char set from storage suso.str_heads:internal possible_chars[0]
data modify storage suso.str_heads:internal result append from storage suso.str_heads:internal current_char
function suso.str_heads:internal/decode/check
function suso.str_heads:internal/context/check/do
data modify block ~ ~1 ~ Text2 set value '[{"nbt":"result","storage":"suso.str_heads:internal","interpret":true}]'
#tellraw @a [{"text":"Got char \""},{"nbt":"current_char","storage":"suso.str_heads:internal"},"\""]

scoreboard players add $offset suso.str_heads 1
execute unless score $last_ctx suso.str_heads = $context suso.str_heads run scoreboard players operation $ctx_offset suso.str_heads = $offset suso.str_heads
scoreboard players operation $last_ctx suso.str_heads = $context suso.str_heads

function suso.str_heads:internal/possibilities/get
data modify storage suso.str_heads:internal possible_chars set from storage suso.str_heads:internal possible_chars
data remove storage suso.str_heads:internal possible_chars2
#tellraw @a ["Possible chars are ",{"nbt":"possible_chars","storage":"suso.str_heads:internal"}, " Offset: ",{"score": {"name": "$offset","objective": "suso.str_heads"}}]

scoreboard players set $got suso.str_heads 1