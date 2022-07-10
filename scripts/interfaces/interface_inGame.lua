--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"


--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

    function inGame_Init()

        ui_inGame = love.graphics.newImage("assets/interfaces/05_inGame.png")
        zone_1 = {x = 7.3, y = 12.3}
        zone_2 = {x = 14, y = 14.3}
        zone_3 = {x = 15, y = 22.6}
        zone_4 = {x = 6.3, y = 34.7}
        zone_5 = {x = 25, y = 24}
        
        zone_6 = {x = 1, y = 1}
        zone_7 = {x = 1, y = 1}
        zone_8 = {x = 1, y = 1}
        zone_9 = {x = 1, y = 1}
        zone_10 = {x = 1, y = 1}
        zone_11 = {x = 1, y = 1}
        zone_12 = {x = 1, y = 1}

    end

    function draw_inGame()

        love.graphics.draw(ui_inGame, 0*tileSize, 0*tileSize)

        love.graphics.rectangle("fill", zone_1.x*tileSize, zone_1.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- ship debris
        love.graphics.rectangle("line", (zone_1.x-0.2)*tileSize, (zone_1.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_2.x*tileSize, zone_2.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- rice village
        love.graphics.rectangle("line", (zone_2.x-0.2)*tileSize, (zone_2.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_3.x*tileSize, zone_3.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- ancient tent
        love.graphics.rectangle("line", (zone_3.x-0.2)*tileSize, (zone_3.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_4.x*tileSize, zone_4.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- stone mine
        love.graphics.rectangle("line", (zone_4.x-0.2)*tileSize, (zone_4.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_5.x*tileSize, zone_5.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- ice mine
        love.graphics.rectangle("line", (zone_5.x-0.2)*tileSize, (zone_5.y-0.2)*tileSize, 2*tileSize, 2*tileSize)


    end

---------------------------------------------------------------------------------------------