///add_custom_sprite(fname,spritename,imgnumb,removeback,xorig,yorig)
var fname,spritename,imgnumb,removeback,xorig,yorig,handle;
fname=argument0;
spritename=argument1;
imgnumb=argument2;
removeback=argument3;
xorig=argument4;
yorig=argument5;
if (ds_map_exists(global.customsprites,spritename)) {
    var spr;
    spr = ds_map_find_value(global.customsprites,spritename)
    if (sprite_exists(spr)) && (spr != 0) {
        sprite_delete(spr);
    }
}

handle = sprite_add(fname,imgnumb,removeback,0,xorig,yorig)

ds_map_set(global.customsprites,spritename,handle);

return handle;
