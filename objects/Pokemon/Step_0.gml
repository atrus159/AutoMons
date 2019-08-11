walkTimer +=1
if(walkTimer >15){
	walkTimer = 0	
	walkFrame = !walkFrame
}
switch(state){
	case 0:
	depth = -room_height-2
	mask_index = draft_mask
	break;
	case 1:
	depth = -room_height+1
	mask_index = bench_mask
	break;
	case 2:
	depth = -room_height
	x = mouse_x
	y = mouse_y
	break
	
	case 3:
	depth = -(y)
	walking = keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)
	break;
	
}