draw_sprite(bench_sprt,-1,benchX+5,benchY+20)
for(var i = 0; i<benchSize; i++){
	draw_sprite(bench_tile,-1,benchX+offset+i*cellW,benchY+64)
	//draw_rectangle(benchX+offset+i*cellW-cellW/2,benchY+ 10, benchX+offset+(i+1)*cellW-cellW/2,benchY+ 10+cellW,true)
}
