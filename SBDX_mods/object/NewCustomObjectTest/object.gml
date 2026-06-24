#define create
show_message("test");
if !(custom_sprite_exists("box")) {
    sprite_index=add_custom_sprite(myobjdir+"box.png","box",0,0,0,0);
}

#define draw
draw_self();