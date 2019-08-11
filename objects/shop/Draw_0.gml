
if(open){
draw_set_color(c_black)
draw_set_alpha(0.4)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_alpha(1)
draw_set_color(c_dkgray)
draw_rectangle(shopX, shopY, shopX+shopW, shopY+shopH,false)
draw_set_color(c_black)
draw_line_width(shopX,shopY,shopX,shopY+shopH,5)
draw_line_width(shopX,shopY+shopH,shopX+shopW,shopY+shopH,5)
draw_line_width(shopX+shopW,shopY+shopH,shopX+shopW,shopY,5)
draw_line_width(shopX+shopW,shopY,shopX,shopY,5)
}