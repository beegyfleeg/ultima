scoreboard players set @s pn 0
scoreboard players reset @s score
scoreboard players reset @s display_health
execute as @s[tag=!spectator] run function ult:settings/opt/out

function ult:data/player/reset_waits
