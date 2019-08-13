var name = argument0
with(obj_client){
buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer, buffer_u8,11)//client send new name
buffer_write(buffer,buffer_string,name)
network_send_packet(socket,buffer,buffer_tell(buffer))
}