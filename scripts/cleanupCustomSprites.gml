var i, size, key, _spr;
size = ds_map_size(global.customsprites);
key = ds_map_find_first(global.customsprites);
i=0;
repeat(size) {
    _spr = ds_map_find_value(global.objectscripts, key);
    if (sprite_exists(_spr)) && (_spr != 0) {
        sprite_delete(_spr);
    }
    key = ds_map_find_next(global.customsprites, key);
    i+=1;
}
ds_map_clear(global.customsprites);
