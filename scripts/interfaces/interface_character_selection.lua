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
        cursor_character.animation = anim8.newAnimation(cursor_character.grid('1-14', 1), 0.2)
        
    end

    function cursor_Movement_CharacterSelection()
        -- Déplacement du curseur sur interface
        
    end

    function action_UI_CharacterSelection(interface_choice,dt) -- Fonction executer pour faire le choix


        return interface_choice
    end

    function draw_CharacterSelection()

        love.graphics.draw(ui_selection, 0*tileSize, 0*tileSize)

    end

---------------------------------------------------------------------------------------------