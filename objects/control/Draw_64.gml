draw_set_color(c_black)
draw_circle(40,50,20,false)
draw_set_font(font0)
draw_set_color(c_yellow)
draw_text(40,20,"$"+string(money))


if(level == 10){
draw_circle(40,50,22,false)
draw_set_color(c_black)
draw_circle(40,50,19,false)
draw_set_color(c_yellow)
draw_text(40,50,string(level))
}else{
var lowXp = ds_list_find_value(levelBenchMarks,level-1)
var hiXp = ds_list_find_value(levelBenchMarks,level)
var dif = hiXp-lowXp
var ratio = (xp-lowXp)/dif
draw_arc(40,50,20,ratio,3)
draw_text(40,50,string(level))
draw_text(40,80,string(xp-lowXp)+"/"+string(dif))
}


draw_text(room_width-100,20,string(global.timer)+" seconds")
draw_text(room_width-100,85,"Phase "+string(global.gameState))

