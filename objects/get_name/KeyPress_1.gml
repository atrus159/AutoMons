switch(keyboard_lastkey){
	default:
		myName += keyboard_lastchar
	break;
	case vk_delete:
		if(string_length(myName)>0){
		myName= string_delete(myName,string_length(myName),1)
		}
	break;
	case vk_backspace:
		if(string_length(myName) >0){
		myName = string_delete(myName,string_length(myName),1)
		}
	break;
	case vk_enter:
		update_name(myName)
	break;
}