-- Librería usada para el cálculo de daño en combate.
-- Library used for damage calculation in battles.

level = 1
atk = 1
def = 1
base = 1
stab = 1
poketype = 1
critical = 1

-- Función para el cálculo de daño total.
-- Funtion used for total damage calculation.
function damageCalc(level, atk, def, base, stab, poketype, critical)
	modifier = stab*poketype*critical*math.random(0.85, 1.00) -- Modificador de daño		-- Damage modifier
	damage = math.floor((((2*level+10)/250)*atk/def*base+2)*modifier) --Daño total		-- Total damage
	return damage -- Dar resultado	-- Return result
end

-- Función usada para mostrat el daño total en pantalla.
-- Function used to show total damage on screen.
function showDamage()
	screen.print(SCREEN_UP, 10, 10, "Prueba de daño en combate", Azul)
	screen.print(SCREEN_UP, 10, 20, "Glaceon usa Ice Fang", Azul)
	screen.print(SCREEN_UP, 10, 30, "Garchomp ahora tiene HP = " .. Garchomp[1] .. ".", Azul)
end