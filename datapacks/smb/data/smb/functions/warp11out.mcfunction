#
execute as @a[scores={timer=0}] run scoreboard players set @s timer 1

execute as @a[scores={timer=1}] run playsound entity.experience_orb.pickup music @s
execute at @a[scores={timer=1..10}] run teleport ~0.1 ~ ~
execute at @a[scores={timer=11}] run teleport @s 162.0 66 0

execute as @a[scores={timer=12}] run tag @s remove warp11out

execute as @a[scores={timer=12}] run scoreboard players set @s timer 0
