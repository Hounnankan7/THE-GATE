--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------
    
    function characterSelection_Init()

        ui_selection = love.graphics.newImage("assets/interfaces/04_character_select.png")
        cursor_character = {}
        cursor_character.spritesheet = love.graphics.newImage("assets/interfaces/character_selector.png")
        cursor_character.grid = anim8.newGrid(149, 66, cursor_character.spritesheet:getWidth(), cursor_character.spritesheet:getHeight())
        cursor_character.x = 28*tileSize
        cursor_character.y = 13.29*tileSize
        cursor_character.animation = anim8.newAnimation(cursor_character.grid('1-14', 1), 0.15)

        ui_class = {}
        --Image class
        ui_class.image = love.graphics.newImage("assets/images/playeables_class/class_images/swordman.png")
        ui_class.class_name = "CLASS : ".."Swordman"

        --Fight Stats
        ui_class.health_point = "HP : ".."0"
        ui_class.magic_point = "MP : ".."0"
        ui_class.strength = "Strength : ".."0"
        ui_class.intelligence = "Intelligence : ".."0"
        ui_class.defense_physique = "Defense Physique : ".."0"
        ui_class.defense_magic = "Defense Magic : ".."0"
        ui_class.dexterity = "Dexterity : ".."0"
        ui_class.speed = "Speed : ".."0"

        --Craft Stats
        ui_class.mixing = "Mixing : ".."0"
        ui_class.cooking = "Cooking : ".."0"
        ui_class.smithing = "Smithing : ".."0"
        ui_class.writting = "Writing : ".."0"
        ui_class.foraging = "Foraging : ".."0"
        ui_class.weaving = "Weaving : ".."0"
        ui_class.gathering = "Gathering : ".."0"
        
    end

    function characterSelection_UI_Update()
      
        PlayerCreation(character_choice)

        ui_class.image = player.fight_image
        ui_class.class_name = "CLASS : "..player.class_name

        --Fight Stats
        ui_class.health_point = "HP : "..player.health
        ui_class.magic_point = "MP : "..player.mana
        ui_class.strength = "Strength : "..player.strength
        ui_class.intelligence = "Intelligence : "..player.intelligence
        ui_class.defense_physique = "Defense Physique : "..player.def_physic
        ui_class.defense_magic = "Defense Magic : "..player.def_magic
        ui_class.dexterity = "Dexterity : "..player.dexterity
        ui_class.speed = "Speed : "..player.speed

        --Craft Stats
        ui_class.mixing = "Mixing : "..player.mixing
        ui_class.cooking = "Cooking : "..player.cooking
        ui_class.smithing = "Smithing : "..player.smithing
        ui_class.writting = "Writing : "..player.writing
        ui_class.foraging = "Foraging : "..player.foraging
        ui_class.weaving = "Weaving : "..player.weaving
        ui_class.gathering = "Gathering : "..player.gathering

    end


    function action_UI_CharacterSelection(interface_choice,dt) -- Fonction executer pour faire le choix

        if interface_choice == 4 and love.mouse.isDown(1) then

            -- Récupération de la position du curseur en pixels
            local x = love.mouse.getX()
            local y = love.mouse.getY()
            -- Conversion pixer vers cases de la grille
            mousePosX = math.floor((x/16)+1)
            mousePosY = math.floor((y/16)+1)

            if mousePosY >= 22.9 and mousePosY <= 25 and mousePosX >= 4 and mousePosX <= 13.5 then -- Clique sur fight stats

                interface_state = "stat_fight"

            elseif mousePosY >= 22.9 and mousePosY <= 25 and mousePosX >= 14 and mousePosX <= 25 then -- Clique sur craft stats

                interface_state = "stat_craft"
            
            end
        
        end

        if love.keyboard.isDown("w") then

            PlayerCreation(player.id)
            interface_choice = 5
            delay_s(0.2)

        end

        return interface_choice
    end


    function draw_CharacterSelection()

        love.graphics.draw(ui_selection, 0*tileSize, 0*tileSize)
        --Image class
        love.graphics.draw(ui_class.image, 6*tileSize, 12*tileSize, 0, 2.5)
        love.graphics.setFont(font_quard)
        love.graphics.print(ui_class.class_name, 4*tileSize, 27*tileSize)

        if interface_state == "stat_fight" then

            love.graphics.rectangle("line", 4*tileSize, 22.9*tileSize, 9.6*tileSize, 2.3*tileSize)
            --Fight Stats
            love.graphics.print(ui_class.health_point, 4*tileSize, 29*tileSize)
            love.graphics.print(ui_class.magic_point, 4*tileSize, 31*tileSize)
            love.graphics.print(ui_class.strength, 4*tileSize, 33*tileSize)
            love.graphics.print(ui_class.intelligence, 4*tileSize, 35*tileSize)
            love.graphics.print(ui_class.defense_physique, 4*tileSize, 37*tileSize)
            love.graphics.print(ui_class.defense_magic, 4*tileSize, 39*tileSize)
            love.graphics.print(ui_class.dexterity, 4*tileSize, 41*tileSize)
            love.graphics.print(ui_class.speed, 4*tileSize, 43*tileSize)

        elseif interface_state == "stat_craft" then
            
            love.graphics.rectangle("line", 13.9*tileSize, 22.9*tileSize, 9.6*tileSize, 2.3*tileSize)
            --Craft Stats
            love.graphics.print(ui_class.mixing, 4*tileSize, 29*tileSize)
            love.graphics.print(ui_class.cooking, 4*tileSize, 31*tileSize)
            love.graphics.print(ui_class.smithing, 4*tileSize, 33*tileSize)
            love.graphics.print(ui_class.writting, 4*tileSize, 35*tileSize)
            love.graphics.print(ui_class.foraging, 4*tileSize, 37*tileSize)
            love.graphics.print(ui_class.weaving, 4*tileSize, 39*tileSize)
            love.graphics.print(ui_class.gathering, 4*tileSize, 41*tileSize) 

        end
        
    end

    function cursor_Movement_CharacterSelection(interface_choice)
        -- Déplacement du curseur sur interface
        if interface_choice == 4 then
            
            -- 1ere case ligne 1
            if cursor_character.x == 28*tileSize and cursor_character.y == 13.29*tileSize then
                character_choice = 1
                if love.keyboard.isDown("down") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.01)   
                end

            -- 2eme case ligne 1  
            elseif cursor_character.x == 38*tileSize and cursor_character.y == 13.29*tileSize then
                character_choice = 2
                if love.keyboard.isDown("down") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.01) 
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.01)   
                end
            -- 3eme case ligne 1  
            elseif cursor_character.x == 48*tileSize and cursor_character.y == 13.29*tileSize then
                character_choice = 3
                if love.keyboard.isDown("down") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.01)   
                end

            -- 1ere case ligne 2  
            elseif cursor_character.x == 28*tileSize and cursor_character.y == 18.3*tileSize then
                character_choice = 4
                if love.keyboard.isDown("up") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("down") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)   
                end

            -- 2eme case ligne 2  
            elseif cursor_character.x == 38*tileSize and cursor_character.y == 18.3*tileSize then
                character_choice = 5
                if love.keyboard.isDown("up") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("down") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)
                end

            -- 3eme case ligne 2  
             elseif cursor_character.x == 48*tileSize and cursor_character.y == 18.3*tileSize then
                character_choice = 6
                if love.keyboard.isDown("up") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("down") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)
                end

            -- 1ere case ligne 3
            elseif cursor_character.x == 28*tileSize and cursor_character.y == 23.3*tileSize then
                character_choice = 7
                if love.keyboard.isDown("up") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("down") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 33*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)   
                end

            -- 2eme case ligne 3
            elseif cursor_character.x == 38*tileSize and cursor_character.y == 23.3*tileSize then
                character_choice = 8
                if love.keyboard.isDown("up") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("down") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 33*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)   
                end

            -- 3eme case ligne 3
            elseif cursor_character.x == 48*tileSize and cursor_character.y == 23.3*tileSize then
                character_choice = 9
                if love.keyboard.isDown("up") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("down") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 33*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)   
                end

            -- 1ere case ligne 4  
            elseif cursor_character.x == 28*tileSize and cursor_character.y == 33*tileSize then
                character_choice = 10
                if love.keyboard.isDown("up") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("down") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 38*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 33*tileSize
                    delay_s(0.01)   
                end

            -- 2eme case ligne 4  
            elseif cursor_character.x == 38*tileSize and cursor_character.y == 33*tileSize then
                character_choice = 11
                if love.keyboard.isDown("up") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 33*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 33*tileSize
                    delay_s(0.01)   
                end

            -- 2eme case ligne 4  
            elseif cursor_character.x == 48*tileSize and cursor_character.y == 33*tileSize then
                character_choice = 12
                if love.keyboard.isDown("up") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 23.3*tileSize
                    delay_s(0.01)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 33*tileSize
                    delay_s(0.01) 
                end

            -- 1ere case ligne 5  
            elseif cursor_character.x == 28*tileSize and cursor_character.y == 38*tileSize then
                character_choice = 13
                if love.keyboard.isDown("up") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 33*tileSize
                    delay_s(0.01)  
                end

            end
            
        end
    end


----------------------------------------------------------------------------------------------