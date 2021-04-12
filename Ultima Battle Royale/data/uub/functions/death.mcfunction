# Reset data and determine who the killer is

function uub:data/root

tag @a remove killer
execute at @s run tag @p[scores={kill=1..}, tag=!root] add killer
scoreboard players remove @a[tag=killer] kill 1

function uub:death/proc

execute as @a[tag=killer] at @s run playsound entity.player.levelup master @s
execute if score #flag game_mode = #duels game_mode run function uub:death/duels
execute if score #flag game_mode = #royale game_mode run function uub:death/royale
execute if score #flag game_mode = #brawl game_mode run function uub:death/brawl

execute if score #flag game_state matches 1 as @a[tag=player, tag=alive] run function uub:spawn/items/refill

execute unless score #flag game_mode > #royale game_mode run effect give @a instant_health 1 3 true