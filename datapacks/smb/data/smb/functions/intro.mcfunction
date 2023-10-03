execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run function smb:resetw1l1
execute as @a[scores={timer=1}] run effect give @s instant_health 1 255 true
execute as @a[scores={timer=1}] run effect give @s saturation 1 255 true
#execute as @a[scores={timer=1}] run camera @s set minecraft:first_person
execute as @a[scores={timer=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin

#execute as @a[scores={timer=80}] run camera @s set minecraft:third_person
execute as @a[scores={timer=80}] run item replace entity @s armor.head with minecraft:leather_helmet
execute as @a[scores={timer=80}] run playsound music_disc.11 music @s
execute as @a[scores={timer=80}] run tag @a remove intro

execute as @a[scores={timer=80}] run scoreboard players set @a timer 0
