execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run playsound entity.experience_orb.pickup player @s
execute at @a[scores={timer=1..10}] run teleport ~ ~-0.1 ~
execute at @a[scores={timer=11}] run teleport @s 53 56 0

execute as @a[scores={timer=12}] run playsound music_disc.blocks player @s
execute as @a[scores={timer=12}] run tag @a remove warp11in

execute as @a[scores={timer=12}] run scoreboard players set @a timer 0
