var i,fobj;
fobj=argument[0]
if !is_string(fobj) {
    if (fobj==0) {
        fobj=groundblock
    }
}

i=1;
repeat(lemongrab.length) {
    if (is_real(fobj) && is_real(lemongrab.objlist[i,0])) || (is_string(fobj) && is_string(lemongrab.objlist[i,0])) {
        if (fobj == lemongrab.objlist[i,0]) {
            return i
        }
    }
    i+=1
}
