scoreboard objectives add gm4_bas_id dummy
scoreboard objectives add gm4_bas_data dummy
scoreboard objectives add gm4_bas_mode dummy
scoreboard objectives add gm4_bas_turn dummy
scoreboard objectives add gm4_bas_dist dummy
scoreboard objectives add gm4_bas_dx dummy
scoreboard objectives add gm4_bas_dy dummy
scoreboard objectives add gm4_bas_dz dummy

scoreboard players set #1500 gm4_bas_data 1500

team add gm4_bas
team modify gm4_bas collisionRule never

data modify storage gm4_better_armour_stands:default Pose set value {Head:[0.01f, 0.0f, 0.0f],Body:[0.01f, 0.0f, 0.0f],LeftArm:[-10.01f, 0.0f, -10.0f],RightArm:[-15.01f, 0.0f, 10.0f],LeftLeg:[-1.01f, 0.0f, -1.0f],RightLeg:[1.01f, 0.0f, 1.0f]}

execute unless score better_armour_stands gm4_modules matches 19002 run data modify storage gm4:log queue append value {type:"install",module:"Better Armour Stands"}
scoreboard players set better_armour_stands gm4_modules 19002

schedule function gm4_better_armour_stands:main 1t
schedule function gm4_better_armour_stands:tick 1t

# guidebook
execute if score gm4_guidebook load.status matches 1 run summon marker ~ 455.770245686322 ~ {CustomName:'"gm4_better_armour_stands_guide"',Tags:["gm4_guide"],data:{type:"base",expansions:[],id:"better_armour_stands",page_count:5,line_count:2,module_name:"Better Armour Stands"}}

# Module update list
data remove storage gm4:log queue[{type:"outdated"}]
execute if score animi_shamir gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Animi Shamir"}
execute if score apple_trees gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Apple Trees"}
execute if score audere_shamir gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Audere Shamir"}
execute if score bat_grenades gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Bat Grenades"}
execute if score beehive_inspector gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Beehive Inspector"}
execute if score better_armour_stands gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Better Armour Stands"}
execute if score better_fire gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Better Fire"}
execute if score block_compressors gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Block Compressors"}
execute if score book_binders gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Book Binders"}
execute if score boots_of_ostara gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Boots of Ostara"}
execute if score cement_mixers gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Cement Mixers"}
execute if score chairs gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Chairs"}
execute if score cooler_caves gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Cooler Caves"}
execute if score cozy_campfires gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Cozy Campfires"}
execute if score crossbow_cartridges gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Crossbow Cartridges"}
execute if score dangerous_dungeons gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Dangerous Dungeons"}
execute if score desire_lines gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Desire Lines"}
execute if score disassemblers gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Disassemblers"}
execute if score display_frames gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Display Frames"}
execute if score dripleaf_filters gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Dripleaf Filters"}
execute if score enchantment_extractors gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Enchantment Extractors"}
execute if score end_fishing gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"End Fishing"}
execute if score ender_hoppers gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Ender Hoppers"}
execute if score enderman_support_class gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Enderman Support Class"}
execute if score everstone gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Everstone"}
execute if score forming_press gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Forming Press"}
execute if score fulcio_shamir gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Fulcio Shamir"}
execute if score guidebook gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Guidebook"}
execute if score heart_canisters gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Heart Canisters"}
execute if score holographic_tags gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Holographic Tags"}
execute if score iacio_shamir gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Iacio Shamir"}
execute if score ink_spitting_squid gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Ink Spitting Squid"}
execute if score lightning_in_a_bottle gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Lightning in a Bottle"}
execute if score liquid_minecarts gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Liquid Minecarts"}
execute if score liquid_tanks gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Liquid Tanks"}
execute if score live_catch gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Live Catch"}
execute if score lumos_shamir gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Lumos Shamir"}
execute if score mending_tanks gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Mending Tanks"}
execute if score metallurgy gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Metallurgy"}
execute if score midnight_menaces gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Midnight Menaces"}
execute if score mob_curing gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Mob Curing"}
execute if score mysterious_midnights gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Mysterious Midnights"}
execute if score note_block_interface gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Note Block Interface"}
execute if score orb_of_ankou gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Orb of Ankou"}
execute if score orbis gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Orbis"}
execute if score particles_pack gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Particles Pack"}
execute if score percurro_shamir gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Percurro Shamir"}
execute if score phantom_scarecrows gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Phantom Scarecrows"}
execute if score pig_tractors gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Pig Tractors"}
execute if score podzol_rooting_soil gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Podzol Rooting Soil"}
execute if score poses_pack gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Poses Pack"}
execute if score potion_liquids gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Potion Liquids"}
execute if score potion_swords gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Potion Swords"}
execute if score record_crafting gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Record Crafting"}
execute if score relocators gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Relocators"}
execute if score rope_ladders gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Rope Ladders"}
execute if score scuba_gear gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"SCUBA Gear"}
execute if score shroomites gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Shroomites"}
execute if score smelteries gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Smelteries"}
execute if score soul_glass gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Soul Glass"}
execute if score spawner_minecarts gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Spawner Minecarts"}
execute if score speed_paths gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Speed Paths"}
execute if score standard_crafting gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Standard Crafting"}
execute if score sunken_treasure gm4_modules matches ..19002 run data modify storage gm4:log queue append value {type:"outdated",module:"Sunken Treasure"}
execute if score sweethearts gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Sweethearts"}
execute if score tinkering_compressors gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Tinkering Compressors"}
execute if score tnt_landmines gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"TNT Landmines"}
execute if score tower_structures gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Tower Structures"}
execute if score trapped_signs gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Trapped Signs"}
execute if score tunnel_bores gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Tunnel Bores"}
execute if score undead_players gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Undead Players"}
execute if score vecto_shamir gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Vecto Shamir"}
execute if score vertical_rails gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Vertical Rails"}
execute if score vigere_shamir gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Vigere Shamir"}
execute if score washing_tanks gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Washing Tanks"}
execute if score weighted_armour gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Weighted Armour"}
execute if score xp_storage gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"XP Storage"}
execute if score zauber_cauldrons gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Zauber Cauldrons"}
execute if score zauber_liquids gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Zauber Liquids"}
execute if score ziprails gm4_modules matches ..19001 run data modify storage gm4:log queue append value {type:"outdated",module:"Ziprails"}
