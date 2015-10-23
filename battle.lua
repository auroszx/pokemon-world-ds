-- Librería usada para funciones de batalla.

-- Aquí cargamos el fondo.
function loadBattleBg()
	--Se carga en base a la hora.
	if currentTime == "Something" then
		battleBg = Image.load("somebg.png", RAM)
	elseif currentTime == "Something else" then
		battleBg = Image.load("othermap.png", RAM)
	end
end

-- Carga los sprites de Pokemon bajo demanda.
function loadPokeSprites()
	-- Por hacer.
end

-- Carga los sprites de entrenador.
function loadTrainerSprites()
	-- Por hacer.
end

-- Elimina todo lo cargado en batalla.
function unloadAllBattleAssets()
	-- Por hacer.
end