draw_set_font(UI_Font)
draw_set_color(c_dkgray)
draw_rectangle(textX-50,textY-30,textX+250,textY+70,false)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(promptColor)
draw_text(promptX,promptY,prompt)
draw_set_color(textColor)
draw_text(textX,textY,text)
if(blinkToggle){
var subString = string_copy(text,0,charIndex)
var curChar = string_copy(text,charIndex,1)
if(string_length(text) == 0){
	curChar = " "	
}
draw_line_width(textX+string_width(subString),textY+string_height(" "),textX+string_width(subString)+string_width(curChar),textY+string_height(" "),3)
}