draw_set_color(c_silver)
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