scoreboard players reset .vote var
execute if score @s vote matches -2147483648..2147483647 run scoreboard players operation .vote var = @s vote
scoreboard players operation @s vote = .selected_map var
function ult:settings/player/vote/confirm
