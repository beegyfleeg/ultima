tellraw @a [{"selector": "@s", "color": "gray"}, {"text": " lost their skill.", "color": "dark_gray"}]
scoreboard players set @s event.skill 0
function ult:tick/active/map/last_stand/skill/reset