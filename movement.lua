-- Librería usada para guardar funciones de movimiento.
-- Library used to store some movement functions.

-- Se necesita esta librería.
-- This lib is required.
dofile(mapScroll.lua)

playerDirection = 1
playerPosX = 136
playerPosY = 112
rePlPosX = 1
rePlPosX = 2

function playerMovement()
	if Keys.held.Up or Keys.held.Down or Keys.held.Left or Keys.held.Right then
		Player:playAnimation(SCREEN_DOWN, playerPosX, playerPosY, playerDirection)
	else                                                                                
		Player:drawFrame(SCREEN_DOWN, playerPosX, playerPosY, -2 + playerDirection * 3)
	end
	
	if Keys.held.Down then
		playerDirection = 1
		mapPosY = mapPosY + 1
	end
	
	if Keys.held.Left then
		playerDirection = 2
		mapPosX = mapPosX + 1
	end
	
	if Keys.held.Right then
		playerDirection = 3
		mapPosX = mapPosX - 1
	end
	
	if Keys.held.Up then
		playerDirection = 4
		mapPosY = mapPosY - 1
	end
end