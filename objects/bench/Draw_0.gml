draw_set_color(c_gray)
draw_rectangle(benchX, benchY, benchX+benchW, benchY+benchH,false)
draw_set_color(c_black)
for(var i = 0; i<benchSize; i++){
	draw_rectangle(benchX+offset+i*cellW-cellW/2,benchY+ 10, benchX+offset+(i+1)*cellW-cellW/2,benchY+ 10+cellW,true)
}
