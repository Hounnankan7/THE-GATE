--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------
    
    function menuPrincipal_Init()

        ui_principal = love.graphics.newImage("assets/interfaces/01_menu_principal.png")
        cursor = {}
        cursor.spritesheet = love.graphics.newImage("assets/interfaces/cursor.png")
        cursor.grid = anim8.newGrid(22, 22, cursor.spritesheet:getWidth(), cursor.spritesheet:getHeight())
        cursor.x = 14*tileSize
        cursor.y = 19.4*tileSize
        cursor.animation = anim8.newAnimation(cursor.grid('1-5', 1), 0.2)
        
    end

    function cursor_Movement_UI_Principal()
        -- Déplacement du curseur sur interface menu principal
        if cursor.x == 14*tileSize and cursor.y == 19.4*tileSize and love.keyboard.isDown("down") then
            cursor.x = 14*tileSize
            cursor.y = 24.6*tileSize
            delay_s(0.2)
            
        elseif cursor.x == 14*tileSize and cursor.y == 24.6*tileSize and love.keyboard.isDown("down") then
            cursor.x = 14*tileSize
            cursor.y = 29.6*tileSize
            delay_s(0.2)
        elseif cursor.x == 14*tileSize and cursor.y == 29.6*tileSize and love.keyboard.isDown("down") then
            cursor.x = 14*tileSize
            cursor.y = 35.4*tileSize
            delay_s(0.2)
        elseif cursor.x == 14*tileSize and cursor.y == 35.4*tileSize and love.keyboard.isDown("up") then
            cursor.x = 14*tileSize
            cursor.y = 29.6*tileSize
            delay_s(0.2)        
        elseif cursor.x == 14*tileSize and cursor.y == 29.6*tileSize and love.keyboard.isDown("up") then
            cursor.x = 14*tileSize
            cursor.y = 24.6*tileSize
            delay_s(0.2)
    
        elseif cursor.x == 14*tileSize and cursor.y == 24.6*tileSize and love.keyboard.isDown("up") then
            cursor.x = 14*tileSize
            cursor.y = 19.4*tileSize
            delay_s(0.2)
        end
    end

    function action_UI_MenuPrincipal(interface_choice,dt) -- Fonction executer pour faire le choix sur le menu principal

        if interface_choice == 1 then

            --Selection d'un onglet sur l'interface principale
            if cursor.x == 14*tileSize and cursor.y == 19.4*tileSize and love.keyboard.isDown("w") then -- New game
                interface_choice = 2
                delay_s(0.2)

            elseif cursor.x == 14*tileSize and cursor.y == 24.6*tileSize and love.keyboard.isDown("w") then -- Saved game
                --interface_choice = 0
                --delay_s(0.2)

            elseif cursor.x == 14*tileSize and cursor.y == 29.6*tileSize and love.keyboard.isDown("w") then -- Credits
                interface_choice = 11
                delay_s(0.2)

            elseif cursor.x == 14*tileSize and cursor.y == 35.4*tileSize and love.keyboard.isDown("w") then -- End game
                love.event.quit( 0 )

            end

        end

        return interface_choice
    end

    function draw_MenuPrincipal()

        love.graphics.draw(ui_principal, 0*tileSize, 0*tileSize)

    end

---------------------------------------------------------------------------------------------