tag @s add alive
tag @s add fresh
tag @s remove parkour
tag @s remove timed
function uub:settings/ender_chest/main
clear @s
effect clear @s
effect give @s instant_health 1 3 true
effect give @s resistance 4 1
gamemode adventure
team leave @s

scoreboard players set @s pn 0
function uub:spawn/assign_pn
function uub:data/player/reset_waits

function uub:tp

execute if score #flag game_mode = #ultimate game_mode run function uub:spawn/ultimate
execute if score #server map matches 1 run function uub:spawn/maps/manor
execute if score #server map matches 2 run function uub:spawn/maps/woodlands
execute if score #server map matches 3 run function uub:spawn/maps/dungeon
execute if score #server map matches 4 run function uub:spawn/maps/abyss
execute if score #server map matches 5 run function uub:spawn/maps/citadel
execute if score #server map matches 6 run function uub:spawn/maps/wasteland
execute if score #server map matches 7 run function uub:spawn/maps/townsquare
execute if score #server map matches 8 run function uub:spawn/maps/laststand
execute if score #server map matches 9 run function uub:spawn/maps/frost
execute if score #server map matches 10 run function uub:spawn/maps/shroom
execute if score #server map matches 11 run function uub:spawn/maps/hell
execute if score #server map matches 12 run function uub:spawn/maps/frontier
execute if score #server map matches 13 run function uub:spawn/maps/reflection
execute if score #server map matches 14 run function uub:spawn/maps/dracula
execute if score #server map matches 15 run function uub:spawn/maps/avanto
execute if score #server map matches 16 run function uub:spawn/maps/boxing

execute at @s run playsound item.totem.use master @a[tag=!parkour] ~ ~ ~ 1 0.7

scoreboard players set @s afk 0