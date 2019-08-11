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
				with(Pokemon){
					if(state != 0 && state != 2){
					if(other.id != id && other.evolves == evolves){
						if(m1 == noone){
							m1 = id
						}else if(m2 == noone){
							m2 = id
							break;
						}
					}
					}
				}
				if(m1 != noone && m2 != noone){
						var myEvolve = instance_create_depth(x,y,1,evolves)
						if(m1.state ==3){
							myEvolve.state = 3
							myEvolve.x = m1.x
							myEvolve.y = m1.y
						}else if(m2.state ==3){
							myEvolve.state = 3
							myEvolve.x = m2.x
							myEvolve.y = m2.y	
						}else{
						myEvolve.state = 1
						ds_list_replace(bench.benchList,ds_list_find_index(bench.benchList,m1),myEvolve)
						}
						var m1Index = ds_list_find_index(bench.benchList,m1)
						if(m1Index != undefined){
						ds_list_replace(bench.benchList,m1Index,noone)
						}
						var m2Index = ds_list_find_index(bench.benchList,m2)
						if(m2Index != undefined){
						ds_list_replace(bench.benchList,m2Index,noone)
						}
						instance_destroy(m1)
						instance_destroy(m2)
						bench.benchCount = 0
						for(var i = 0; i<bench.benchSize; i++){
							if(ds_list_find_value(bench.benchList,i) != noone){
								bench.benchCount ++
							}
						}
						var pos = ds_list_find_index(shop.activeList,id)
						if(pos != noone){
							ds_list_replace(shop.activeList,pos, noone)
						}
						control.money -= cost
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
	mouseTimer = 0
	break;
	case 3:
	state = 2
	facing = 1
	mouseTimer = 0
	break;
}