if(control.money>=5 && control.level<10){
	control.money -=5
	control.xp+=4
	send_xp_request()
}