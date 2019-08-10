walkTimer +=1
if(walkTimer >15){
	walkTimer = 0	
	walkFrame = !walkFrame
}
switch(state){
	case 0:
	mask_index = draft_mask
	break;
	case 1:
	mask_index = bench_mask
	if(evolves != noone){
	var m1 = noone
	var m2 = noone
	for(var i = 0; i<bench.benchSize; i++){
		var target = ds_list_find_value(bench.benchList,i)
		if(target != noone && target.id != id && target.evolves == evolves){
			if(m1 == noone){
				m1 = target
			}else if(m2 == noone){
				m2 = target
				break;
			}
		}
	}
	if(m1 != noone && m2 != noone){
			ds_list_replace(bench.benchList,ds_list_find_index(bench.benchList,m1),noone)
			ds_list_replace(bench.benchList,ds_list_find_index(bench.benchList,m2),noone)
			var myEvolve = instance_create_depth(0,0,0,evolves)
			myEvolve.state = 1
			ds_list_replace(bench.benchList,ds_list_find_index(bench.benchList,id),myEvolve)
			instance_destroy(m1)
			instance_destroy(m2)
			instance_destroy(self)
			bench.benchCount -= 2
	}
	}
	
	break;
	case 2:
	x = mouse_x
	y = mouse_y
	break
	
	case 3:
	walking = keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)
	break;
	
}