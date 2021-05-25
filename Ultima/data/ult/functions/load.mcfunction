# Declare scoreboard objectives
scoreboard objectives add _var dummy
scoreboard objectives add action trigger
scoreboard objectives add afk dummy
scoreboard objectives add altitude dummy
scoreboard objectives add chest dummy
scoreboard objectives add const dummy
scoreboard objectives add control dummy
scoreboard objectives add crouch custom:sneak_time
scoreboard objectives add crouch_mode dummy
scoreboard objectives add damage_taken custom:damage_taken
scoreboard objectives add damage_dealt custom:damage_dealt
scoreboard objectives add death deathCount
scoreboard objectives add death_cause dummy
scoreboard objectives add event dummy
scoreboard objectives add event.debris dummy
scoreboard objectives add event.rabbit dummy
scoreboard objectives add event.rune dummy
scoreboard objectives add event.salmon dummy
scoreboard objectives add event.skill dummy
scoreboard objectives add event.skill_inc dummy
scoreboard objectives add flag dummy
scoreboard objectives add half dummy
scoreboard objectives add health health
scoreboard objectives add health_display dummy
scoreboard objectives add hotbar_map dummy
scoreboard objectives add kill playerKillCount
scoreboard objectives add menu dummy
scoreboard objectives add online dummy
scoreboard objectives add parkour dummy
scoreboard objectives add pn dummy
scoreboard objectives add respawn dummy
scoreboard objectives add queue dummy
scoreboard objectives add rotation dummy
scoreboard objectives add score dummy
scoreboard objectives add tether dummy
scoreboard objectives add timer dummy
scoreboard objectives add vote dummy
scoreboard objectives add wins dummy

# Set defaults for brand new worlds
execute unless score .game_state flag matches 0.. run scoreboard players set .game_state flag 0
execute unless score .map flag matches 0.. run scoreboard players set .map flag 0
execute unless score .map_menu flag matches 0.. run scoreboard players set .map_menu flag 0
execute unless score .map_mode flag matches 0.. run scoreboard players set .map_mode flag 0
execute unless score .mode flag matches 0.. run scoreboard players set .mode flag 0

# Set constant enumerators
scoreboard players set chest.common const 0
scoreboard players set chest.uncommon const 1
scoreboard players set chest.rare const 2
scoreboard players set chest.epic const 3
scoreboard players set chest.ultimate const 4

scoreboard players set crouch_mode.not_crouching const 0
scoreboard players set crouch_mode.crouch_pressed const 1
scoreboard players set crouch_mode.crouch_held const 2

scoreboard players set death_cause.normal const 0
scoreboard players set death_cause.abyss_fall const 1
scoreboard players set death_cause.abyss_fished const 2
scoreboard players set death_cause.shot const 3
scoreboard players set death_cause.harming const 4
scoreboard players set death_cause.shot_hard const 5
scoreboard players set death_cause.exploded const 6
scoreboard players set death_cause.fire const 7

scoreboard players set event.rune.health const 0
scoreboard players set event.rune.speed const 1
scoreboard players set event.rune.attack const 2
scoreboard players set event.rune.defense const 3

scoreboard players set event.skill.combonatrix const 0
scoreboard players set event.skill.flurry_rush const 1
scoreboard players set event.skill.backstabbing const 2
scoreboard players set event.skill.hot_pursuit const 3

scoreboard players set flag.game_state.inactive const 0
scoreboard players set flag.game_state.active const 1
scoreboard players set flag.game_state.transition const 2

scoreboard players set flag.map.manor const 0
scoreboard players set flag.map.woodlands const 1
scoreboard players set flag.map.dungeon const 2
scoreboard players set flag.map.abyss const 3
scoreboard players set flag.map.citadel const 4
scoreboard players set flag.map.wasteland const 5
scoreboard players set flag.map.town_square const 6
scoreboard players set flag.map.last_stand const 7
scoreboard players set flag.map.reflection const 48
scoreboard players set flag.map.dracula const 49
scoreboard players set flag.map.avanto const 50
scoreboard players set flag.map.boxing const 51
scoreboard players set flag.map.ancient const 52
scoreboard players set flag.map.marooned const 53
scoreboard players set flag.map.hill const 54
scoreboard players set flag.map.bathhouse const 55
scoreboard players set flag.map.ultimate const 96

scoreboard players set flag.map_menu.main const 0
scoreboard players set flag.map_menu.default const 1
scoreboard players set flag.map_menu.featured const 2

scoreboard players set flag.map_mode.selected const 0
scoreboard players set flag.map_mode.random const 1
scoreboard players set flag.map_mode.cycle const 2
scoreboard players set flag.map_mode.vote const 3

scoreboard players set flag.mode.duels const 0
scoreboard players set flag.mode.royale const 1
scoreboard players set flag.mode.brawl const 2

scoreboard players set half.front const 0
scoreboard players set half.back const 1

scoreboard players set menu.main const 0
scoreboard players set menu.hotbar_main const 1
scoreboard players set menu.hotbar const 2
scoreboard players set menu.spectator const 3
scoreboard players set menu.vote const 4
scoreboard players set menu.parkour const 5

# Prepare the world if nobody is online yet
execute unless entity @a run function ult:load/first

# Prepare teams
team modify lobby friendlyFire false
scoreboard objectives modify wins displayname {"text": "Wins", "color": "dark_green"}
scoreboard objectives modify health_display displayname {"text": "HP", "color": "dark_red"}
scoreboard objectives modify health_display rendertype hearts
scoreboard objectives modify score displayname {"text": "Score", "color": "blue"}

team add respawn_marker
team modify respawn_marker color dark_red
