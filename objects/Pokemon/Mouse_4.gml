switch(state){
	case 0:
		if(shop.open && control.money>=cost){
			if(bench.benchCount<bench.benchSize){
				var pos = ds_list_find_index(shop.activeList,id)
				if(pos != noone){
					ds_list_replace(shop.activeList,pos, noone)
				}
				control.money -= cost
				send_buy_request(object_get_name(object_index))
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
						send_buy_request(object_get_name(object_index))
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
	case 2:

		if(point_in_rectangle(x,y,bench.benchX, bench.benchY, bench.benchX+bench.benchW,bench.benchY+bench.benchH)){
			
			if(bench.benchCount<bench.benchSize){
				 var pos = (x - bench.benchX - bench.offset) / bench.cellW
				 list_insert(bench.benchList, pos, id)
				 state = 1
				 bench.benchCount ++
			 }
		}else if(point_in_rectangle(x,y,control.sellX, control.sellY, control.sellX+control.sellW,control.sellY+control.sellH)){
			control.money += cost
			send_sell_request()
			instance_destroy(self)

	
		}else if(!control.locked){
			var boardX = control.boardX-0.5
			var boardY = control.boardY
			var boardH = control.boardH
			var boardW = control.boardW
			var boardCell = control.boardCell

		if(point_in_rectangle(x,y,boardX*boardCell, ((boardY-0.5+boardH/2))*boardCell, (boardX+boardW)*boardCell, (boardY+boardH)*boardCell)){
			if(!placeFlag){
			state = 3
				move_snap(64,64)
				var target = collision_point(x,y,Pokemon,true,true)
				if(target != noone){
					target.state = 2
					target.placeFlag = 1
				}
			}
		}else{
			
		}
		}
	break;
}