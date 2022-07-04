--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------
    
    function loading_Init()

        ui_loading = love.graphics.newImage("assets/interfaces/02_loading.png")
        
    end

    function action_UI_Loading(interface_choice,dt) -- Fonction executer pour continuer après loading

        if interface_choice == 2 then

            --Selection d'un onglet sur l'interface principale
            if love.keyboard.isDown("w") then -- Continue
                
                interface_choice = 3
                delay_s(0.2)

            end

        end
        
        return interface_choice
    end

    function draw_Loading()

        love.graphics.draw(ui_loading, 0*tileSize, 0*tileSize)

    end

---------------------------------------------------------------------------------------------