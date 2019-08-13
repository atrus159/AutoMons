draw_set_font(font0)
draw_set_color(c_yellow)
draw_text(30,20,"$"+string(money))

draw_text(room_width-100,20,string(global.timer)+" seconds")
draw_text(room_width-100,80,"Phase "+string(global.gameState))

