--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    anim8 = require "libraries/anim8"
    require "scripts/all_interface"
    

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------


--LES FONCTIONS PROPRES A LOVE2D-------------------------------------------------------------

    function love.load(...) --Fonction d'initialisation des éléments

        choix_UI = 1

        interface_init()

    end

    function love.update(dt) --Fonction LOve2D en execution tout le temps

        cursor.animation:update(dt)
        cursor_character.animation:update(dt)
        cursor_Movement_UI_Principal()
        cursor_Movement_CharacterSelection(choix_UI)
        choix_UI = manipulationInterface(choix_UI,dt)
        
        

    end

    function love.draw() --Fonction Love2D pour dessiner à l'écran

        if choix_UI == 1 then -- Menu principal
            draw_MenuPrincipal()
            cursor.animation:draw(cursor.spritesheet, cursor.x, cursor.y, 0, 2)
        elseif choix_UI == 2 then
            draw_Loading()
        elseif choix_UI == 3 then
            draw_History()
        elseif choix_UI == 4 then
            draw_CharacterSelection()
            cursor_character.animation:draw(cursor_character.spritesheet, cursor_character.x, cursor_character.y)
        elseif choix_UI == 5 then

        elseif choix_UI == 6 then

        elseif choix_UI == 7 then

        elseif choix_UI == 8 then

        elseif choix_UI == 9 then

        elseif choix_UI == 10 then

        elseif choix_UI == 11 then
            draw_Credit()
        end

    end

---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------


---------------------------------------------------------------------------------------------