tag @e[team=!play] remove alive

execute if score game q matches 0 run function uub:tick/off
execute if score game q matches 1 run function uub:tick/on

execute as @a[scores={action=1..}] run function uub:tick/action/handler
scoreboard players enable @a action
scoreboard players set @a action 0

kill @e[type=#arrows,nbt={inGround:1b}]
kill @e[type=item]
