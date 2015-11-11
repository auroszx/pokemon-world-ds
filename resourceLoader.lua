-- Librería usada para cargar múltiples gráficos del juego.
-- Library used to load several game sprites and graphics.

-- Carga un sprite de jugador o NPC y sus animaciones.
-- Loads a player or NPC sprite, including animations.
function loadSprite(mySprite)
	Player = Sprite.new(mySprite, 16, 32, VRAM)
	Player:addAnimation({0, 1, 2, 1}, 500)
	Player:addAnimation({3, 4, 5, 4}, 500)
	Player:addAnimation({6, 7, 8, 7}, 500)
	Player:addAnimation({9, 10, 11, 10}, 500)
end

function destroySprite()
	Player:destroy()
	Player = nil
end

-- Necesito añadir una función que permita crear NPC con parámetros.
-- I need to add an option to procedurally create NPCs.


-- Función usada para cargar mapas.
-- Se usa junto a la verificación de redes, generalmente.
function mapLoader(mapNameWithExtension)
	myMap = Image.load(mapNameWithExtension, RAM)
	--Debería añadir colisiones de acuerdo al mapa. Probemos luego.
	return myMap
end

currentMap = mapLoader()

function mapDisplay()
	mapResX = Image.width(currentMap)
	mapResY = Image.height(currentMap)
	Image.screen.blit(SCREEN_UP, 0, 0, currentMap, 0, 0, mapResX, mapResY)
end

-- Lista de colores. Uso los siguientes links para pruebas:
-- Color list. The following links are sources for some of them:
-- http://planetpixelemporium.com/tutorialpages/light.html
-- http://forums.cgarchitect.com/8108-rgb-colour-sun.html
-- To convert from 8bit to 5bit RGB, use: 5bit = 8bit*31/255.

colorAfternoon = Color.new(31, 23, 17) -- Original: (255, 197, 143)
colorNight = Color.new(7, 18, 31) -- Original: (64, 156, 255)

-- Variable del clima
-- Weather variable
currentWeather = nil

-- Función para aplicar efectos o colores basados en hora y clima.
-- Function used for effects or color change based on time and weather.
-- Esta es sólo para el overworld.
-- This only applies for the overworld.
function mapEffects()
	-- Si es de tarde
	-- If afternoon
	if currentTime[1] == 5 and currentTime[1] < 8 then
		Image.setTint(currentMap, colorAfternoon)
	
	-- Si es de noche
	-- If night
	elseif currentTime[1] == 8 then
		Image.setTint(currentMap, colorNight)
	end
	
	-- Si llueve. Por hacer.
	-- If raining. To be done.
	if currentWeather == "Rain" then
		-- Cargar un sprite gigante o... un ScrollMap?
		-- Maybe loading a giant sprite or... a ScrollMap?
	end	
	
end

-- Función que elimina el mapa para, por ejemplo, entrar en batalla.
-- Function use to erase the map from memory when not in use.
function mapUnloader()
	currentMap = nil
	Image.destroy(myMap)
end