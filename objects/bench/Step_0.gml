for(var i = 0; i<benchSize; i++){
	var myMon = ds_list_find_value(benchList,i)
	if(myMon != noone){
	myMon.y = benchY+benchH/2
	myMon.x = benchX + offset + cellW*i
	}
}