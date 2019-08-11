var buffer = argument0
var messageId = buffer_read(buffer,buffer_u8)
switch(messageId){
	case 1:
		global.playerCount = buffer_read(buffer,buffer_u32)
	break;
}