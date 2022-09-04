# from: ./use
# @s: player failed to teleport

tellraw @s {"text": "The scroll of returning only understands the Nether Dimension!", "italic": true, "color": "#D393F5"}

execute store result score $rand in.dummy if predicate incendium:random/80
function incendium:item/patron/scroll_of_returning/crumble