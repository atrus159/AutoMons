var list = argument0
var pos = argument1
var value = argument2
if(ds_list_find_value(list,pos) == noone){
	ds_list_replace(list,pos,value)
}else{
	ds_list_insert(list,pos,value)
	for(var i = pos+1; i<ds_list_size(list); i++){
		if(ds_list_find_value(list,i) == noone){
			ds_list_delete(list,i)
			return
		}
	}
	for(var i = pos; i>0; i--){
			if(ds_list_find_value(list,i) == noone){
			ds_list_delete(list,i)
			return
		}	
	}
}