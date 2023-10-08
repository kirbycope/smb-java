# Initialize new players
execute as @a[tag=!init] run function smb:init-player

# WASD detection (0=right, 1=left)
execute at @e[type=armor_stand,name="main"] positioned ^1 ^ ^ as @e[distance=..0.9] run scoreboard players set @s facing 1
execute at @e[type=armor_stand,name="main"] positioned ^-1 ^ ^ as @e[distance=..0.9] run scoreboard players set @s facing 0
execute at @a[tag=init] run tp @e[name="main",limit=1] ~ ~ ~ facing ^ ^ ^10

# Crouch detection (0=false, true=1)
execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dx=0] run scoreboard players set @s crouching 1
execute as @a at @s positioned ~ ~1.5 ~ if entity @s[dx=0] run scoreboard players set @s crouching 0

# Jump detection (0=false, true=1)
scoreboard players set @a[tag=init] jumping 0
execute at @a if block ~ ~-1 ~ minecraft:air run scoreboard players set @p jumping 1

# Draw character
execute as @a[tag=mario,tag=!intro,tag=!outro,tag=!timeout] run function smb:draw-mario
execute as @a[tag=luigi,tag=!intro,tag=!outro,tag=!timeout] run function smb:draw-luigi

# ⍰
execute at @a[tag=init] if block ~ ~1.8 ~ minecraft:black_stained_glass run function smb:lotto
# 🧱
execute at @a[scores={size=1},tag=init] if block ~ ~1.8 ~ minecraft:blue_concrete run playsound entity.item.break music @p
execute at @a[scores={size=1},tag=init] if block ~ ~1.8 ~ minecraft:blue_concrete run setblock ~ ~1.8 ~ minecraft:air destroy
kill @e[type=item]
# ⍰ (Hidden)
execute at @a[tag=init] if block ~ ~1.8 ~ minecraft:glow_lichen run function smb:lotto
# 🪙
execute at @a[tag=init] if block ~ ~ ~ minecraft:sculk_vein run function smb:lotto
execute at @a[tag=init] if block ~ ~1 ~ minecraft:sculk_vein run function smb:lotto

# Level 1 - Intro ("Loading Screen")
execute as @a[tag=intro] run function smb:intro
# Level 1 - Warp Pipe In
execute as @a[tag=!warp11in,x=56.5,y=68,z=0,distance=..1] run execute as @a at @s positioned ~ ~1.5 ~ unless entity @s[dx=0] run tag @s add warp11in
execute as @a[tag=warp11in] run function smb:warp11in
# Level 1 - Warp Pipe Out
execute as @a[tag=!warp11out,x=64,y=49,z=0,distance=..0.8] run tag @s add warp11out
execute as @a[tag=warp11out] run function smb:warp11out
# Level 1 - Outro (Flag Pole)
execute as @a[tag=!outro,x=197,y=65,z=0,distance=..1] run tag @s add outro
execute as @a[tag=outro] run function smb:outro

# Decrement countdown if running and level not beat
execute as @a[scores={countdown=0..,w1l1=0},tag=!intro] run scoreboard players remove @s countdown 1

# Update TIME based on countdown
execute as @a[scores={countdown=1..}] run function smb:timer

# Running out of time warning (100 remaining)
execute as @a[scores={countdown=2000}] run playsound music_disc.cat music @s

# Kill falling player
execute as @a at @s run tag @a[y=46,dy=-2] add timeout

# Kill timed out player
tag @a[scores={countdown=0}] add timeout
execute as @a[tag=timeout] run function smb:timeout

# Increment timer if running
execute as @a[scores={timer=1..}] run scoreboard players add @s timer 1

# Reset player if they run all the way left
execute as @a[x=-1,y=64,z=0,distance=..1.5] run tag @s remove init

# Reset player if they run all the way right
execute as @a[x=223,y=64,z=0,distance=..1.5] run tag @s remove init
