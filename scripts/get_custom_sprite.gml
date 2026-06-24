///get_custom_sprite(spritename)
var spritename;
spritename=argument0;
if (ds_map_exists(global.customsprites,spritename)) {
    var spr;
    spr = ds_map_find_value(global.customsprites,spritename)
    if (sprite_exists(spr)) && (spr != 0) {
        return spr;
    } else {
        return spr_unknown;
    }
} else {
    return spr_unknown;
}
