var str1 = argument0

var str2 = string_char_at(str1, 1); // return the first character of the string
str2 = string_upper( str2 );    // make the character uppercase

str1 = string_delete(str1, 1, 1);   // delete the first (lowercase) character
str1 = string_insert(str2, str1, 1) // insert the uppercase character into the original

return str1