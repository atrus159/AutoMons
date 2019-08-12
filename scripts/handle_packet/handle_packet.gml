var buffer = argument0
var messageId = buffer_read(buffer,buffer_u8)
switch(messageId){
	case 1: //daily packet
		global.gameState = buffer_read(buffer,buffer_u8)
		global.timer = buffer_read(buffer,buffer_u8)
		global.playerCount = 0
		while(buffer_sizeof(buffer)>0){
			var char1 = buffer_read(buffer,buffer_u32)
			if(char1 == 1){
				break;	
			}else{
				var nameString = ""
				nameString += chr(char1)
				nameString += chr(buffer_read(buffer,buffer_u32))
				nameString += chr(buffer_read(buffer,buffer_u32))
				ds_list_replace(global.players,global.playerCount,nameString)
				global.playerCount++
			}
		}
		for(var i = global.playerCount; i<ds_list_size(global.players); i++){
			ds_list_replace(global.players,i,"noone")
		}
	break;
}