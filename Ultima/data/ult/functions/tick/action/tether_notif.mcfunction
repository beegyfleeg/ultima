function ult:data/root

execute if score #flag game_mode = #royale game_mode as @a[tag=player, tag=alive] if score @s pn = @r[tag=root] tether run title @a[tag=root] actionbar [{"text": "You are tethered to ", "color": "gray"}, {"selector": "@s", "color": "white"}]

execute if score #flag game_mode = #royale game_mode as @a[tag=player, tag=alive] if score @s pn = @r[tag=root] tether run title @a[tag=root] actionbar [{"text": "You are tethered to ", "color": "gray"}, {"selector": "@s", "color": "white"}]

execute as @a[tag=player, tag=alive] if score @s pn = @r[tag=root] tether at @s run particle angry_villager ~ ~3 ~ 0.2 0.2 0.2 0 1 force @a[tag=root]
