if(!locked){
	locked = true
	with(Pokemon){
		if(state == 3){
			instance_deactivate_object(self)	
		}else if(state == 2){
			control.money += cost
			instance_destroy(self)
		}
	}
	
}else{
	locked = false
	instance_activate_object(Pokemon)
}