# Luigi Small - Standing, looking right
execute as @a[scores={crouching=0,facing=0,jumping=0,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:21}
# Luigi Small - Standing, looking left
execute as @a[scores={crouching=0,facing=1,jumping=0,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:22}
# Luigi Small - Crouching, looking right
execute as @a[scores={crouching=1,facing=0,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:23}
# Luigi Small - Crouching, looking left
execute as @a[scores={crouching=1,facing=1,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:24}
# Luigi Small - Jumping, looking right
execute as @a[scores={crouching=0,facing=0,jumping=1,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:25} 
# Luigi Small - Jumping, looking left
execute as @a[scores={crouching=0,facing=1,jumping=1,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:26} 

# Luigi Big - Standing, looking right
execute as @a[scores={crouching=0,facing=0,jumping=0,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:14}
# Luigi Big - Standing, looking left
execute as @a[scores={crouching=0,facing=1,jumping=0,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:15}
# Luigi Big - Crouching, looking right
execute as @a[scores={crouching=1,facing=0,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:17}
# Luigi Big - Crouching, looking left
execute as @a[scores={crouching=1,facing=1,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:18}
# Luigi Big - Jumping, looking right
execute as @a[scores={crouching=0,facing=0,jumping=1,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:19} 
# Luigi Big - Jumping, looking left
execute as @a[scores={crouching=0,facing=1,jumping=1,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:20} 
