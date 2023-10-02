execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run scoreboard players set @a w1l1 1
execute as @a[scores={timer=1}] run playsound music_disc.13 music @s
execute at @a[scores={timer=1..10}] run teleport ~0.1 ~-0.1 ~
execute at @a[scores={timer=11..56}] run teleport ~0.1 64 ~

execute as @a[scores={timer=100}] run summon minecraft:firework_rocket 202 64 0
execute as @a[scores={timer=100}] run summon minecraft:firework_rocket 204 64 0
execute as @a[scores={timer=100}] run tag @a remove outro

execute as @a[scores={timer=100}] run scoreboard players set @a timer 0
