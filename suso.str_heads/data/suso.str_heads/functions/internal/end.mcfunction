execute if score cmdfeed suso.str_heads matches 0 run gamerule sendCommandFeedback false
scoreboard players set $state suso.str_heads -1
data modify block ~ ~ ~ UpdateLastExecution set value 1b

data modify block ~-1 ~ ~1 Command set from storage suso.str_heads:io in.callback
execute if data storage suso.str_heads:io in.callback run data modify block ~-1 ~ ~1 auto set value 1b