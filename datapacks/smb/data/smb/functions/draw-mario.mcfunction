# Mario Small - Standing, looking right
execute as @a[scores={crouching=0,facing=0,jumping=0,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:1}
# Mario Small - Standing, looking left
execute as @a[scores={crouching=0,facing=1,jumping=0,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:2}
# Mario Small - Crouching, looking right
execute as @a[scores={crouching=1,facing=0,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:4}
# Mario Small - Crouching, looking left
execute as @a[scores={crouching=1,facing=1,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:5}
# Mario Small - Jumping, looking right
execute as @a[scores={crouching=0,facing=0,jumping=1,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:6} 
# Mario Small - Jumping, looking left
execute as @a[scores={crouching=0,facing=1,jumping=1,size=0}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:7} 

# Mario Big - Standing, looking right
execute as @a[scores={crouching=0,facing=0,jumping=0,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:1}
# Mario Big - Standing, looking left
execute as @a[scores={crouching=0,facing=1,jumping=0,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:2}
# Mario Big - Crouching, looking right
execute as @a[scores={crouching=1,facing=0,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:4}
# Mario Big - Crouching, looking left
execute as @a[scores={crouching=1,facing=1,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:5}
# Mario Big - Jumping, looking right
execute as @a[scores={crouching=0,facing=0,jumping=1,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:6} 
# Mario Big - Jumping, looking left
execute as @a[scores={crouching=0,facing=1,jumping=1,size=1}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:7} 
