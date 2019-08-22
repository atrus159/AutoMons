
switch(keyboard_lastkey){
	default:
		charIndex ++
		text = string_insert(keyboard_lastchar,text,charIndex)


	break;
	case vk_delete:
		if(string_length(text)>0){
		text = string_delete(text ,charIndex,1)
		charIndex --
		}
	break;
	case vk_backspace:
		if(string_length(text) >0){
		text = string_delete(text,charIndex,1)
		if(charIndex>0){
		charIndex --
		}
		}
	break;
	case vk_enter:
		script_execute(enterScript)
		text = ""
	break;
	case vk_shift:
	break;
	case vk_left:
		if(charIndex>0){
			charIndex --	
		}
	break;
	case vk_right:
		if(charIndex<string_length(text)){
			charIndex ++	
		}
	break;
}