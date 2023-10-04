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
execute at @a if block ~ ~-1 ~ minecraft:air run scoreboard players set @a[tag=init] jumping 1

# Standing, looking right
execute as @a[scores={crouching=0,facing=0,jumping=0},tag=!intro,tag=!outro,tag=!timeout] run item replace entity @s armor.head with minecraft:leather_helmet
# Standing, looking left
execute as @a[scores={crouching=0,facing=1,jumping=0},tag=!intro,tag=!outro,tag=!timeout] run item replace entity @s armor.head with minecraft:chainmail_helmet
# Crouching, looking right
execute as @a[scores={crouching=1,facing=0},tag=!intro,tag=!outro,tag=!timeout] run item replace entity @s armor.head with minecraft:iron_helmet
# Crouching, looking left
execute as @a[scores={crouching=1,facing=1},tag=!intro,tag=!outro,tag=!timeout] run item replace entity @s armor.head with minecraft:golden_helmet
# Jumping, looking right
execute as @a[scores={crouching=0,facing=0,jumping=1},tag=!intro,tag=!outro,tag=!timeout] run item replace entity @s armor.head with minecraft:diamond_helmet
# Jumping, looking left
execute as @a[scores={crouching=0,facing=1,jumping=1},tag=!intro,tag=!outro,tag=!timeout] run item replace entity @s armor.head with minecraft:netherite_helmet

# ⍰
execute at @a[tag=init] if block ~ ~1.8 ~ minecraft:black_stained_glass run function smb:lotto
# 🧱
execute at @a[tag=init] if block ~ ~1.8 ~ minecraft:blue_concrete run playsound entity.item.break music @s
execute at @a[tag=init] if block ~ ~1.8 ~ minecraft:blue_concrete run setblock ~ ~1.8 ~ minecraft:air destroy
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
execute as @a[scores={countdown=0..,w1l1=0},tag=!intro] run scoreboard players remove @a countdown 1

# Update TIME based on countdown
execute as @a[scores={countdown=1..}] run function smb:timer

# Running out of time warning (100 remaining)
execute as @a[scores={countdown=2000}] run playsound music_disc.cat music @s

# Kill timed out player
tag @a[scores={countdown=0}] add timeout
execute as @a[tag=timeout] run function smb:timeout

# Increment timer if running
execute as @a[scores={timer=1..}] run scoreboard players add @a timer 1

# Reset player if they run all the way left
execute as @a[x=-1,y=64,z=0,distance=..1.5] run tag @s remove init

# Reset player if they run all the way right
execute as @a[x=223,y=64,z=0,distance=..1.5] run tag @s remove init
