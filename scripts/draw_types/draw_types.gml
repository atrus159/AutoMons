var drawX = argument0
var drawY = argument1
var list = argument2
var scale = argument3

if(ds_list_size(list) == 1){
	var typeSprite = ds_list_find_value(list,0)
	draw_sprite_ext(typeSprite,-1,drawX,drawY,scale,scale,0,c_white,1)
}else{
	var typeSprite1 = ds_list_find_value(list,0)
	var typeSprite2 = ds_list_find_value(list,1)
	draw_sprite_ext(typeSprite1,-1,drawX-16*scale,drawY,scale,scale,0,c_white,1)
	draw_sprite_ext(typeSprite2,-1,drawX+16*scale,drawY,scale,scale,0,c_white,1)
}