draw_set_color(c_black)
draw_rectangle(sellX,sellY,sellX+sellW, sellY+sellH,false)
draw_set_color(c_gray)
for(var i = boardX*boardCell; i<(boardX+boardW)*boardCell; i+= boardCell){
	for(var j = boardY*boardCell; j<(boardY+boardH)*boardCell; j+= boardCell){
		var drawSprite = red_cell
		if(j>((boardY+boardH)/2)*boardCell){
			drawSprite = blue_cell
		}
		draw_sprite(drawSprite,-1,i,j)
	}	
}
draw_sprite_ext(logo,-1,((boardX-0.5+boardW/2))*boardCell,((boardY-0.5+boardH/2))*boardCell,0.75,0.75,0,c_white,0.3)
for(var i = boardX*boardCell; i<(boardX+boardW)*boardCell; i+= boardCell){
	for(var j = boardY*boardCell; j<(boardY+boardH)*boardCell; j+= boardCell){
		var drawSprite = red_cell_light
		if(j>((boardY+boardH)/2)*boardCell){
			drawSprite = blue_cell_light
		}
		draw_sprite(drawSprite,-1,i,j)
	}	
}