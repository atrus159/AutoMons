var buyObject = argument0
with(obj_client){
buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer, buffer_u8,13)//buy request
buffer_write(buffer,buffer_u8,ds_list_find_index(global.pokeLookup, string_lower(buyObject)))
network_send_packet(socket,buffer,buffer_tell(buffer))
}