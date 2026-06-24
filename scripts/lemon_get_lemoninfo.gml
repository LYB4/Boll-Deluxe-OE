my_code=ds_map_find_value(global.objectscripts,argument[0]+"_"+string(data[0]));
global.cobjectlemontype=argument[1]
global.cobjectlemondefault=argument[2]

return code_execute(my_code)
