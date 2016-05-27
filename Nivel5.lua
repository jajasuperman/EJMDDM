	fondo = image.load("imagenes/fondo4.png")
	bola2 = image.load("imagenes/bola2.png")
     
    p={x=33,y=134,w=16,h=16,oldx=0,oldy=0}
    q={x=23,y=118,w=45,h=45}
     
    velocidad = 2
	RecogerBonus = 0
   
    bonus = {}
	bonus[1] = {x = 423, y = 133, w = 16, h = 15 }
   
    enemigo = {}
    enemigo[1] = {x = 74,y = 122, w = 14, h = 14} 
    enemigo[2] = {x = 74,y = 144, w = 14, h = 14}
    enemigo[3] = {x = 224,y = 122, w = 14, h = 14} 
    enemigo[4] = {x = 224,y = 144, w = 14, h = 14}
    
	a = {}
	a[1] = {x = 21,y = 118, w = 95, h = 4} 
	a[2] = {x = 21,y = 118, w = 4, h = 46} 
	a[3] = {x = 21,y = 160, w = 165, h = 4} 
	a[4] = {x = 183,y = 160, w = 4, h = 28} 
	a[5] = {x = 183,y = 188, w = 34, h = 4} 
	a[6] = {x = 213,y = 160, w = 4, h = 28} 
	a[7] = {x = 213,y = 160, w = 115, h = 4} 
	a[8] = {x = 326,y = 160, w = 4, h = 28} 
	a[9] = {x = 326,y = 188, w = 34, h = 4} 
	a[10] = {x = 356,y = 160, w = 4, h = 28} 
	a[11] = {x = 356,y = 160, w = 100, h = 4} 
	a[12] = {x = 456,y = 118, w = 4, h = 46} 
	a[13] = {x = 288,y = 118, w = 168, h = 4} 
	a[14] = {x = 288,y = 90, w = 4, h = 28} 
	a[15] = {x = 256,y = 90, w = 34, h = 4} 
	a[16] = {x = 256,y = 90, w = 4, h = 28} 
	a[17] = {x = 145,y = 118, w = 115, h = 4} 
	a[18] = {x = 145,y = 90, w = 4, h = 28} 
	a[19] = {x = 112,y = 90, w = 34, h = 4} 
	a[20] = {x = 112,y = 90, w = 4, h = 28} 
 
     
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
            image.blit(enemigo[1].x,enemigo[1].y,bola1)
            image.blit(enemigo[2].x,enemigo[2].y,bola1)
            image.blit(enemigo[3].x,enemigo[3].y,bola1)
            image.blit(enemigo[4].x,enemigo[4].y,bola1)
			image.blit(bonus[1].x,bonus[1].y,bonus1)
            screen.print(60,12,"Muertes: "..m,negro)
			screen.print(200,12,"Nivel: 5/5",negro)
               
            p.oldx=p.x
            p.oldy=p.y
                   
            if controls.up() then p.y=p.y-velocidad elseif controls.down() then p.y=p.y+velocidad end
            if controls.left() then p.x=p.x-velocidad elseif controls.right() then p.x=p.x+velocidad end
                   
                    if enemigo[1].x <= 74 then
                            movimiento1 = 0
                            end
                    if enemigo[1].x >= 240 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[1].x = enemigo[1].x + 2.3
                            end
                    if movimiento1 == 1 then
                            enemigo[1].x = enemigo[1].x - 2.3
                            end
					if enemigo[2].x <= 74 then
                            movimiento1 = 0
                            end
                    if enemigo[2].x >= 240 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[2].x = enemigo[2].x + 2.3
                            end
                    if movimiento1 == 1 then
                            enemigo[2].x = enemigo[2].x - 2.3
							end
					if enemigo[3].x <= 224 then
                            movimiento2 = 0
                            end
                    if enemigo[3].x >= 390 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[3].x = enemigo[3].x + 2.3
                            end
                    if movimiento2 == 1 then
                            enemigo[3].x = enemigo[3].x - 2.3
                            end
					if enemigo[4].x <= 224 then
                            movimiento2 = 0
                            end
                    if enemigo[4].x >= 390 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[4].x = enemigo[4].x + 2.3
                            end
                    if movimiento2 == 1 then
                            enemigo[4].x = enemigo[4].x - 2.3
                            end
                                   
            draw.fillrect(p.x,p.y,p.w,p.h,naranja)
            draw.rect(p.x,p.y,p.w,p.h,negro)
            draw.rect(p.x+1,p.y+1,p.w-2,p.h-2,negro)
            
			for i=1,20 do
				draw.fillrect(a[i].x,a[i].y,a[i].w,a[i].h,negro)
                if colision(a[i],p) then p.x=p.oldx p.y=p.oldy end
            end
			
            for j=1,4 do
				if colision(enemigo[j],p) then 
				p.x = 33 p.y = 134
				bonus[1].x = 423 bonus[1].y = 133
				RecogerBonus = 0 
				m = m+1 
				end
            end
            
			if colision (p,bonus[1]) then bonus[1].x = 500 bonus[1].y = 500 RecogerBonus = RecogerBonus+1  end
			
            if colision(p,q) and RecogerBonus == 1  then
                os.message("Has ganado el quinto nivel.")
                os.message("Espera a la siguiente version.")
                dofile("menu.lua")
            end
        screen.flip()
    end