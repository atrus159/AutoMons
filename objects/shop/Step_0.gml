for(var i = 0; i<ds_list_size(activeList); i++){
	var myMon = ds_list_find_value(activeList,i)
	if(myMon != noone){
	myMon.y = shopY+shopH/2-yOff
	myMon.x = shopX + offset + cellW*i
	}
}