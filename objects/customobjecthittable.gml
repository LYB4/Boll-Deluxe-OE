#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mytype = "";
stepevent = 0;
stependevent = 0;
stepbeginevent = 0;
createevent = 0;
drawevent = 0;
drawguievent = 0;
triggeredevent = 0;
myobjdir = "";
__DIDMYCLEANUP = false;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !(__DIDMYCLEANUP) && (cleanupevent != 0) {
    __DIDMYCLEANUP = true;
    code_execute(cleanupevent);
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (stepevent != 0) {
    code_execute(stepevent)
}
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (stepbeginevent != 0) {
    code_execute(stepbeginevent)
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (stependevent != 0) {
    code_execute(stependevent)
}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !(__DIDMYCLEANUP) && (cleanupevent != 0) {
    __DIDMYCLEANUP = true;
    code_execute(cleanupevent);
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (global.coll=noone) owner=instance_nearest(x,y,player)
else owner=global.coll

if !(insted) {
    if (owner.fly) owner.vsp=0
    else owner.vsp=1.5
}

if !(wait) {
    wait=13
    tpos=1
    event_user(4)
}
#define Other_14
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (hitblockevent != 0) {
    code_execute(hitblockevent)
}
#define Other_15
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
stepevent=ds_map_find_value(global.objectscripts,"step_"+mytype)
stependevent=ds_map_find_value(global.objectscripts,"step_begin_"+mytype)
stepbeginevent=ds_map_find_value(global.objectscripts,"step_end_"+mytype)
createevent=ds_map_find_value(global.objectscripts,"create_"+mytype)
drawevent=ds_map_find_value(global.objectscripts,"draw_"+mytype)
drawguievent=ds_map_find_value(global.objectscripts,"draw_gui_"+mytype)
cleanupevent=ds_map_find_value(global.objectscripts,"cleanup_"+mytype)
hitblockevent=ds_map_find_value(global.objectscripts,"hitblock_"+mytype)

myobjdir = global.workdir+"SBDX_mods\object\"+mytype+"\"

if (createevent != 0) {
    code_execute(createevent)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (drawevent != 0) {
    code_execute(drawevent)
}
