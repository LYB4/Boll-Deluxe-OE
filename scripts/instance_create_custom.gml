///instance_create_custom(x,y,objname [string])
objtype = string(argument[2]);

switch(ds_map_find_value(global.customobjecttypes,objtype)) {
    case "enemy":
        _obj = customobjectenemy
        break;
    case "collider":
        _obj = customobjectcollider
        break;
    case "hittable":
        _obj = customobjecthittable
        break;
    case "moving":
        _obj = customobjectmoving
        break;
    default: _obj = customobject break;
}

the_obj = instance_create(argument[0],argument[1],_obj)

with the_obj {
    mytype = other.objtype
    event_user(0)
}

return the_obj;
