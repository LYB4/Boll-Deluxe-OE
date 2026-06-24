var dir;

dir = global.workdir+"SBDX_mods\object\"

cleanupScripts();

var _folder;
_folder = file_find_first(dir+"*",fa_directory)

while(_folder != "") {
    if (_folder!="." && _folder!="..") {
        //find #defines
        var i,_code,_str,_cur,_list,_filepath,_file,_name;
        _name = filename_name(_folder);
        _file=_folder+"\object.gml";
        _filepath = dir+_file;
        if (file_exists(_filepath)) {
            if !file_exists(_filepath) {
                continue;
            }

            _code = file_text_open_read(_filepath);
            if (_code == -1) continue;

            _list = ds_list_create();

            _cur = "";
            _str = "";
            while (!file_text_eof(_code)) {
                _cur = file_text_read_string(_code);

                if string_starts_with(_cur, "#define") {
                    _cur = string_delete(_cur, 1, 8)
                    ds_list_add(_list,_cur)
                }

                file_text_readln(_code);
                if file_text_eof(_code) {
                    break;
                }
            }
            file_text_close(_code);

            i=0;
            repeat(ds_list_size(_list)) {
                var _store,_key,_compiled, _codestr;
                _key = ds_list_find_value(_list,i);

                switch(_key) {
                    case "create":
                    case "data":
                    case "step":
                    case "draw":
                    case "draw_gui":
                    case "cleanup":
                    case "deloaded":
                    case "lemon_display":
                    case "editobjmenu":
                    case "editobjdataname":
                    case "trigger":
                        _codestr = loopThrough(_key, _filepath)
                        if (_codestr != "") {
                            _compiled = code_compile(_codestr)
                            if (_key == "data") {
                                code_execute(_compiled);
                                code_destroy(_compiled);
                            }
                            ds_map_set(global.objectscripts,_key+"_"+_name,_compiled)
                        }
                    break;
                    default : show_message("Invalid define ("+_key+") in "+_file+"!") break;
                }
                i+=1;
            }
            ds_list_destroy(_list);
        }
    }

    _folder = file_find_next();
}
_folder = file_find_close();
