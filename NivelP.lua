blanco = color.new(255,255,255)
negro = color.new(0,0,0)
naranja = color.new(255,128,0)
	
bonus1 = image.load("imagenes/bonus.png")
fondo = image.load("imagenes/fondoP.png")
     
p={x=57,y=130,w=18.5,h=18.5,oldx=0,oldy=0}
q={x=364,y=71,w=42,h=135}
     
velocidad = 2
	
RecogerBonus = 0
   
bonus = {}
bonus[1] = {x = 195, y = 109, w = 16, h = 15 }
bonus[2] = {x = 244, y = 109, w = 16, h = 15 }
bonus[3] = {x = 293, y = 109, w = 16, h = 15 }
bonus[4] = {x = 195, y = 155, w = 16, h = 15 }
bonus[5] = {x = 244, y = 155, w = 16, h = 15 }
bonus[6] = {x = 293, y = 155, w = 16, h = 15 }
         
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
		image.blit(bonus[1].x,bonus[1].y,bonus1)
		image.blit(bonus[2].x,bonus[2].y,bonus1)
		image.blit(bonus[3].x,bonus[3].y,bonus1)
		image.blit(bonus[4].x,bonus[4].y,bonus1)
		image.blit(bonus[5].x,bonus[5].y,bonus1)
		image.blit(bonus[6].x,bonus[6].y,bonus1)
		screen.print(200,12,"Nivel: 1/2",negro)
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
                   
		if colision (p,bonus[1]) then bonus[1].x = 500 bonus[1].y = 500 RecogerBonus = RecogerBonus+1 end
		if colision (p,bonus[2]) then bonus[2].x = 500 bonus[2].y = 500 RecogerBonus = RecogerBonus+1 end
		if colision (p,bonus[3]) then bonus[3].x = 500 bonus[3].y = 500 RecogerBonus = RecogerBonus+1 end
		if colision (p,bonus[4]) then bonus[4].x = 500 bonus[4].y = 500 RecogerBonus = RecogerBonus+1 end
		if colision (p,bonus[5]) then bonus[5].x = 500 bonus[5].y = 500 RecogerBonus = RecogerBonus+1 end
		if colision (p,bonus[6]) then bonus[6].x = 500 bonus[6].y = 500 RecogerBonus = RecogerBonus+1 end
			
        if colision(p,q) and RecogerBonus == 6  then
			sound.loop()
			dofile("NivelP1.lua")
        end
    screen.flip()
	if controls.start() then broke() end
end