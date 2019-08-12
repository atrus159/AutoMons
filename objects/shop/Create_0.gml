open = true
activeList = ds_list_create()
shopX = 150
shopY = 90
shopW = 750
shopH = 250
cellW = 140
shopSize = 5
depth = -room_height-1
offset =100
yOff = 50
randomize()
for(var i = 0; i<shopSize; i++){
	var pick = choose(Charmander,Paras,Zubat,Weedle,Pidgey,Pichu)
	var myMon = instance_create_depth(0,0,0,pick)
	ds_list_add(activeList,myMon)
}