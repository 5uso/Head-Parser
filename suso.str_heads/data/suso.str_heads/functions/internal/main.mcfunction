#tellraw @a "CYCLE"

scoreboard players set $done suso.str_heads 0
function suso.str_heads:internal/time/check

execute if score $state suso.str_heads matches 7 run function suso.str_heads:internal/states/7
execute if score $state suso.str_heads matches 6 run function suso.str_heads:internal/states/6
execute if score $state suso.str_heads matches 5 run function suso.str_heads:internal/states/5
execute if score $state suso.str_heads matches 4 run function suso.str_heads:internal/states/4
execute if score $state suso.str_heads matches 3 if score $done suso.str_heads matches 0 run function suso.str_heads:internal/states/3
execute if score $state suso.str_heads matches 2 run function suso.str_heads:internal/states/2
execute if score $state suso.str_heads matches 1 run function suso.str_heads:internal/states/1
execute if score $state suso.str_heads matches 0 run function suso.str_heads:internal/states/0

execute if score $state suso.str_heads matches -1 run data modify block ~ ~ ~ UpdateLastExecution set value 1b
scoreboard players add $counter suso.str_heads 1
execute if score $counter suso.str_heads matches 5000.. run data modify block ~ ~ ~ UpdateLastExecution set value 1b