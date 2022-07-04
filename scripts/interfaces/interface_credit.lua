--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------
    
    function credit_Init()

        ui_credit = love.graphics.newImage("assets/interfaces/11_Credits.png")
        
    end

    function action_UI_Credit(interface_choice,dt) -- Fonction executer pour continuer après loading

        if interface_choice == 11 then

            --Selection d'un onglet sur l'interface principale
            if love.keyboard.isDown("x") then -- Continue
                
                interface_choice = 1
                delay_s(0.2)

            end

        end
        
        return interface_choice
    end

    function draw_Credit()

        love.graphics.draw(ui_credit, 0*tileSize, 0*tileSize)

    end

---------------------------------------------------------------------------------------------