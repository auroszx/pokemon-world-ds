-- Código de prueba para las funciones que se van agregando.
-- Test code for recently added functions.

dofile("damage.lua")
dofile("wireless.lua")
-- dofile("sprites.lua")
-- dofile("resourceLoader.lua")
dofile("battle.lua")
dofile("multiplayer.lua")

Glaceon = {75, 201, 123, 181}
Garchomp = {78, 270, 210, 163}
icefang = 65
earthquake = 100
Azul = Color.new(0, 0, 31)

x = 128
y = 48
direction = 1
damagetest1 = damageCalc(Glaceon[1], Glaceon[3], Garchomp[4], icefang, 1.5, 4, 1)
Garchomp[1] = Garchomp[2] - damagetest1

loadSprite()

--Wifi.initDefault()
--timeTest = Timer.new()
Nifi.init(1)

while true do

	screen.print(SCREEN_UP, 10, 10, "Prueba de daño en combate", Azul)
	screen.print(SCREEN_UP, 10, 20, "Glaceon usa Ice Fang", Azul)
	screen.print(SCREEN_UP, 10, 30, "Garchomp ahora tiene HP = " .. Garchomp[1] .. ".", Azul)
	
--	Wifi.scanAP()

--	timeTest:start()
	
--	if timeTest:getTime() > 500 then
--		testTable = checkNetwork()
--		timeTest:reset()
--		timeTest:start()
--	end
	
--	showNetwork()
	
	--Mover sprite
	Controls.read()
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
	if Keys.newPress.A then
		askBattle("Auros", "Necros")
	end
	if Keys.newPress.B then
		checkBattle("Auros", "Necros")
	end
	
	-- Renderiza todo en base al bucle.
	-- Renders everything inside the loop.
	render()
end 

Player:destroy()
Player = nil
x = nil
y = nil
direction = nil