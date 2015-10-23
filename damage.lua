--Librería usada para el cálculo de daño en combate
--Library used for damage calculation in battles

level = 1
atk = 1
def = 1
base = 1
stab = 1
poketype = 1
critical = 1

--Función para el cálculo de daño total
function damageCalc(level, atk, def, base, stab, poketype, critical)
	modifier = stab*poketype*critical*math.random(0.85, 1.00) --Modificador de daño
	damage = math.floor((((2*level+10)/250)*atk/def*base+2)*modifier) --Daño como tal
	return damage --Dar resultado
end
	
	