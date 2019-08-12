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
	case 2: //ally piece message
		var pieceId = buffer_read(buffer,buffer_u8)
		var pieceX = buffer_read(buffer,buffer_u16)
		var pieceY = buffer_read(buffer,buffer_u16)
		var relX = pieceX*(control.boardCell/10)+(control.boardX)*control.boardCell
		var relY = pieceY*(control.boardCell/10)+(control.boardY)*control.boardCell
		with(combat_handler){
			for(var i = 0; i<ds_list_size(ally_pieces); i++){
				var curPiece = ds_list_find_value(ally_pieces,i)
				if(curPiece != undefined && curPiece.piece_id == pieceId){
					curPiece.x = relX
					curPiece.y = relY
					return
				}
			}
			var newPiece = instance_create_depth(relX,relY,0,ally_piece)
			ds_list_add(ally_pieces,newPiece)
			newPiece.piece_id = pieceId
			var typeIndex = buffer_read(buffer,buffer_u8)
			newPiece.baseString = ds_list_find_value(global.pokeLookup,typeIndex)
			newPiece.facing = buffer_read(buffer,buffer_u8)
		}
	
	break;
	case 3: //enemy piece message
		var pieceId = buffer_read(buffer,buffer_u8)
		var pieceX = buffer_read(buffer,buffer_u16)
		var pieceY = buffer_read(buffer,buffer_u16)
		var relX = pieceX*(control.boardCell/10)+(control.boardX)*control.boardCell
		var relY = pieceY*(control.boardCell/10)+(control.boardY)*control.boardCell
		with(combat_handler){
			for(var i = 0; i<ds_list_size(enemy_pieces); i++){
				var curPiece = ds_list_find_value(enemy_pieces,i)
				if(curPiece != undefined && curPiece.piece_id == pieceId){
					curPiece.x = relX
					curPiece.y = relY
					return
				}
			}
			var newPiece = instance_create_depth(relX,relY,0,enemy_piece)
			ds_list_add(enemy_pieces,newPiece)
			newPiece.piece_id = pieceId
			var typeIndex = buffer_read(buffer,buffer_u8)
			newPiece.baseString = ds_list_find_value(global.pokeLookup,typeIndex)
			newPiece.facing = buffer_read(buffer,buffer_u8)
		}
	break;
}