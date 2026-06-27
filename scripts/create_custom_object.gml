///create_custom_object(x,y,objid)
if is_string(obj) {
    var objtype;
    objtype=argument2
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
    o=instance_create(argument0,argument1,_obj)
    o.mytype = objtype
    with(o) {
        if (object_index!=customobjecthittable) {
            event_user(0);
        } else {
            event_user(5);
        }
    }

    return o
}

return noone
