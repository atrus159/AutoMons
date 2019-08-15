for(var i = 0; i<playerCount; i++){
	var player = ds_list_find_value(players,i)
	var pName = ds_map_find_value(playerNames,player)
	draw_set_color(c_white)
	draw_rectangle(room_width-150, 100+50*i, room_width-50, 100+50*i+16,false)
	draw_set_color(c_gray)
	draw_rectangle(room_width-130, 100+50*i+16, room_width-50, 100+50*i+38,false)
	draw_set_color(c_black)
	draw_set_font(font0)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text(room_width-100,100+50*i+9,pName)
	if(player == myId){
		draw_set_color(c_lime)
		draw_rectangle(room_width-150, 100+50*i, room_width-50, 100+50*i+16,true)
	}
	if(player == opId){
		draw_set_color(c_red)
		draw_rectangle(room_width-150, 100+50*i, room_width-50, 100+50*i+16,true)
	if(isFakeBattle){
		draw_sprite(fake_game,-1,room_width-160,100+50*i+8)
	}
	}
	draw_set_color(c_yellow)
	draw_text(room_width-70,100+50*i+28,"$"+string(ds_map_find_value(playerMoney,player)))
	draw_text(room_width-110,100+50*i+28,"Lv."+string(ds_map_find_value(playerLevels,player)))
}
