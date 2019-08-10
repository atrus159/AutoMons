switch(state){
	case 0:
		if(shop.open && control.money>=cost){
			if(bench.benchCount<bench.benchSize){
				var pos = ds_list_find_index(shop.activeList,id)
				if(pos != noone){
					ds_list_replace(shop.activeList,pos, noone)
				}
				control.money -= cost
				list_add(bench.benchList, id)
				state = 1
				bench.benchCount ++
			}else if(evolves != noone){
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
					var myEvolve = instance_create_depth(x,y,1,evolves)
					myEvolve.state = 1
					var pos = ds_list_find_index(shop.activeList,id)
					if(pos != noone){
						ds_list_replace(shop.activeList,pos, noone)
					}	
					control.money -= cost
					list_add(bench.benchList, myEvolve)
					bench.benchCount -= 1
					instance_destroy(m1)
					instance_destroy(m2)
					instance_destroy(self)

				}
			}
		}	
	break;
	case 1:
	var pos = ds_list_find_index(bench.benchList,id)
	if(pos != noone){
	ds_list_replace(bench.benchList,pos, noone)
	}
	state = 2
	bench.benchCount --
	break;
	case 3:
	state = 2
	facing = 1
	break;
}