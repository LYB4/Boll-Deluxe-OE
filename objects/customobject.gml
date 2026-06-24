#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mytype = "";
stepevent = -1;
createevent = -1;
drawevent = -1;
drawguievent = -1;
triggeredevent = -1;
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

if (triggerevent != 0) && (global.channel[channelid]) {
    code_execute(triggerevent)
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
stepevent=ds_map_find_value(global.objectscripts,"step_"+mytype)
createevent=ds_map_find_value(global.objectscripts,"create_"+mytype)
drawevent=ds_map_find_value(global.objectscripts,"draw_"+mytype)
drawguievent=ds_map_find_value(global.objectscripts,"draw_gui_"+mytype)
triggerevent=ds_map_find_value(global.objectscripts,"trigger_"+mytype)
cleanupevent=ds_map_find_value(global.objectscripts,"cleanup_"+mytype)

myobjdir = global.workdir+"SBDX_mods\object\"+mytype+"\"

if (createevent != 0) {
    code_execute(createevent)
}

channelid=unreal(channelid,0)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (drawevent != 0) {
    code_execute(drawevent)
}
