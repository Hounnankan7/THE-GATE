--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings" 
    require "data/classes/_load_class"
   

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

function PlayerCreation(choix_character) --Fonction creation du perso du player

    player = {}

    if choix_character == 1 then

        player.id = swordman_class.id
        player.class_name = swordman_class.class_name
        player.character_name = swordman_class.character_name
        player.fight_image = swordman_class.fight_image
        player.portrait_image = swordman_class.portrait_image
        player.level = swordman_class.level
        player.max_level = swordman_class.max_level
        player.health = swordman_class.health
        player.max_health = swordman_class.max_health
        player.mana = swordman_class.mana
        player.max_mana = swordman_class.max_mana
        player.strength = swordman_class.strength
        player.intelligence = swordman_class.intelligence
        player.def_physic = swordman_class.def_physic
        player.def_magic = swordman_class.def_magic
        player.dexterity = swordman_class.dexterity
        player.speed = swordman_class.speed
        player.mixing = swordman_class.mixing
        player.cooking = swordman_class.cooking
        player.smithing = swordman_class.smithing
        player.writing = swordman_class.writing
        player.foraging = swordman_class.foraging
        player.weaving = swordman_class.weaving
        player.gathering = swordman_class.gathering
        player.exp_actuel = swordman_class.exp_actuel
        player.exp_next_level = swordman_class.exp_next_level
        

    elseif choix_character == 2 then
        
        player.id = samurai_class.id
        player.class_name = samurai_class.class_name
        player.character_name = samurai_class.character_name
        player.fight_image = samurai_class.fight_image
        player.portrait_image = samurai_class.portrait_image
        player.level = samurai_class.level
        player.max_level = samurai_class.max_level
        player.health = samurai_class.health
        player.max_health = samurai_class.max_health
        player.mana = samurai_class.mana
        player.max_mana = samurai_class.max_mana
        player.strength = samurai_class.strength
        player.intelligence = samurai_class.intelligence
        player.def_physic = samurai_class.def_physic
        player.def_magic = samurai_class.def_magic
        player.dexterity = samurai_class.dexterity
        player.speed = samurai_class.speed
        player.mixing = samurai_class.mixing
        player.cooking = samurai_class.cooking
        player.smithing = samurai_class.smithing
        player.writing = samurai_class.writing
        player.foraging = samurai_class.foraging
        player.weaving = samurai_class.weaving
        player.gathering = samurai_class.gathering
        player.exp_actuel = samurai_class.exp_actuel
        player.exp_next_level = samurai_class.exp_next_level

    elseif choix_character == 3 then

        player.id = spearman_class.id
        player.class_name = spearman_class.class_name
        player.character_name = spearman_class.character_name
        player.fight_image = spearman_class.fight_image
        player.portrait_image = spearman_class.portrait_image
        player.level = spearman_class.level
        player.max_level = spearman_class.max_level
        player.health = spearman_class.health
        player.max_health = spearman_class.max_health
        player.mana = spearman_class.mana
        player.max_mana = spearman_class.max_mana
        player.strength = spearman_class.strength
        player.intelligence = spearman_class.intelligence
        player.def_physic = spearman_class.def_physic
        player.def_magic = spearman_class.def_magic
        player.dexterity = spearman_class.dexterity
        player.speed = spearman_class.speed
        player.mixing = spearman_class.mixing
        player.cooking = spearman_class.cooking
        player.smithing = spearman_class.smithing
        player.writing = spearman_class.writing
        player.foraging = spearman_class.foraging
        player.weaving = spearman_class.weaving
        player.gathering = spearman_class.gathering
        player.exp_actuel = spearman_class.exp_actuel
        player.exp_next_level = spearman_class.exp_next_level

    elseif choix_character == 4 then

        player.id = archer_class.id
        player.class_name = archer_class.class_name
        player.character_name = archer_class.character_name
        player.fight_image = archer_class.fight_image
        player.portrait_image = archer_class.portrait_image
        player.level = archer_class.level
        player.max_level = archer_class.max_level
        player.health = archer_class.health
        player.max_health = archer_class.max_health
        player.mana = archer_class.mana
        player.max_mana = archer_class.max_mana
        player.strength = archer_class.strength
        player.intelligence = archer_class.intelligence
        player.def_physic = archer_class.def_physic
        player.def_magic = archer_class.def_magic
        player.dexterity = archer_class.dexterity
        player.speed = archer_class.speed
        player.mixing = archer_class.mixing
        player.cooking = archer_class.cooking
        player.smithing = archer_class.smithing
        player.writing = archer_class.writing
        player.foraging = archer_class.foraging
        player.weaving = archer_class.weaving
        player.gathering = archer_class.gathering
        player.exp_actuel = archer_class.exp_actuel
        player.exp_next_level = archer_class.exp_next_level

    elseif choix_character == 5 then

        player.id = sniper_class.id
        player.class_name = sniper_class.class_name
        player.character_name = sniper_class.character_name
        player.fight_image = sniper_class.fight_image
        player.portrait_image = sniper_class.portrait_image
        player.level = sniper_class.level
        player.max_level = sniper_class.max_level
        player.health = sniper_class.health
        player.max_health = sniper_class.max_health
        player.mana = sniper_class.mana
        player.max_mana = sniper_class.max_mana
        player.strength = sniper_class.strength
        player.intelligence = sniper_class.intelligence
        player.def_physic = sniper_class.def_physic
        player.def_magic = sniper_class.def_magic
        player.dexterity = sniper_class.dexterity
        player.speed = sniper_class.speed
        player.mixing = sniper_class.mixing
        player.cooking = sniper_class.cooking
        player.smithing = sniper_class.smithing
        player.writing = sniper_class.writing
        player.foraging = sniper_class.foraging
        player.weaving = sniper_class.weaving
        player.gathering = sniper_class.gathering
        player.exp_actuel = sniper_class.exp_actuel
        player.exp_next_level = sniper_class.exp_next_level

    elseif choix_character == 6 then

        player.id = ninja_class.id
        player.class_name = ninja_class.class_name
        player.character_name = ninja_class.character_name
        player.fight_image = ninja_class.fight_image
        player.portrait_image = ninja_class.portrait_image
        player.level = ninja_class.level
        player.max_level = ninja_class.max_level
        player.health = ninja_class.health
        player.max_health = ninja_class.max_health
        player.mana = ninja_class.mana
        player.max_mana = ninja_class.max_mana
        player.strength = ninja_class.strength
        player.intelligence = ninja_class.intelligence
        player.def_physic = ninja_class.def_physic
        player.def_magic = ninja_class.def_magic
        player.dexterity = ninja_class.dexterity
        player.speed = ninja_class.speed
        player.mixing = ninja_class.mixing
        player.cooking = ninja_class.cooking
        player.smithing = ninja_class.smithing
        player.writing = ninja_class.writing
        player.foraging = ninja_class.foraging
        player.weaving = ninja_class.weaving
        player.gathering = ninja_class.gathering
        player.exp_actuel = ninja_class.exp_actuel
        player.exp_next_level = ninja_class.exp_next_level

    elseif choix_character == 7 then

        player.id = mage_class.id
        player.class_name = mage_class.class_name
        player.character_name = mage_class.character_name
        player.fight_image = mage_class.fight_image
        player.portrait_image = mage_class.portrait_image
        player.level = mage_class.level
        player.max_level = mage_class.max_level
        player.health = mage_class.health
        player.max_health = mage_class.max_health
        player.mana = mage_class.mana
        player.max_mana = mage_class.max_mana
        player.strength = mage_class.strength
        player.intelligence = mage_class.intelligence
        player.def_physic = mage_class.def_physic
        player.def_magic = mage_class.def_magic
        player.dexterity = mage_class.dexterity
        player.speed = mage_class.speed
        player.mixing = mage_class.mixing
        player.cooking = mage_class.cooking
        player.smithing = mage_class.smithing
        player.writing = mage_class.writing
        player.foraging = mage_class.foraging
        player.weaving = mage_class.weaving
        player.gathering = mage_class.gathering
        player.exp_actuel = mage_class.exp_actuel
        player.exp_next_level = mage_class.exp_next_level

    elseif choix_character == 8 then

        player.id = martial_artist_class.id
        player.class_name = martial_artist_class.class_name
        player.character_name = martial_artist_class.character_name
        player.fight_image = martial_artist_class.fight_image
        player.portrait_image = martial_artist_class.portrait_image
        player.level = martial_artist_class.level
        player.max_level = martial_artist_class.max_level
        player.health = martial_artist_class.health
        player.max_health = martial_artist_class.max_health
        player.mana = martial_artist_class.mana
        player.max_mana = martial_artist_class.max_mana
        player.strength = martial_artist_class.strength
        player.intelligence = martial_artist_class.intelligence
        player.def_physic = martial_artist_class.def_physic
        player.def_magic = martial_artist_class.def_magic
        player.dexterity = martial_artist_class.dexterity
        player.speed = martial_artist_class.speed
        player.mixing = martial_artist_class.mixing
        player.cooking = martial_artist_class.cooking
        player.smithing = martial_artist_class.smithing
        player.writing = martial_artist_class.writing
        player.foraging = martial_artist_class.foraging
        player.weaving = martial_artist_class.weaving
        player.gathering = martial_artist_class.gathering
        player.exp_actuel = martial_artist_class.exp_actuel
        player.exp_next_level = martial_artist_class.exp_next_level

    elseif choix_character == 9 then

        player.id = berseker_class.id
        player.class_name = berseker_class.class_name
        player.character_name = berseker_class.character_name
        player.fight_image = berseker_class.fight_image
        player.portrait_image = berseker_class.portrait_image
        player.level = berseker_class.level
        player.max_level = berseker_class.max_level
        player.health = berseker_class.health
        player.max_health = berseker_class.max_health
        player.mana = berseker_class.mana
        player.max_mana = berseker_class.max_mana
        player.strength = berseker_class.strength
        player.intelligence = berseker_class.intelligence
        player.def_physic = berseker_class.def_physic
        player.def_magic = berseker_class.def_magic
        player.dexterity = berseker_class.dexterity
        player.speed = berseker_class.speed
        player.mixing = berseker_class.mixing
        player.cooking = berseker_class.cooking
        player.smithing = berseker_class.smithing
        player.writing = berseker_class.writing
        player.foraging = berseker_class.foraging
        player.weaving = berseker_class.weaving
        player.gathering = berseker_class.gathering
        player.exp_actuel = berseker_class.exp_actuel
        player.exp_next_level = berseker_class.exp_next_level

    elseif choix_character == 10 then

        player.id = alchimist_class.id
        player.class_name = alchimist_class.class_name
        player.character_name = alchimist_class.character_name
        player.fight_image = alchimist_class.fight_image
        player.portrait_image = alchimist_class.portrait_image
        player.level = alchimist_class.level
        player.max_level = alchimist_class.max_level
        player.health = alchimist_class.health
        player.max_health = alchimist_class.max_health
        player.mana = alchimist_class.mana
        player.max_mana = alchimist_class.max_mana
        player.strength = alchimist_class.strength
        player.intelligence = alchimist_class.intelligence
        player.def_physic = alchimist_class.def_physic
        player.def_magic = alchimist_class.def_magic
        player.dexterity = alchimist_class.dexterity
        player.speed = alchimist_class.speed
        player.mixing = alchimist_class.mixing
        player.cooking = alchimist_class.cooking
        player.smithing = alchimist_class.smithing
        player.writing = alchimist_class.writing
        player.foraging = alchimist_class.foraging
        player.weaving = alchimist_class.weaving
        player.gathering = alchimist_class.gathering
        player.exp_actuel = alchimist_class.exp_actuel
        player.exp_next_level = alchimist_class.exp_next_level

    elseif choix_character == 11 then

        player.id = blacksmith_class.id
        player.class_name = blacksmith_class.class_name
        player.character_name = blacksmith_class.character_name
        player.fight_image = blacksmith_class.fight_image
        player.portrait_image = blacksmith_class.portrait_image
        player.level = blacksmith_class.level
        player.max_level = blacksmith_class.max_level
        player.health = blacksmith_class.health
        player.max_health = blacksmith_class.max_health
        player.mana = blacksmith_class.mana
        player.max_mana = blacksmith_class.max_mana
        player.strength = blacksmith_class.strength
        player.intelligence = blacksmith_class.intelligence
        player.def_physic = blacksmith_class.def_physic
        player.def_magic = blacksmith_class.def_magic
        player.dexterity = blacksmith_class.dexterity
        player.speed = blacksmith_class.speed
        player.mixing = blacksmith_class.mixing
        player.cooking = blacksmith_class.cooking
        player.smithing = blacksmith_class.smithing
        player.writing = blacksmith_class.writing
        player.foraging = blacksmith_class.foraging
        player.weaving = blacksmith_class.weaving
        player.gathering = blacksmith_class.gathering
        player.exp_actuel = blacksmith_class.exp_actuel
        player.exp_next_level = blacksmith_class.exp_next_level

    elseif choix_character == 12 then

        player.id = cook_class.id
        player.class_name = cook_class.class_name
        player.character_name = cook_class.character_name
        player.fight_image = cook_class.fight_image
        player.portrait_image = cook_class.portrait_image
        player.level = cook_class.level
        player.max_level = cook_class.max_level
        player.health = cook_class.health
        player.max_health = cook_class.max_health
        player.mana = cook_class.mana
        player.max_mana = cook_class.max_mana
        player.strength = cook_class.strength
        player.intelligence = cook_class.intelligence
        player.def_physic = cook_class.def_physic
        player.def_magic = cook_class.def_magic
        player.dexterity = cook_class.dexterity
        player.speed = cook_class.speed
        player.mixing = cook_class.mixing
        player.cooking = cook_class.cooking
        player.smithing = cook_class.smithing
        player.writing = cook_class.writing
        player.foraging = cook_class.foraging
        player.weaving = cook_class.weaving
        player.gathering = cook_class.gathering
        player.exp_actuel = cook_class.exp_actuel
        player.exp_next_level = cook_class.exp_next_level

    elseif choix_character == 13 then

        player.id = scibe_class.id
        player.class_name = scibe_class.class_name
        player.character_name = scibe_class.character_name
        player.fight_image = scibe_class.fight_image
        player.portrait_image = scibe_class.portrait_image
        player.level = scibe_class.level
        player.max_level = scibe_class.max_level
        player.health = scibe_class.health
        player.max_health = scibe_class.max_health
        player.mana = scibe_class.mana
        player.max_mana = scibe_class.max_mana
        player.strength = scibe_class.strength
        player.intelligence = scibe_class.intelligence
        player.def_physic = scibe_class.def_physic
        player.def_magic = scibe_class.def_magic
        player.dexterity = scibe_class.dexterity
        player.speed = scibe_class.speed
        player.mixing = scibe_class.mixing
        player.cooking = scibe_class.cooking
        player.smithing = scibe_class.smithing
        player.writing = scibe_class.writing
        player.foraging = scibe_class.foraging
        player.weaving = scibe_class.weaving
        player.gathering = scibe_class.gathering
        player.exp_actuel = scibe_class.exp_actuel
        player.exp_next_level = scibe_class.exp_next_level

    end

end

function drawPlayer() -- Dessin du joueur
    
end

---------------------------------------------------------------------------------------------