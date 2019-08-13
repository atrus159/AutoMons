if(connecting == 0 || connecting == 1){
switch(keyboard_lastkey){
	default:
		global.ip += keyboard_lastchar
	break;
	case vk_delete:
		if(string_length(global.ip)>0){
		global.ip = string_delete(global.ip,string_length(global.ip),1)
		}
	break;
	case vk_backspace:
		if(string_length(global.ip) >0){
		global.ip = string_delete(global.ip,string_length(global.ip),1)
		}
	break;
	case vk_enter:
		instance_create_depth(0,0,0,obj_client)
	break;
}
}