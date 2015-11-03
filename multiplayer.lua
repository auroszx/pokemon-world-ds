-- Librería para funciones del modo multijugador
-- Library used for multiplayer functionality.


-- Esto envía el nombre, posición y sprite del jugador.
function sendPosition(playerName, playerPosX, playerPosY, playerSprite)
	Nifi.sendMessage("" .. playerName .. " " .. playerPosX .. " " .. playerPosY .. " " .. playerSprite .. "")
end

-- Esto permite retar a otros jugadores a una batalla.
-- Ask other players for a battle.

function askBattle(playerName, playerName2)
	Nifi.sendMessage("" .. playerName .. " askBattle " .. playerName2 .. "")
end

-- Esto verifica si te retan a una batalla.
-- Check if somebody wants to battle you.

function checkBattle(playerName, playerName2)
	checkNifiBattle = Nifi.readMessage()
	if checkNifiBattle == ("" .. playerName .. " askBattle " .. playerName2 .."") then
		screen.print(SCREEN_UP, 10, 180, "" .. playerName2 .. " te ha retado!", Azul)
	end
end

-- Con esto de aquí se acepta el reto.
-- Esto debe llamar a las funciones de batalla después.
-- Eso incluye cambio de escena, carga de sprites, calculo de daño, y más.

function acceptBattle(playerName, playerName2)
	Nifi.sendMessage("" .. playerName .. " acceptBattle " .. playerName2 .. "")
	startBattle(playerName, playerName2)
end

-- Esta función llama a todo lo necesario para empezar la batalla. Está incompleta.
-- Esto debería moverlo a battle.lua o algo así.
function startBattle()
end

-- Una función para avisar a otros jugadores que estás en un evento.
function localEvent(playerName, event, state, evArg1, evArg2)
	Nifi.sendMessage("" .. playerName .. " " .. event .. " " .. state .. " " .. evArg1 .. " " .. evArg2 .. "")
end

-- Verifica si hay eventos activos.
function checkEvent()
	-- Por hacer...
end