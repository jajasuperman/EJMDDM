	fondo = image.load("imagenes/fondo3.png")
     
    p={x=99,y=68,w=18.5,h=18.5,oldx=0,oldy=0}
    q={x=369,y=203,w=100,h=48}
     
    velocidad = 2
	RecogerBonus = 0
   
    bonus = {}
	bonus[1] = {x = 253, y = 120, w = 16, h = 15 }
	bonus[2] = {x = 253, y = 169, w = 16, h = 15 }
   
    enemigo = {}
    enemigo[1] = {x = 71,y = 108, w = 16, h = 16}
    enemigo[2] = {x = 71,y = 132, w = 16, h = 16}
    enemigo[3] = {x = 431,y = 158, w = 16, h = 16}
    enemigo[4] = {x = 431,y = 182, w = 16, h = 16}
         
    a={}
    a[1]={x=66,y=50,w=86,h=4}
    a[2]={x=66,y=50,w=4,h=152}
    a[3]={x=66,y=199,w=304,h=4}
    a[4]={x=370,y=199,w=4,h=53}
    a[5]={x=370,y=252,w=86,h=4}
    a[6]={x=452,y=100,w=4,h=152}
    a[7]={x=149,y=100,w=303,h=4}
    a[8]={x=149,y=50,w=4,h=50}
     
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
			image.blit(bonus[2].x,bonus[2].y,bonus1)
            screen.print(60,12,"Muertes: "..m,negro)
			screen.print(200,12,"Nivel: 4/5",negro)
               
            p.oldx=p.x
            p.oldy=p.y
                   
            if controls.up() then p.y=p.y-velocidad elseif controls.down() then p.y=p.y+velocidad end
            if controls.left() then p.x=p.x-velocidad elseif controls.right() then p.x=p.x+velocidad end
                   
                    if enemigo[1].x <= 71 then
                            movimiento1 = 0
                            end
                    if enemigo[1].x >= 431 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[1].x = enemigo[1].x + 4.25
                            end
                    if movimiento1 == 1 then
                            enemigo[1].x = enemigo[1].x - 4.25
                            end
					if enemigo[2].x <= 71 then
                            movimiento1 = 0
                            end
                    if enemigo[2].x >= 431 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[2].x = enemigo[2].x + 4.25
                            end
                    if movimiento1 == 1 then
                            enemigo[2].x = enemigo[2].x - 4.25
                            end
					if enemigo[3].x <= 71 then
                            movimiento2 = 0
                            end
                    if enemigo[3].x >= 431 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[3].x = enemigo[3].x + 4.25
                            end
                    if movimiento2 == 1 then
                            enemigo[3].x = enemigo[3].x - 4.25
                            end
					if enemigo[4].x <= 71 then
                            movimiento2 = 0
                            end
                    if enemigo[4].x >= 431 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[4].x = enemigo[4].x + 4.25
                            end
                    if movimiento2 == 1 then
                            enemigo[4].x = enemigo[4].x - 4.25
                            end
                                   
            draw.fillrect(p.x,p.y,p.w,p.h,naranja)
            draw.rect(p.x,p.y,p.w,p.h,negro)
            draw.rect(p.x+1,p.y+1,p.w-2,p.h-2,negro)
     
                           
            for i=1,8 do
                draw.fillrect(a[i].x,a[i].y,a[i].w,a[i].h,negro)
                if colision(a[i],p) then p.x=p.oldx p.y=p.oldy end
            end
                   
            for j=1,4 do
				if colision(enemigo[j],p) then 
				p.x = 99 p.y = 68
				bonus[1].x = 253 bonus[1].y = 120
				bonus[2].x = 253 bonus[2].y = 169
				RecogerBonus = 0 
				m = m+1 
				end
            end
            
			for k=1,2 do
				if colision (p,bonus[k]) then bonus[k].x = 500 bonus[k].y = 500 RecogerBonus = RecogerBonus+1  end
			end
			
            if colision(p,q) and RecogerBonus == 2  then
                os.message("Has ganado el cuarto nivel.")
                dofile("Nivel5.lua")
            end
        screen.flip()
    end