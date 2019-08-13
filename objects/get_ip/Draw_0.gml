draw_set_font(UI_Font)
draw_set_color(c_dkgray)
draw_rectangle(200,400,500,500,false)
draw_set_color(c_lime)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
if(connecting == 0){
draw_text(200,300,"enter ip adress of server")
draw_text(250,430,global.ip)
}else if(connecting == 1){
draw_set_color(c_red)
draw_text(200,300,"connection failed, enter another ip adress")
draw_set_color(c_lime)
draw_text(250,430,global.ip)	
}
