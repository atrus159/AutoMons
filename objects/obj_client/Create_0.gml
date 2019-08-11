ip = "192.168.1.147"
port = 8000
socket = network_create_socket(network_socket_tcp)
connection = network_connect(socket,ip,port)

buffer = buffer_create(1024,buffer_fixed,1)
global.playerCount = 0