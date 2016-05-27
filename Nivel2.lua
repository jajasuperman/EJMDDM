	bola1 = image.load("imagenes/bola1.png")
	bonus1 = image.load("imagenes/bonus.png")
    fondo = image.load("imagenes/fondo1.png")
     
    p={x=40,y=126,w=18.5,h=18.5,oldx=0,oldy=0}
    q={x=395,y=112,w=75,h=48}
     
    velocidad = 2
	
	RecogerBonus = false
   
    bonus = {}
	bonus[1] = {x = 220, y = 117, w = 16, h = 15 }
   
    enemigo = {}
    enemigo[1] = {x = 92,y = 57, w = 16, h = 16}
    enemigo[2] = {x = 116,y = 203, w = 16, h = 16}
    enemigo[3] = {x = 144,y = 57, w = 16, h = 16}
    enemigo[4] = {x = 170,y = 203, w = 16, h = 16}
    enemigo[5] = {x = 195,y = 55, w = 16, h = 16}
    enemigo[6] = {x = 216,y = 203, w = 16, h = 16}
    enemigo[7] = {x = 244,y = 57, w = 16, h = 16}
    enemigo[8] = {x = 270,y = 203, w = 16, h = 16}
    enemigo[9] = {x = 292,y = 57, w = 16, h = 16}
    enemigo[10] = {x = 320,y = 203, w = 16, h = 16}
    enemigo[11] = {x = 344,y = 57, w = 16, h = 16}
    enemigo[12] = {x = 370,y = 203, w = 16, h = 16}
         
    a={}
    a[1]={x=11,y=104,w=79,h=4}
    a[2]={x=11,y=104,w=4,h=61}
    a[3]={x=11,y=165,w=76,h=4}
    a[4]={x=87,y=165,w=4,h=55}
    a[5]={x=87,y=220,w=309,h=4}
    a[6]={x=392,y=160,w=4,h=60}
    a[7]={x=392,y=160,w=78,h=4}
    a[8]={x=466,y=109,w=4,h=55}
    a[9]={x=392,y=109,w=78,h=4}
    a[10]={x=392,y=49,w=4,h=60}
    a[11]={x=87,y=49,w=306,h=4}
    a[12]={x=87,y=49,w=4,h=59}
     
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
			image.blit(bonus[1].x,bonus[1].y,bonus1)
            image.blit(enemigo[1].x,enemigo[1].y,bola1)
            image.blit(enemigo[2].x,enemigo[2].y,bola1)
            image.blit(enemigo[3].x,enemigo[3].y,bola1)
            image.blit(enemigo[4].x,enemigo[4].y,bola1)
            image.blit(enemigo[5].x,enemigo[5].y,bola1)
            image.blit(enemigo[6].x,enemigo[6].y,bola1)
            image.blit(enemigo[7].x,enemigo[7].y,bola1)
            image.blit(enemigo[8].x,enemigo[8].y,bola1)
            image.blit(enemigo[9].x,enemigo[9].y,bola1)
            image.blit(enemigo[10].x,enemigo[10].y,bola1)
            image.blit(enemigo[11].x,enemigo[11].y,bola1)
            image.blit(enemigo[12].x,enemigo[12].y,bola1)
            screen.print(60,12,"Muertes: "..m,negro)
			screen.print(200,12,"Nivel: 2/5",negro)
               
            p.oldx=p.x
            p.oldy=p.y
                   
            if controls.up() then p.y=p.y-velocidad elseif controls.down() then p.y=p.y+velocidad end
            if controls.left() then p.x=p.x-velocidad elseif controls.right() then p.x=p.x+velocidad end
                   
                    if enemigo[1].y <= 57 then
                            movimiento1 = 0
                            end
                    if enemigo[1].y >= 203 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[1].y = enemigo[1].y + 2.35
                            end
                    if movimiento1 == 1 then
                            enemigo[1].y = enemigo[1].y - 2.35
                            end
                    if enemigo[2].y <= 57 then
                            movimiento2 = 0
                            end
                    if enemigo[2].y >= 203 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[2].y = enemigo[2].y + 2.35
                            end
                    if movimiento2 == 1 then
                            enemigo[2].y = enemigo[2].y - 2.35
                            end
                    if enemigo[3].y <= 57 then
                            movimiento1 = 0
                            end
                    if enemigo[3].y >= 203 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[3].y = enemigo[3].y + 2.35
                            end
                    if movimiento1 == 1 then
                            enemigo[3].y = enemigo[3].y - 2.35
                            end
                    if enemigo[4].y <= 57 then
                            movimiento2 = 0
                            end
                    if enemigo[4].y >= 203 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[4].y = enemigo[4].y + 2.35
                            end
                    if movimiento2 == 1 then
                            enemigo[4].y = enemigo[4].y - 2.35
                            end
                    if enemigo[5].y <= 57 then
                            movimiento1 = 0
                            end
                    if enemigo[5].y >= 203 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[5].y = enemigo[5].y + 2.35
                            end
                    if movimiento1 == 1 then
                            enemigo[5].y = enemigo[5].y - 2.35
                            end
                    if enemigo[6].y <= 57 then
                            movimiento2 = 0
                            end
                    if enemigo[6].y >= 203 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[6].y = enemigo[6].y + 2.35
                            end
                    if movimiento2 == 1 then
                            enemigo[6].y = enemigo[6].y - 2.35
                            end
                    if enemigo[7].y <= 57 then
                            movimiento1 = 0
                            end
                    if enemigo[7].y >= 203 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[7].y = enemigo[7].y + 2.35
                            end
                    if movimiento1 == 1 then
                            enemigo[7].y = enemigo[7].y - 2.35
                            end
                    if enemigo[8].y <= 57 then
                            movimiento2 = 0
                            end
                    if enemigo[8].y >= 203 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[8].y = enemigo[8].y + 2.35
                            end
                    if movimiento2 == 1 then
                            enemigo[8].y = enemigo[8].y - 2.35
                            end
                    if enemigo[9].y <= 57 then
                            movimiento1 = 0
                            end
                    if enemigo[9].y >= 203 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[9].y = enemigo[9].y + 2.35
                            end
                    if movimiento1 == 1 then
                            enemigo[9].y = enemigo[9].y - 2.35
                            end
                    if enemigo[10].y <= 57 then
                            movimiento2 = 0
                            end
                    if enemigo[10].y >= 203 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[10].y = enemigo[10].y + 2.35
                            end
                    if movimiento2 == 1 then
                            enemigo[10].y = enemigo[10].y - 2.35
                            end
                    if enemigo[11].y <= 57 then
                            movimiento1 = 0
                            end
                    if enemigo[11].y >= 203 then
                            movimiento1 = 1
                            end
                    if movimiento1 == 0 then
                            enemigo[11].y = enemigo[11].y + 2.35
                            end
                    if movimiento1 == 1 then
                            enemigo[11].y = enemigo[11].y - 2.35
                            end
                    if enemigo[12].y <= 57 then
                            movimiento2 = 0
                            end
                    if enemigo[12].y >= 203 then
                            movimiento2 = 1
                            end
                    if movimiento2 == 0 then
                            enemigo[12].y = enemigo[12].y + 2.35
                            end
                    if movimiento2 == 1 then
                            enemigo[12].y = enemigo[12].y - 2.35
                            end
                                   
            draw.fillrect(p.x,p.y,p.w,p.h,naranja)
            draw.rect(p.x,p.y,p.w,p.h,negro)
            draw.rect(p.x+1,p.y+1,p.w-2,p.h-2,negro)
     
                           
            for i=1,12 do
                draw.fillrect(a[i].x,a[i].y,a[i].w,a[i].h,negro)
                if colision(a[i],p) then p.x=p.oldx p.y=p.oldy end
            end
                   
            for j=1,12 do
            if colision(enemigo[j],p) then p.x = 40 p.y = 126 bonus[1].x = 220 bonus[1].y = 117 RecogerBonus = false  m = m+1 end
            end
            
            if colision (p,bonus[1]) then bonus[1].x = 500 bonus[1].y = 500 RecogerBonus = true end
			
            if colision(p,q) and RecogerBonus  then
                os.message("Has ganado el segundo nivel.")
				dofile("Nivel3.lua")
            end
        screen.flip()
    end