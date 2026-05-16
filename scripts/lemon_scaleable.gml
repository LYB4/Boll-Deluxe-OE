///lemon_scaleable(container):container / noone
//determines if you're allowed to scale a container by checking every single valid object seperately because idk a better way to do this

var a; a = argument[0]

if (a.obj == groundblock || a.obj == groundsemi   || a.obj == groundback    ||
    a.obj == hardblock   || a.obj == bighardblock || a.obj == castleceiling ||
    a.obj == waterblock  || a.obj == lavablock    || a.obj == cloudtile     ||
    a.obj == ground      || a.obj == barrier      || a.obj == phaser        ||
    a.obj == bridgetile  || a.obj == treeblock    || a.obj == spike         ||
    a.obj == mushblock   || a.obj == mushblock2   || a.obj == mushblock3    ||
    a.obj == brick       || a.obj == itembox      || a.obj == bigitembox    ||
    a.obj == bigbrick    || a.obj == crate        || a.obj == crackedground ||
    keyboard_check(vk_insert)) {
    return a
}
return noone;
