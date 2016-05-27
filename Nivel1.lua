blanco = color.new(255,255,255)
negro = color.new(0,0,0)
naranja = color.new(255,128,0)

bola = image.load("imagenes/bola.png")
fondo = image.load("imagenes/fondo.png")

p={x=37,y=62,w=22,h=22,oldx=0,oldy=0}
q={x=402,y=60,w=73,h=193}

velocidad = 2
m = 0
     
enemigo = {}
enemigo[1] = {x = 119,y = 196, w = 18, h = 18}
enemigo[2] = {x = 359,y = 166, w = 18, h = 18}
enemigo[3] = {x = 119,y = 126, w = 18, h = 18}
enemigo[4] = {x = 359,y = 96, w = 18, h = 18}
     
a={}
a[1]={x=7,y=57,w=82,h=4}
a[2]={x=7,y=57,w=4,h=196}
a[3]={x=7,y=253,w=141,h=4}
a[4]={x=144,y=217,w=4,h=36}
a[5]={x=144,y=217,w=228,h=4}
a[6]={x=368,y=89,w=4,h=132}
a[7]={x=368,y=89,w=30,h=4}
a[8]={x=398,y=89,w=4,h=164}
a[9]={x=398,y=253,w=81,h=4}
a[10]={x=475,y=57,w=4,h=200}
a[11]={x=335,y=57,w=141,h=4}
a[12]={x=335,y=57,w=4,h=36}
a[13]={x=110,y=89,w=228,h=4}
a[14]={x=110,y=89,w=4,h=132}
a[15]={x=88,y=221,w=26,h=4}
a[16]={x=88,y=57,w=4,h=164}

function colision(obj1, obj2)
    if obj1.x+obj1.w>obj2.x
        and obj1.x<obj2.x+obj2.w
        and obj1.y+obj1.h>obj2.y
        and obj1.y<obj2.y+obj2.h then
            return true
        end
    return false
end
         
while true do
    controls.read()
        
	    fondo:blit(0,0)
        image.blit(enemigo[1].x,enemigo[1].y,bola)
        image.blit(enemigo[2].x,enemigo[2].y,bola)
        image.blit(enemigo[3].x,enemigo[3].y,bola)
        image.blit(enemigo[4].x,enemigo[4].y,bola)
		screen.print(60,12,"Muertes: "..m,negro)
		screen.print(200,12,"Nivel: 1/5",negro)
           
        p.oldx=p.x
        p.oldy=p.y
                
		if controls.up() then p.y=p.y-velocidad elseif controls.down() then p.y=p.y+velocidad end
        if controls.left() then p.x=p.x-velocidad elseif controls.right() then p.x=p.x+velocidad end
		
		if enemigo[1].x <= 119 then
			movimiento1 = 0
			end
		if enemigo[1].x >= 355 then
			movimiento1 = 1
			end
		if movimiento1 == 0 then
			enemigo[1].x = enemigo[1].x + 3.25
			end
		if movimiento1 == 1 then
			enemigo[1].x = enemigo[1].x - 3.25
			end
		if enemigo[2].x <= 119 then
			movimiento2 = 0
			end
		if enemigo[2].x >= 355 then
			movimiento2 = 1
			end
		if movimiento2 == 0 then
			enemigo[2].x = enemigo[2].x + 3.25
			end
		if movimiento2 == 1 then
			enemigo[2].x = enemigo[2].x - 3.25
			end
		if enemigo[3].x <= 119 then
			movimiento1 = 0
			end
		if enemigo[3].x >= 355 then
			movimiento1 = 1
			end
		if movimiento1 == 0 then
			enemigo[3].x = enemigo[3].x + 3.25
			end
		if movimiento1 == 1 then
			enemigo[3].x = enemigo[3].x - 3.25
			end
		if enemigo[4].x <= 119 then
			movimiento2 = 0
			end
		if enemigo[4].x >= 355 then
			movimiento2 = 1
			end
		if movimiento2 == 0 then
			enemigo[4].x = enemigo[4].x + 3.25
			end
		if movimiento2 == 1 then
			enemigo[4].x = enemigo[4].x - 3.25
			end
				 
        draw.fillrect(p.x,p.y,p.w,p.h,naranja)
		draw.rect(p.x,p.y,p.w,p.h,negro)
		draw.rect(p.x+1,p.y+1,p.w-2,p.h-2,negro)

                       
        for i=1,16 do
            draw.fillrect(a[i].x,a[i].y,a[i].w,a[i].h,negro)
            if colision(a[i],p) then p.x=p.oldx p.y=p.oldy end
        end
               
		for j=1,4 do
			if colision(enemigo[j],p) then p.x = 37 p.y = 62  m = m+1 end
		end
		
		if colision(p,q) then
			os.message("Has superado el primer nivel.")
			dofile("Nivel2.lua")
		end
    screen.flip()
end