var arr = argument0
var value = argument1

for(var i = 0; i < array_length_1d(arr);i++) {
	if(arr[i] == value)
		return i
}
return -1