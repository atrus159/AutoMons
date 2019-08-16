var px = argument0
var py = argument1
var r = argument2
var ratio = argument3
var thickness = argument4
var theta = 4
for(var i = 0; i<ratio*360/theta; i++){
	draw_line_width(px+lengthdir_x(r,90-theta*i),py+lengthdir_y(r,90-theta*i),px+lengthdir_x(r,90-theta*(i+1)),py+lengthdir_y(r,90-theta*(i+1)),thickness)
}