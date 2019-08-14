port = 8000
socket = network_create_socket(network_socket_tcp)
connection = network_connect(socket,global.ip,port)


if(connection >=0){
buffer = buffer_create(1024,buffer_fixed,1)
playerCount = 0
players = ds_list_create()
playerNames = ds_map_create()
gameState = 0
timer = 35
myId = -1
opId = -1
isFakeBattle = 0
instance_destroy(get_ip)
instance_create_depth(0,0,0,get_name)
}else{
get_ip.connecting = 1
instance_destroy(self)
}