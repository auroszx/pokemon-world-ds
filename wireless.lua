--Librería usada para simplificar el reconocimiento de WiFi

--Veamos si ahora funciona...

function checkNetwork()
	netnum = 0
	wlTable = {}
	netnum = Wifi.getNumAP()
	screen.print(SCREEN_UP, 10, 40, "Se han encontrado " .. netnum .. " redes WiFi.", Azul)
	
	for i=1, netnum do
		table.insert(wlTable, Wifi.getAP(i))
	end
	return wlTable
end

function showNetwork()
	
	xax = 50
	--testTable = checkNetwork()	

	for i=1, #testTable do
		screen.print(SCREEN_UP, 10, xax, testTable[i].ssid, Azul)
		xax = xax + 8
	end
	
	if testTable[1].ssid == "NETGEAR" then
		screen.print(SCREEN_DOWN, 10, 10, "Bingo! Red detectada!")
	elseif testTable[1].ssid == nil then
		screen.print(SCREEN_DOWN, 10, 10, "Nil")
	else 
		screen.print(SCREEN_DOWN, 10, 10, ":( Ni idea")
	end
end