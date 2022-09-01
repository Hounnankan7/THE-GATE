--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"


--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

    function inGame_Init()

        ui_inGame = love.graphics.newImage("assets/interfaces/05_inGame.png")
        zone_1 = {x = 7.3, y = 12.3, state = 0} -- Ship Debris
        zone_2 = {x = 14, y = 14.3, state = 0} -- Rice Village
        zone_3 = {x = 15, y = 22.6, state = 0} -- Ancient Tent
        zone_4 = {x = 6.3, y = 34.7, state = 0} -- Stone Mine
        zone_5 = {x = 25, y = 24, state = 0} -- Ice Mine
        zone_6 = {x = 33.2, y = 16, state = 0} -- Sky Forest
        zone_7 = {x = 39, y = 25, state = 0} -- Babylon Garden
        zone_8 = {x = 33, y = 36.6, state = 0} -- Big Crate
        zone_9 = {x = 52.3, y = 12.3, state = 0} -- Canyon
        zone_10 = {x = 53, y = 17, state = 0} -- Heavy Dune
        zone_11 = {x = 54, y = 22, state = 0} -- Golden Pyramide
        zone_12 = {x = 54, y = 34, state = 0} -- Vortex

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

        love.graphics.rectangle("fill", zone_6.x*tileSize, zone_6.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- sky forest
        love.graphics.rectangle("line", (zone_6.x-0.2)*tileSize, (zone_6.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_7.x*tileSize, zone_7.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- babylon garden
        love.graphics.rectangle("line", (zone_7.x-0.2)*tileSize, (zone_7.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_8.x*tileSize, zone_8.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- babylon garden
        love.graphics.rectangle("line", (zone_8.x-0.2)*tileSize, (zone_8.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_9.x*tileSize, zone_9.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- babylon garden
        love.graphics.rectangle("line", (zone_9.x-0.2)*tileSize, (zone_9.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_10.x*tileSize, zone_10.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- babylon garden
        love.graphics.rectangle("line", (zone_10.x-0.2)*tileSize, (zone_10.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_11.x*tileSize, zone_11.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- babylon garden
        love.graphics.rectangle("line", (zone_11.x-0.2)*tileSize, (zone_11.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("fill", zone_12.x*tileSize, zone_12.y*tileSize, 1.5*tileSize, 1.5*tileSize) -- babylon garden
        love.graphics.rectangle("line", (zone_12.x-0.2)*tileSize, (zone_12.y-0.2)*tileSize, 2*tileSize, 2*tileSize)

    end

---------------------------------------------------------------------------------------------