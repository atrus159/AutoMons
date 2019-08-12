var sufix = ""
switch(facing){
	case 0:
		sufix = "_right"
	break;
	case 1:
		sufix = "_up"
	break;
	case 2:
		sufix = "_left"
	break;
	case 3:
		sufix = "_down"
	break;
}
var assetString = baseString + sufix
draw_sprite_ext(asset_get_index(assetString),-1,x,y,2,2,0,c_white,1)