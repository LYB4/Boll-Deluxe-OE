///custom_sprite_exists(spritename)
var spritename;
spritename=argument0;
if (ds_map_exists(global.customsprites,spritename)) {
    var spr;
    spr = ds_map_find_value(global.customsprites,spritename)
    if (sprite_exists(spr)) && (spr != 0) {
        return true;
    } else {
        return false;
    }
} else {
    return false;
}
