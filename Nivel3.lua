	fondo = image.load("imagenes/fondo2.png")
     
    p={x=82,y=126,w=18.5,h=18.5,oldx=0,oldy=0}
    q={x=369,y=87,w=75,h=100}
     
    velocidad = 2
	RecogerBonus = 0
   
    bonus = {}
	bonus[1] = {x = 184, y = 153, w = 16, h = 15 }
	bonus[2] = {x = 234, y = 103, w = 16, h = 15 }
	bonus[3] = {x = 284, y = 153, w = 16, h = 15 }
   
    enemigo = {}
    enemigo[1] = {x = 170,y = 61, w = 16, h = 16}
    enemigo[2] = {x = 195,y = 61, w = 16, h = 16}
    enemigo[3] = {x = 220,y = 196, w = 16, h = 16}
    enemigo[4] = {x = 245,y = 196, w = 16, h = 16}
    enemigo[5] = {x = 272,y = 61, w = 16, h = 16}
    enemigo[6] = {x = 297,y = 61, w = 16, h = 16}
         
    a={}
    a[1]={x=64,y=82,w=102,h=4}
    a[2]={x=64,y=82,w=4,h=102}
    a[3]={x=64,y=184,w=102,h=4}
    a[4]={x=166,y=184,w=4,h=29}
    a[5]={x=166,y=213,w=151,h=4}
    a[6]={x=313,y=184,w=4,h=29}
    a[7]={x=313,y=184,w=104,h=4}
    a[8]={x=416,y=87,w=4,h=101}
    a[9]={x=315,y=87,w=102,h=4}
    a[10]={x=315,y=57,w=4,h=30}
    a[11]={x=163,y=57,w=153,h=4}
    a[12]={x=163,y=57,w=4,h=29}
     
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
            image.blit(enemigo[5].x,enemigo[5].y,bola1)
            image.blit(enemigo[6].x,enemigo[6].y,bola1)
			image.blit(bonus[1].x,bonus[1].y,bonus1)
			image.blit(bonus[2].x,bonus[2].y,bonus1)
			image.blit(bonus[3].x,bonus[3].y,bonus1)
            screen.print(60,12,"Muertes: "..m,negro)
			screen.print(200,12,"Nivel: 3/5",negro)
               
            p.oldx=p.x
            p.oldy=p.y
                   
            if controls.up() then p.y=p.y-velocidad elseif controls.down() then p.y=p.y+velocidad end
            if controls.left() then p.x=p.x-velocidad elseif controls.right() then p.x=p.x+velocidad end
                   
                    if enemigo[1].y <= 61 then
                            movimiento1 = 0
                            end
                    if enemigo[1].y >= 196 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[1].y = enemigo[1].y + 2.75
                            end
                    if movimiento1 == 1 then
                            enemigo[1].y = enemigo[1].y - 2.75
                            end
					if enemigo[2].y <= 61 then
                            movimiento1 = 0
                            end
                    if enemigo[2].y >= 196 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[2].y = enemigo[2].y + 2.75
                            end
                    if movimiento1 == 1 then
                            enemigo[2].y = enemigo[2].y - 2.75
                            end
					if enemigo[3].y <= 61 then
                            movimiento2 = 0
                            end
                    if enemigo[3].y >= 196 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[3].y = enemigo[3].y + 2.75
                            end
                    if movimiento2 == 1 then
                            enemigo[3].y = enemigo[3].y - 2.75
                            end
					if enemigo[4].y <= 61 then
                            movimiento2 = 0
                            end
                    if enemigo[4].y >= 196 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[4].y = enemigo[4].y + 2.75
                            end
                    if movimiento2 == 1 then
                            enemigo[4].y = enemigo[4].y - 2.75
                            end
					if enemigo[5].y <= 61 then
                            movimiento1 = 0
                            end
                    if enemigo[5].y >= 196 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[5].y = enemigo[5].y + 2.75
                            end
                    if movimiento1 == 1 then
                            enemigo[5].y = enemigo[5].y - 2.75
                            end
					if enemigo[6].y <= 61 then
                            movimiento1 = 0
                            end
                    if enemigo[6].y >= 196 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[6].y = enemigo[6].y + 2.75
                            end
                    if movimiento1 == 1 then
                            enemigo[6].y = enemigo[6].y - 2.75
                            end
                                   
            draw.fillrect(p.x,p.y,p.w,p.h,naranja)
            draw.rect(p.x,p.y,p.w,p.h,negro)
            draw.rect(p.x+1,p.y+1,p.w-2,p.h-2,negro)
     
                           
            for i=1,12 do
                draw.fillrect(a[i].x,a[i].y,a[i].w,a[i].h,negro)
                if colision(a[i],p) then p.x=p.oldx p.y=p.oldy end
            end
                   
            for j=1,6 do
				if colision(enemigo[j],p) then 
				p.x = 82 p.y = 126 
				bonus[1].x = 184 bonus[1].y = 153
				bonus[2].x = 234 bonus[2].y = 103
				bonus[3].x = 284 bonus[3].y = 153 
				RecogerBonus = 0 
				m = m+1 
				end
            end
            
			for k=1,3 do
				if colision (p,bonus[k]) then bonus[k].x = 500 bonus[k].y = 500 RecogerBonus = RecogerBonus+1  end
			end
			
            if colision(p,q) and RecogerBonus == 3  then
                os.message("Has ganado el tercer nivel.")
                dofile("Nivel4.lua")
            end
        screen.flip()
    end