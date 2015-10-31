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
	
	-- Variables para hora y fecha.
	-- Time and date variables.
	currentTime = { tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")) }
	
	-- Mover sprite
	Controls.read()
	
	screen.print(SCREEN_UP, 10, 120, currentTime[1], Azul)
	
	showDamage()
	playerMovement()
	
	-- Envía un mensaje d eprueba usando Nifi
	-- Sends a Nifi test message
	if Keys.newPress.A then
		askBattle("Auros", "Necros")
	end
	
	-- Revisa si hay mensajes y luego lo compara
	-- Checks for new messages and then compares
	if Nifi.checkMessage() then
		
		if Keys.newPress.B then
			checkBattle("Auros", "Necros")
		end
	end
	
	-- Renderiza todo en base al bucle.
	-- Renders everything inside the loop.
	render()
end 
