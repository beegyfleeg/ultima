function ult:reset
function ult:data/map/generate
bossbar set ult:game_start visible false
bossbar set ult:game_start color blue
scoreboard players operation .debug_mode flag = flag.debug_mode.off const
