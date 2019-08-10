var list = argument0
var value = argument1
for(var i = 0; i<ds_list_size(list); i++){
	if(ds_list_find_value(list,i) == noone){
		ds_list_replace(list,i,value)	
		return
	}
}
ds_list_add(list,value)