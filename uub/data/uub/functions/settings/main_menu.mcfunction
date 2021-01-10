function uub:settings/clear_ender_chest

replaceitem entity @s[tag=team_play] enderchest.13 lime_terracotta{display:{Name:'{"text": "Opted in","color": "green","bold": true,"italic": false}',Lore:['{"text": "Click to opt out.","color": "gray"}']}}
replaceitem entity @s[tag=team_spect] enderchest.13 blue_terracotta{display:{Name:'{"text": "Opted out","color": "blue","bold": true,"italic": false}',Lore:['{"text": "Click to opt in.","color": "gray"}']}}
replaceitem entity @s enderchest.6 gold_ingot{HideFlags:63,display:{Name:'{"text": "Trophy Case","color": "gold","bold": true,"italic": false}',Lore:['{"text": "Check all the Awards you\'ve collected.","color": "gray"}','{"text": "(Coming soon)","color": "white"}']}}
replaceitem entity @s enderchest.2 globe_banner_pattern{HideFlags:63,display:{Name:'{"text": "Stats","color": "red","bold": true,"italic": false}',Lore:['{"text": "Click to view your game statistics.","color": "gray"}']}}
replaceitem entity @s enderchest.20 diamond_sword{HideFlags:63,display:{Name:'{"text": "Hotbar Settings","color": "dark_purple","bold": true,"italic": false}',Lore:['{"text": "Manage the default positions of your items per map.","color": "gray"}','{"text": "(Coming soon)","color": "white"}']}}
execute at @s[tag=!menu.main] run playsound entity.item.pickup master @s

tag @s remove menu.stat
tag @s remove menu.hotbar
tag @s remove menu.vote
tag @s add menu.main

clear @s structure_void
clear @s diamond_sword
clear @s globe_banner_pattern
clear @s blue_terracotta
clear @s lime_terracotta
clear @s gold_ingot
clear @s filled_map

execute if score @s upvote matches 0 run summon armor_stand 45 20 -10 {CustomName:'"None"',Tags:["temp5"]}
execute if score @s upvote matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Manor"',Tags:["temp5"]}
execute if score @s upvote matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Woodlands"',Tags:["temp5"]}
execute if score @s upvote matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Dungeon"',Tags:["temp5"]}
execute if score @s upvote matches 4 run summon armor_stand 45 20 -10 {CustomName:'"Abyss"',Tags:["temp5"]}
execute if score @s upvote matches 5 run summon armor_stand 45 20 -10 {CustomName:'"Citadel"',Tags:["temp5"]}
execute if score @s upvote matches 13 run summon armor_stand 45 20 -10 {CustomName:'"Reflection"',Tags:["temp5"]}
execute if score @s upvote matches 14 run summon armor_stand 45 20 -10 {CustomName:'"Dracula\'s Castle"',Tags:["temp5"]}
execute if score @s upvote matches 15 run summon armor_stand 45 20 -10 {CustomName:'"Avanto"',Tags:["temp5"]}
execute if score @s downvote matches 0 run summon armor_stand 45 20 -10 {CustomName:'"None"',Tags:["temp6"]}
execute if score @s downvote matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Manor"',Tags:["temp6"]}
execute if score @s downvote matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Woodlands"',Tags:["temp6"]}
execute if score @s downvote matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Dungeon"',Tags:["temp6"]}
execute if score @s downvote matches 4 run summon armor_stand 45 20 -10 {CustomName:'"Abyss"',Tags:["temp6"]}
execute if score @s downvote matches 5 run summon armor_stand 45 20 -10 {CustomName:'"Citadel"',Tags:["temp6"]}
execute if score @s downvote matches 13 run summon armor_stand 45 20 -10 {CustomName:'"Reflection"',Tags:["temp6"]}
execute if score @s downvote matches 14 run summon armor_stand 45 20 -10 {CustomName:'"Dracula\'s Castle"',Tags:["temp6"]}
execute if score @s downvote matches 15 run summon armor_stand 45 20 -10 {CustomName:'"Avanto"',Tags:["temp6"]}

loot replace entity @s enderchest.24 loot uub:vote

kill @e[tag=temp5]
kill @e[tag=temp6]
