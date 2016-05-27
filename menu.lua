blanco = color.new(255,255,255)
rojo = color.new(255,0,0)
azul = color.new(0,0,255)
negro = color.new(0,0,0)
menu = 1
fondo = image.load("imagenes/menu.png")
sound.loop("sonido/sonido.mp3")
font1 = font.load("fuente/fuente1.pgf")

while true do
	fondo:blit(0,0) 
	controls.read()
		if menu == 1 then
			screen.print(font1,60,170,"JUGAR",1,rojo,blanco)
			screen.print(font1,160,170,"ENTRENAR",1,azul,blanco)
			screen.print(font1,300,170,"SALIR",1,azul,blanco)
		end
		if menu == 2 then
			screen.print(font1,60,170,"JUGAR",1,azul,blanco)
			screen.print(font1,160,170,"ENTRENAR",1,rojo,blanco)
			screen.print(font1,300,170,"SALIR",1,azul,blanco)
		end
		if menu == 3 then
			screen.print(font1,60,170,"JUGAR",1,azul,blanco)
			screen.print(font1,160,170,"ENTRENAR",1,azul,blanco)
			screen.print(font1,300,170,"SALIR",1,rojo,blanco)
		end
		
		if controls.press("up") then
			menu = menu-1
		end
		if controls.press("down") then
			menu = menu+1
		end
		if controls.press("right") then
			menu = menu+1
		end
		if controls.press("left") then
			menu = menu-1
		end
		
		if controls.press("cross") and menu == 1 then
			dofile("Nivel1.lua")
		end
		if controls.press("cross") and menu == 2 then
			dofile("NivelP.lua")
		end
		if controls.press("cross") and menu == 3 then
			os.exit()
		end
		
		if menu < 1 then
			menu = 3
		end
 
		if menu > 3 then
			menu = 1
		end
	screen.flip()
end