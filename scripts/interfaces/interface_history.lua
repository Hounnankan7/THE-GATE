--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------
    
    function history_Init()

        ui_history = love.graphics.newImage("assets/interfaces/03_histoire.png")
        
    end

    function action_UI_History(interface_choice,dt) -- Fonction executer pour continuer après loading

        if interface_choice == 3 then

            --Selection d'un onglet sur l'interface principale
            if love.keyboard.isDown("w") then -- Continue
                
                interface_choice = 4
                delay_s(0.2)

            end

        end
        
        return interface_choice
    end

    function draw_History()

        love.graphics.draw(ui_history, 0*tileSize, 0*tileSize)

    end

---------------------------------------------------------------------------------------------