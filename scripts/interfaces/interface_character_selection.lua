--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------
    
    function characterSelection_Init()
--
        ui_selection = love.graphics.newImage("assets/interfaces/04_character_select.png")
        cursor_character = {}
        cursor_character.spritesheet = love.graphics.newImage("assets/interfaces/character_selector.png")
        cursor_character.grid = anim8.newGrid(149, 66, cursor_character.spritesheet:getWidth(), cursor_character.spritesheet:getHeight())
        cursor_character.x = 28*tileSize
        cursor_character.y = 13.29*tileSize
        cursor_character.animation = anim8.newAnimation(cursor_character.grid('1-14', 1), 0.15)
        
    end


    function action_UI_CharacterSelection(interface_choice,dt) -- Fonction executer pour faire le choix


        return interface_choice
    end

    function draw_CharacterSelection()

        love.graphics.draw(ui_selection, 0*tileSize, 0*tileSize)

    end

    function cursor_Movement_CharacterSelection(interface_choice)
        -- Déplacement du curseur sur interface
        if interface_choice == 4 then
            
            -- 1ere case ligne 1
            if cursor_character.x == 28*tileSize and cursor_character.y == 13.29*tileSize then
                if love.keyboard.isDown("down") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.2)
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.2)   
                end

            -- 2eme case ligne 1  
            elseif cursor_character.x == 38*tileSize and cursor_character.y == 13.29*tileSize then
                if love.keyboard.isDown("down") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.2)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 28*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.2) 
                elseif love.keyboard.isDown("right") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.2)   
                end
            -- 3eme case ligne 1  
            elseif cursor_character.x == 48*tileSize and cursor_character.y == 13.29*tileSize then
                if love.keyboard.isDown("down") then
                    cursor_character.x = 48*tileSize
                    cursor_character.y = 18.3*tileSize
                    delay_s(0.2)
                elseif love.keyboard.isDown("left") then
                    cursor_character.x = 38*tileSize
                    cursor_character.y = 13.29*tileSize
                    delay_s(0.2)   
                end
            end

        end
            
    end

---------------------------------------------------------------------------------------------