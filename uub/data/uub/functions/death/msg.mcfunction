execute unless entity @a[tag=last] if entity @a[tag=killtag] run tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " was killed by ","color": "gray"},{"selector": "@a[tag=killtag]","color": "blue"},{"text": ", who was at ","color": "gray"},{"score": {"name": "@r[tag=killtag]","objective": "hp"},"color": "dark_red"},{"text": " HP.","color": "gray"}]
execute if entity @a[tag=last] if entity @a[tag=killtag] unless score @s last = @r[tag=killtag] pn run tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " was killed by ","color": "gray"},{"selector": "@a[tag=killtag]","color": "blue"},{"text": ", who was at ","color": "gray"},{"score": {"name": "@r[tag=killtag]","objective": "hp"},"color": "dark_red"},{"text": " HP, stealing ","color": "gray"},{"selector": "@a[tag=last]","color": "white"},{"text": "'s ","color": "white"},{"text": "kill.","color": "gray"}]
execute unless entity @a[tag=killtag] run tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " died, and ","color": "gray"},{"selector": "@a[tag=random]","color": "white"},{"text": " is credited.","color": "gray"}]
#
