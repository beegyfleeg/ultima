tellraw @a[tag=player] [{"selector": "@s"}, {"text": " wants to change game mode.", "color": "gray"}]
execute as @a[tag=player] at @s run playsound block.note_block.iron_xylophone master @s
scoreboard players reset @s action
tag @s add change_modes
