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
for(var i = 0; i<shopSize; i++){
	ds_list_add(activeList,noone)	
}

send_reroll_request()
