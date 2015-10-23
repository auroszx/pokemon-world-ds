--Librería para el cargado de sprites y similares.

--Cargando el sprite de Red

function loadRedSpr()
	Red = Sprite.new("Sprite1.png", 16, 32, VRAM)
	Red:addAnimation({0, 1, 2, 1}, 500)
	Red:addAnimation({3, 4, 5, 4}, 500)
	Red:addAnimation({6, 7, 8, 7}, 500)
	Red:addAnimation({9, 10, 11, 10}, 500)
end