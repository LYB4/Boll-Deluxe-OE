var i, size, key, _code;
size = ds_map_size(global.objectscripts);
key = ds_map_find_first(global.objectscripts);
i=0;
repeat(size) {
    _code = ds_map_find_value(global.objectscripts, key);
    if (code_exists(_code)) && (_code != 0) {
        if (string_starts_with(key,"deloaded_")) code_execute(_code);
        code_destroy(_code);
    }
    key = ds_map_find_next(global.objectscripts, key);
    i+=1;
}
ds_map_clear(global.objectscripts);
