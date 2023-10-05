gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule sendCommandFeedback false
teleport @s 3 64 0 facing 3 64 -1
clear @s

# Crouching - Tracks if the player is crouching (0=false, 1=true)
scoreboard objectives add crouching dummy
scoreboard players set @s crouching 0

# Countdown - The time left in in-game ticks ticks (20 per second)
scoreboard objectives add countdown dummy
scoreboard players set @s countdown 8000

# Facing - Tracks the direction the player is facing (0=right,1=left)
scoreboard objectives add facing dummy
scoreboard players set @s facing 0

# Jumping - Tracks if the player is jumping (0=false, 1=true)
scoreboard objectives add jumping dummy
scoreboard players set @s jumping 0

# TIME - The time left in real time seconds
scoreboard objectives add TIME dummy
scoreboard players set @s TIME 0
scoreboard objectives setdisplay sidebar TIME

# Timer - An animation and event timer
scoreboard objectives add timer dummy
scoreboard players set @s timer 0

# "Loading" screen
tag @s add intro

# World 1-1
scoreboard objectives add w1l1 dummy
scoreboard players set @s w1l1 0

# SMB Buffs
effect give @s invisibility 9999 1 true
effect give @s jump_boost 9999 3 true
effect give @s haste 9999 1 true

# [w][s][a][d] detection
kill @e[type=armor_stand,name="main"]
summon armor_stand ~ ~ ~ {CustomName:'[{"text":"main"}]',Invisible:1b}
#effect give @e[type=armor_stand,name=main] invisibility 9999 1 true

# Tag the player so this only runs once
tag @s add init
