var obj_type = string_lower(object_get_name(object_index))
var pokeId = ds_list_find_index(global.pokeLookup,obj_type)
with(obj_client){
buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer, buffer_u8,15)//buy request
buffer_write(buffer, buffer_u8,pokeId)
network_send_packet(socket,buffer,buffer_tell(buffer))
}