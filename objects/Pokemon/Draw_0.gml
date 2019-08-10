switch(state){
	case 0:
	if(shop.open){
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_ellipse(x-50,y+20,x+50,y+50,false)
	draw_set_alpha(1)
	draw_sprite(draftSprite,-1,x,y)
	draw_types(x,y+90,types,2)
	draw_set_font(font0)
	draw_set_color(c_yellow)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text(x,y+64,name)
	draw_circle(x,y+120,10,true)
	draw_text(x,y+121,cost)
	}
	break;
	case 1:
	draw_sprite(benchSprite,-1,x,y)
	if(collision_point(mouse_x,mouse_y,self,false,false)){
		draw_set_color(c_dkgray)
		draw_rectangle(x+30,y-180,x+130,y-20,false)
		draw_sprite_ext(draftSprite,-1,x+80,y-140,0.5,0.5,0,c_white,1)
		draw_types(x+80,y-100,types,1)
		draw_set_font(font0)
		draw_set_color(c_yellow)
		draw_set_valign(fa_middle)
		draw_set_halign(fa_center)
		draw_text(x+80,y-80,name)
		draw_circle(x+80,y-56,10,true)
		draw_text(x+80,y-55,cost)
	}
	break
	case 2:
	draw_sprite_ext(upSprite,walkFrame,x,y,3,3,0,c_white,1)
	break
	case 3:
	switch(facing){
		case 0:
		draw_sprite_ext(rightSprite,walkFrame*walking,x,y,2,2,0,c_white,1)
		break;
		case 1:
		draw_sprite_ext(upSprite,walkFrame*walking,x,y,2,2,0,c_white,1)
		break;
		case 2:
		draw_sprite_ext(leftSprite,walkFrame*walking,x,y,2,2,0,c_white,1)
		break;
		case 3:
		draw_sprite_ext(downSprite,walkFrame*walking,x,y,2,2,0,c_white,1)
		break;
	}
	break
}