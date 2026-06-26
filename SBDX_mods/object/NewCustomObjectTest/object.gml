#define object_type
hittable

#define create
if !(custom_sprite_exists("box")) {
    sprite_index=add_custom_sprite(myobjdir+"box.png","box",0,0,0,0);
} else {
    sprite_index=get_custom_sprite("box")
}

#define step
blockbounce()
if (goinup) upwardthrust()
wait=max(0,wait-1)

#define draw
draw_sprite(sprite_index,1,x,y+dy)