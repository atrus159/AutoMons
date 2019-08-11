var typeEvent = async_load[? "type"]
switch(typeEvent){
	case network_type_connect:
	break
	case network_type_disconnect:
	break;
	case network_type_data:
	var recive_buffer = async_load[? "buffer"]
	buffer_seek(recive_buffer, buffer_seek_start,0)
	handle_packet(recive_buffer)
	break;
}