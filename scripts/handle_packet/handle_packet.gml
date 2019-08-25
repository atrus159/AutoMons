var buffer = argument0
var messageId = buffer_read(buffer,buffer_u8)
switch(messageId){
	case 1: //daily packet
		global.gameState = buffer_read(buffer,buffer_u8)
		global.timer = buffer_read(buffer,buffer_u8)
		myId = buffer_read(buffer,buffer_u8)
		playerCount = 0
		var rollCall = ds_list_create()
		while(buffer_tell(buffer)<buffer_get_size(buffer)){
			var pID = buffer_read(buffer,buffer_u8)
			var newMoney = buffer_read(buffer,buffer_u8)
			var newLevel = buffer_read(buffer,buffer_u8)
			ds_list_add(rollCall,pID)
			if(ds_list_find_index(players,pID) == -1){
				ds_list_add(players,pID)
				ds_map_add(playerNames,pID, "New Player")
				ds_map_add(playerMoney,pID, newMoney)
				ds_map_add(playerLevels,pID, newLevel)
			}else{
				ds_map_set(playerMoney,pID, newMoney)
				ds_map_set(playerLevels,pID, newLevel)
			}

			if(pID == obj_client.myId && instance_exists(control)){
				control.money = newMoney
				control.level = newLevel
			}
			playerCount++
		}
		
		for(var i = 0; i<ds_list_size(players); i++){
			var curId = ds_list_find_value(players,i)
			if(ds_list_find_index(rollCall,curId) == -1){
				ds_map_delete(playerNames,curId)
				ds_map_delete(playerLevels,curId)
				ds_map_delete(playerMoney,curId)
				ds_list_delete(players,i)
				i--
			}
		}
		ds_list_destroy(rollCall)
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
					var typeIndex = buffer_read(buffer,buffer_u8)
					curPiece.baseString = ds_list_find_value(global.pokeLookup,typeIndex)
					curPiece.facing = buffer_read(buffer,buffer_u8)					
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
					var typeIndex = buffer_read(buffer,buffer_u8)
					curPiece.baseString = ds_list_find_value(global.pokeLookup,typeIndex)
					curPiece.facing = buffer_read(buffer,buffer_u8)	
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
	case 4: //server name change
		var changedId = buffer_read(buffer,buffer_u8)
		var changedName = buffer_read(buffer,buffer_string)
		ds_map_replace(playerNames,changedId,changedName)
	break;
	case 5:	//start signal
		room_goto_next()
	break;
	case 6: //update opponents
		opId = buffer_read(buffer,buffer_u8)
		isFakeBattle = buffer_read(buffer,buffer_u8)
	break;
	case 7:
	for(var i = 0; i<shop.shopSize; i++){
		var pokeIndex = buffer_read(buffer,buffer_u8)
		var pokeType = capFirst(ds_list_find_value(global.pokeLookup,pokeIndex))
		var myMon = instance_create_depth(0,0,0,asset_get_index(pokeType))
		var old = ds_list_find_value(shop.activeList,i)
		if(old != noone){
			instance_destroy(old)	
		}
		ds_list_replace(shop.activeList,i,myMon)
	}	
	shop.open = true
	break;
}