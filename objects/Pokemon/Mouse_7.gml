switch(state){
	case 2:
		if(point_in_rectangle(x,y,bench.benchX, bench.benchY, bench.benchX+bench.benchW,bench.benchY+bench.benchH)){
			
			if(bench.benchCount<bench.benchSize){
				 var pos = (x - bench.benchX - bench.offset+bench.cellW/2) / bench.cellW
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