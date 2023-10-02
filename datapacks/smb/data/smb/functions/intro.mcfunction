execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run function smb:resetw1l1
#execute as @a[scores={timer=1}] run camera @s set minecraft:first_person
execute as @a[scores={timer=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin

#execute as @a[scores={timer=80}] run camera @s set minecraft:third_person
execute as @a[scores={timer=80}] run item replace entity @s armor.head with minecraft:leather_helmet
execute as @a[scores={timer=80}] run playsound music_disc.11 player @s
execute as @a[scores={timer=80}] run tag @a remove intro

execute as @a[scores={timer=80}] run scoreboard players set @a timer 0
