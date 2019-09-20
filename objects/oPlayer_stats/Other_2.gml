/// @description
ini_open("ne_lez.ini")
gold = ini_read_real("Stuff","gold", 0)
for(var i = 0; i < array_length_1d(skins); i++) {
	if(ini_read_real("unlocked",string(i),false))
		ds_list_add(unlocked_skins,skins[i])
}
ini_close()