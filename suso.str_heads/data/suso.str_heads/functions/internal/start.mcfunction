execute store result score cmdfeed suso.str_heads run gamerule sendCommandFeedback
gamerule commandBlockOutput false
gamerule sendCommandFeedback true
data modify block ~ ~ ~1 auto set value 0b

data modify block ~ ~ ~ auto set value 0b
data modify block ~1 ~ ~ UpdateLastExecution set value 0b
scoreboard players set $state suso.str_heads 0
scoreboard players set $offset suso.str_heads 0
scoreboard players set $context suso.str_heads 1
scoreboard players set $counter suso.str_heads 0
scoreboard players set $last_ctx suso.str_heads 1

data modify entity 00000000-0000-0226-0000-000000000000 CustomName set value '{"text":""}'
data modify entity 00000000-0000-0226-0000-000000000001 Tags set value []
data remove storage suso.str_heads:io out
data remove storage suso.str_heads:internal cmp
data remove storage suso.str_heads:internal tags_start
data remove storage suso.str_heads:internal constructed
data remove storage suso.str_heads:internal current_char
data remove storage suso.str_heads:internal flattened_in
data remove storage suso.str_heads:internal flattened_cmp
data remove storage suso.str_heads:internal possible_chars2
data remove storage suso.str_heads:internal flattened_tag_list

data modify storage suso.str_heads:internal result set value ["e","w","o","g","I","C","J","0","a","W","1","l","c","3","R","h","b","X","A","i","I","D","o","g"]
execute store result score $get suso.str_heads run data get storage suso.str_heads:io in.get
scoreboard players operation $get_time suso.str_heads = $get suso.str_heads
scoreboard players operation $get_time suso.str_heads %= $2 suso.str_heads
scoreboard players operation $get_id suso.str_heads = $get suso.str_heads
scoreboard players operation $get_id suso.str_heads %= $3 suso.str_heads
scoreboard players operation $get_name suso.str_heads = $get suso.str_heads
scoreboard players operation $get_name suso.str_heads %= $5 suso.str_heads
scoreboard players operation $get_sig suso.str_heads = $get suso.str_heads
scoreboard players operation $get_sig suso.str_heads %= $7 suso.str_heads
scoreboard players operation $get_skin suso.str_heads = $get suso.str_heads
scoreboard players operation $get_skin suso.str_heads %= $11 suso.str_heads
scoreboard players operation $get_model suso.str_heads = $get suso.str_heads
scoreboard players operation $get_model suso.str_heads %= $13 suso.str_heads
scoreboard players operation $get_cape suso.str_heads = $get suso.str_heads
scoreboard players operation $get_cape suso.str_heads %= $17 suso.str_heads
function suso.str_heads:internal/possibilities/get

#time 2, id 3, name 5, signaturereq 7, skin 11, model 13, cape 17