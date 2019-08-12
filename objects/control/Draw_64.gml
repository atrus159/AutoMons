draw_set_font(font0)
draw_set_color(c_yellow)
draw_text(30,20,"$"+string(money))

draw_text(room_width-100,20,string(global.timer)+" seconds")
draw_text(room_width-100,80,"Phase "+string(global.gameState))
for(var i = 0; i<global.playerCount; i++){
	var pName = ds_list_find_value(global.players,i)
	if pName != "noone"
	draw_set_color(c_white)
	draw_rectangle(room_width-150, 100+20*i, room_width-50, 100+20*i+15,false)
	draw_set_color(c_black)
	draw_text(room_width-80,100+20*i+10,pName)
}

