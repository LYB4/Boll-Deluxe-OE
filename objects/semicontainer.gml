#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mask_index=spr_mask1x1
scalex=1
scaley=1
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (place_meeting(x,y+1,object_index)) {
    var i,checkobj,checkobj2;
    if (is_real(obj)) {
        checkobj = object_get_name(obj)
    } else {
        checkobj=string(obj);
    }
    i=instance_place(x,y+1,object_index);
    if (is_real(i.obj)) {
        checkobj2 = object_get_name(i.obj)
    } else {
        checkobj2=string(i.obj);
    }
    if ((checkobj == "groundsemi" || checkobj == "slopel1s" || checkobj == "sloper1s" || checkobj == "sloper2s" || checkobj == "slopel2s") && checkobj2 == "groundsemi") {
        i.frame=0;
    }
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y-=99
do {
    coll=instance_place(x,y+99,object_index)
    if (coll) with (coll) instance_destroy()
} until (!coll)
y+=99

if (x<0 || y<0 || x>lemongrab.w[drawregion.region]-1 || y>lemongrab.h[drawregion.region]-1) instance_destroy()
