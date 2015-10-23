-- Librería usada para cargar múltiples gráficos del juego.

-- Aquí debería ir la función del sprite del jugador. Debo agregarla.

-- Función usada para cargar mapas.
-- Se usa junto a la verificación de redes, generalmente.
function mapLoader(mapName)
	myMap = Image.load("somemap.png", VRAM)
	--Debería añadir colisiones de acuerdo al mapa. Probemos luego.
	return myMap
end

currentMap = mapLoader()

function mapDisplay()
	mapResX = currentMap.width()
	mapResY = currentMap.height()
	Image.screen.blit(SCREEN_UP, 0, 0, currentMap, 0, 0, mapResX, mapResY)
end

-- Lista de colores. Uso los siguientes links para pruebas:
-- http://planetpixelemporium.com/tutorialpages/light.html
-- http://forums.cgarchitect.com/8108-rgb-colour-sun.html

colorAfternoon = Color.new(255, 197, 143)
colorNight = Color.new(64, 156, 255)
-- Variables para hora y fecha.
DateTime = DateTime.new()
currentTime = DateTime.getCurrentTime()

-- Función para aplicar efectos o colores basados en hora y clima.
-- Esta es sólo para el overworld.
function mapEffects()
	-- Si es de tarde
	if currentTime == "Afternoon, needs fixing." then
		Image.setTint(currentMap, colorAfternoon)
	
	-- Si es de noche
	elseif currentTime == "Night, needs fixing." then
		Image.setTint(currentMap, colorNight)
	end
	
	-- Si llueve. Por hacer.
	if currentWeather == "Rain" then
		-- Cargar un sprite gigante o... un ScrollMap?
	end	
	
end

-- Función que elimina el mapa para, por ejemplo, entrar en batalla.
function mapUnloader()
	currentMap = nil
	Image.destroy(myMap)
end