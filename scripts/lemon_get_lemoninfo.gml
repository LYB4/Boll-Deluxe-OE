var objid;
objid = string_trim(obj,"MODDEDOBJECT_")
my_code=ds_map_find_value(global.objectscripts,argument[0]+"_"+objid);
global.cobjectreturn = "[NO DATA]"
code_execute(my_code,argument[1],argument[2])

return global.cobjectreturn;
