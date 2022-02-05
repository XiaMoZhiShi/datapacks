advancement revoke @s only nifeather_extras:mechanics/drink_lmb_potion

execute unless predicate nifeather_extras:in_limbo run tellraw @s "什么事都没发生...\n你意识到你可能白白浪费了一瓶很重要的饮料。"
execute if predicate nifeather_extras:in_limbo run effect give @s glowing 60 2