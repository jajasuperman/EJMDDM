J = image.load("imagenes/J.png")
variable = 1

while true do
	variable = variable + 2
	image.blend(J,0,0,variable)
	screen.flip()
	if variable>255 then dofile("menu.lua") end
end
	