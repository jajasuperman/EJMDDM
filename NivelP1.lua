bola = image.load("imagenes/bola.png")

p={x=57,y=130,w=18.5,h=18.5,oldx=0,oldy=0}
q={x=364,y=71,w=42,h=135}
   
enemigo = {}
enemigo[1] = {x = 154, y = 72, w = 18, h = 18 }
enemigo[2] = {x = 154, y = 183, w = 18, h = 18 }
enemigo[3] = {x = 190, y = 131, w = 18, h = 18 }
enemigo[4] = {x = 250, y = 82, w = 18, h = 18 }
enemigo[5] = {x = 250, y = 164, w = 18, h = 18 }
enemigo[6] = {x = 316, y = 90, w = 18, h = 18 }
enemigo[7] = {x = 308, y = 155, w = 18, h = 18 }
         
a={}
a[1]={x=39,y=67,w=420,h=4}
a[2]={x=39,y=67,w=4,h=142}
a[3]={x=39,y=209,w=424,h=4}
a[4]={x=459,y=67,w=4,h=142}
     
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
		image.blit(enemigo[5].x,enemigo[5].y,bola)
		image.blit(enemigo[6].x,enemigo[6].y,bola)
		image.blit(enemigo[7].x,enemigo[7].y,bola)
		screen.print(200,12,"Nivel: 2/2",negro)
		screen.print(60,12,"Entrenamiento",negro)
               
        p.oldx=p.x
        p.oldy=p.y
                   
        if controls.up() then p.y=p.y-velocidad elseif controls.down() then p.y=p.y+velocidad end
        if controls.left() then p.x=p.x-velocidad elseif controls.right() then p.x=p.x+velocidad end
                                         
        draw.fillrect(p.x,p.y,p.w,p.h,naranja)
        draw.rect(p.x,p.y,p.w,p.h,negro)
        draw.rect(p.x+1,p.y+1,p.w-2,p.h-2,negro)
     
                           
        for i=1,4 do
            draw.fillrect(a[i].x,a[i].y,a[i].w,a[i].h,negro)
            if colision(a[i],p) then p.x=p.oldx p.y=p.oldy end
       end
                   
		for j=1,7 do
			if colision(enemigo[j],p) then p.x = 57 p.y = 130  end
		end
			
        if colision(p,q) then
            os.message("Has ganado el entrenamiento.")
            os.message("Juega el modo normal.")
            dofile("menu.lua")
        end
    screen.flip()
	if controls.start() then broke() end
end