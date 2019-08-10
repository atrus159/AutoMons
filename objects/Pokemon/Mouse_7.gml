switch(state){
	case 2:
		if(point_in_rectangle(x,y,bench.benchX, bench.benchY, bench.benchX+bench.benchW,bench.benchY+bench.benchH)){
			
			if(bench.benchCount<bench.benchSize){
				 var pos = (x - bench.benchX - bench.offset) / bench.cellW
				 list_insert(bench.benchList, pos, id)
				 state = 1
				 bench.benchCount ++
			 }
		}else if(point_in_rectangle(x,y,control.sellX, control.sellY, control.sellX+control.sellW,control.sellY+control.sellY)){
			control.money += cost
			instance_destroy(self)
		}else{
			state = 3	
		}
	
	break;
	
}