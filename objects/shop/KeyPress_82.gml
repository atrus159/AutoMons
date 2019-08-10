open = true
for(var i = 0; i<shopSize; i++){
	var pick = choose(Charmander,Paras,Zubat,Weedle,Pidgy,Pichu)
	var myMon = instance_create_depth(0,0,0,pick)
	var old = ds_list_find_value(activeList,i)
	if(old != noone){
		instance_destroy(old)	
	}
	ds_list_replace(activeList,i,myMon)
}