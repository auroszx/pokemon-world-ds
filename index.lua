-- Código de prueba para las funciones que se van agregando.
-- Test code for recently added functions.

dofile("movement.lua")
dofile("damage.lua")
dofile("wireless.lua")
dofile("resourceLoader.lua")
dofile("battle.lua")
dofile("multiplayer.lua")

Glaceon = {75, 201, 123, 181}
Garchomp = {78, 270, 210, 163}
icefang = 65
earthquake = 100
Azul = Color.new(0, 0, 31)

damagetest1 = damageCalc(Glaceon[1], Glaceon[3], Garchomp[4], icefang, 1.5, 4, 1)
Garchomp[1] = Garchomp[2] - damagetest1

loadSprite("Sprite1.png")

-- Wifi.initDefault()
Nifi.init(1)

while true do
	
--	Wifi.scanAP()
--	timeTest:start()
--	showNetwork()
	
	-- Mover sprite
	Controls.read()
	
	showDamage()
	playerMovement()

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
