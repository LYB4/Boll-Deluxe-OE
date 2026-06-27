var i;
i=argument[0]

if (is_string(i.obj)) exit;

if (i.obj==groundblock) {
    with(i) {
        if (place_meeting(x,y-1,object_index)) {
            aboveground=instance_position(x,y-1,object_index)
            if (is_string(aboveground.obj)) exit;

            var type;
            type = aboveground.obj
            if (type=slopel1||type=sloper1||type=slopel2||type=sloper2||type=groundblock) frame=1
        }
        if (place_meeting(x,y+1,object_index)) {
            belowground=instance_position(x,y+1,object_index)
            if (is_string(belowground.obj)) exit;
            var type;
            type = belowground.obj
            if (type=groundblock) belowground.frame=1
        }
    }
} else if (i.obj==groundsemi) {
    with(i) {
        if (place_meeting(x,y-1,object_index)) {
            aboveground=instance_position(x,y-1,object_index)
            if (is_string(aboveground.obj)) exit;
            var type;
            type = aboveground.obj
            if (type=slopel1s||type=sloper1s||type=slopel2s||type=sloper2s||type=groundsemi) frame=1
        }
        if (place_meeting(x,y+1,object_index)) {
            belowground=instance_position(x,y+1,object_index)
            if (is_string(belowground.obj)) exit;
            var type;
            type = belowground.obj
            if (type=groundsemi) belowground.frame=1
        }
    }
}
