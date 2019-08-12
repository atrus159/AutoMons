if(oldState != global.gameState){
	switch(global.gameState){
		case 0:
		locked = false
		instance_activate_object(Pokemon)
		instance_destroy(WAR)
		break;
		case 1:
		locked = true
		with(obj_client){
			send_pokemon()
		}
		with(Pokemon){
		if(state == 3){
			instance_deactivate_object(self)	
		}else if(state == 2){
			control.money += cost
			instance_destroy(self)
		}
		}
		break;
		case 2:
		instance_create_depth(500,500,-20,WAR)
		break;
		
	}
	oldState = global.gameState
}