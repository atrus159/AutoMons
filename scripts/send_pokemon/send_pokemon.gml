buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer, buffer_u8,10)//client send pokemon
with(Pokemon){
	if(state ==3){
		buffer_write(obj_client.buffer,buffer_u8,pokeCode)
		var relX = x/control.boardCell-control.boardX
		var relY = y/control.boardCell - (control.boardY-0.5+control.boardH/2)
		buffer_write(obj_client.buffer,buffer_u8,relX)
		buffer_write(obj_client.buffer,buffer_u8,relY)
	}
}
network_send_packet(socket,buffer,buffer_tell(buffer))