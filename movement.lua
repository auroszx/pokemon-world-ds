-- Librería usada para guardar funciones de movimiento.
-- Library used to store some movement functions.

playerDirection = 1
playerPosX = 128
playerPosY = 48

function playerMovement()
	if Keys.held.Up or Keys.held.Down or Keys.held.Left or Keys.held.Right then
		Player:playAnimation(SCREEN_DOWN, x, y, direction)
	else                                                                                
		Player:drawFrame(SCREEN_DOWN, x, y, -2 + direction * 3)
	end
	
	if Keys.held.Down then
		direction = 1
		y = y + 1
	end
	
	if Keys.held.Left then
		direction = 2
		x = x - 1
	end
	
	if Keys.held.Right then
		direction = 3
		x = x + 1
	end
	
	if Keys.held.Up then
		direction = 4
		y = y - 1
	end
end