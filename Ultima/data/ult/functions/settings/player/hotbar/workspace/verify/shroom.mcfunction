execute unless data entity @s EnderItems[{id: "minecraft:iron_sword"}] run scoreboard players set .verify var 0
execute unless data entity @s EnderItems[{id: "minecraft:bow"}] run scoreboard players set .verify var 0
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run scoreboard players set .verify var 0
execute unless data entity @s EnderItems[{id: "minecraft:shears"}] run scoreboard players set .verify var 0

execute if score .verify var matches 0 at @s run playsound entity.villager.no master @s ~ ~ ~ 4
execute if score .verify var matches 0 run tellraw @s[tag=chat.s.e] [{"text": "S: ", "color": "dark_gray"}, {"text": "Please make sure each item is in a slot!", "color": "#F8961E"}]
execute if score .verify var matches 0 run tellraw @s[tag=chat.s.l] [{"text": "S: ", "color": "dark_gray"}, "Invalid settings."]
execute if score .verify var matches 1 run function ult:settings/player/hotbar/workspace/assign/shroom

execute if score .verify var matches 0 run function ult:settings/player/hotbar/workspace/setup
execute if score .verify var matches 1 run function ult:settings/player/hotbar/default
