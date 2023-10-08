# Luigi Small - Standing, looking right
execute as @a[scores={crouching=0,facing=0,jumping=0,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:1}
# Luigi Small - Standing, looking left
execute as @a[scores={crouching=0,facing=1,jumping=0,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:2}
# Luigi Small - Crouching, looking right
execute as @a[scores={crouching=1,facing=0,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:4}
# Luigi Small - Crouching, looking left
execute as @a[scores={crouching=1,facing=1,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:5}
# Luigi Small - Jumping, looking right
execute as @a[scores={crouching=0,facing=0,jumping=1,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:6} 
# Luigi Small - Jumping, looking left
execute as @a[scores={crouching=0,facing=1,jumping=1,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:7} 

# Luigi Big - Standing, looking right
execute as @a[scores={crouching=0,facing=0,jumping=0,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:1}
# Luigi Big - Standing, looking left
execute as @a[scores={crouching=0,facing=1,jumping=0,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:2}
# Luigi Big - Crouching, looking right
execute as @a[scores={crouching=1,facing=0,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:4}
# Luigi Big - Crouching, looking left
execute as @a[scores={crouching=1,facing=1,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:5}
# Luigi Big - Jumping, looking right
execute as @a[scores={crouching=0,facing=0,jumping=1,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:6} 
# Luigi Big - Jumping, looking left
execute as @a[scores={crouching=0,facing=1,jumping=1,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:7} 
