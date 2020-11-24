scoreboard objectives add n dummy
scoreboard objectives add q dummy
scoreboard objectives add gid dummy
scoreboard objectives add action trigger
scoreboard objectives add pn dummy
scoreboard objectives add qdeath deathCount

scoreboard players add gid q 1
scoreboard players operation @a gid = gid q
scoreboard players set @a qdeath 0

scoreboard players set game q 0
execute unless score mode q matches 1.. positioned -3 22 0 run function uub:settings/mode
execute unless score map q matches 1.. positioned 3 22 0 run function uub:settings/map

team add spect {"text": "Spectating","color": "blue"}
team modify spect collisionRule never
team modify spect color blue
team modify spect friendlyFire false

team add play {"text": "Playing","color": "green"}
team modify play color green

team join play @a[team=]

tp @a 0 21 0
clear @a
effect clear @a
gamemode adventure @a
effect give @a resistance 99999 4 true
effect give @a invisibility 99999 0 true
effect give @a instant_health 1 3 true

schedule clear uub:start/prep
schedule clear uub:event/duels
