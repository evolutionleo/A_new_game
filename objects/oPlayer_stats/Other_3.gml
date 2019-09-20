/// @description 
ini_open("ne_lez.ini")
ini_write_real("Stuff","gold",gold)
for(var i = 0; i < array_length_1d(skins); i++) {
	if(ds_list_find_value(unlocked_skins, array_find_value(skins,i)) != -1)
		ini_write_real("unlocked",string(i),true)
	else
		ini_write_real("unlocked",string(i),false)
}
ini_close()