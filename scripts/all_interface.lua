--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "scripts/interfaces/interface_principal"
    require "scripts/interfaces/loading"
    require "scripts/interfaces/interface_history"
    require "scripts/interfaces/interface_character_selection"

    require "scripts/interfaces/interface_credit"
   

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

    function interface_init() --Initialisation de toutes les interfaces
        
        menuPrincipal_Init()
        credit_Init()
        loading_Init()
        history_Init()
        characterSelection_Init()

    end

    function manipulationInterface(interface_choice, dt) -- Pour bien choisir l'interface

        if interface_choice == 1 then
            
            a = action_UI_MenuPrincipal(interface_choice,dt)
            
        elseif interface_choice == 2 then

            a = action_UI_Loading(interface_choice,dt)

        elseif interface_choice == 3 then

            a = action_UI_History(interface_choice,dt)

        elseif interface_choice == 4 then

            a = action_UI_CharacterSelection(interface_choice,dt)

        elseif interface_choice == 11 then

            a = action_UI_Credit(interface_choice,dt)

        end

        return a

    end
---------------------------------------------------------------------------------------------