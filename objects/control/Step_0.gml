if(oldState != global.gameState){
	switch(global.gameState){
		case 0:
		obj_client.opId = -1
		obj_client.isFakeBattle = 0
		with(ally_piece){
			instance_destroy(self)	
		}
		with(enemy_piece){
			instance_destroy(self)	
		}
		with(combat_handler){
			ds_list_clear(ally_pieces)
			ds_list_clear(enemy_pieces)	
		}
		locked = false
		instance_activate_object(Pokemon)
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
		break;
		
	}
	oldState = global.gameState
}