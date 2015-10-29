-- Librería usada para guardar funciones de movimiento.
-- Library used to store some movement functions.

playerDirection = 1
playerPosX = 128
playerPosY = 48

function playerMovement()
	if Keys.held.Up or Keys.held.Down or Keys.held.Left or Keys.held.Right then
		Player:playAnimation(SCREEN_DOWN, playerPosX, playerPosY, playerDirection)
	else                                                                                
		Player:drawFrame(SCREEN_DOWN, playerPosX, playerPosY, -2 + playerDirection * 3)
	end
	
	if Keys.held.Down then
		playerDirection = 1
		playerPosY = playerPosY + 1
	end
	
	if Keys.held.Left then
		playerDirection = 2
		playerPosX = playerPosX - 1
	end
	
	if Keys.held.Right then
		playerDirection = 3
		playerPosX = playerPosX + 1
	end
	
	if Keys.held.Up then
		playerDirection = 4
		playerPosY = playerPosY - 1
	end
end