local utils = require 'mp.utils'
function load_sub_fn()
    sub = "/usr/bin/subdl" 
    mp.msg.info("Altyazı aranıyor")
    mp.osd_message("Altyazı aranıyor")
    t = {}
    t.args = {sub, mp.get_property("path")}
    res = utils.subprocess(t)
    if res.status == 0 then
        mp.commandv("rescan_external_files", "reselect") 
        mp.msg.info("Altyazı indirildi")
        mp.osd_message("Altyazı indirildi")
    else
        mp.msg.warn("Altyazı indirilmedi")
        mp.osd_message("Altyazı indirilmedi")
    end
end

mp.add_key_binding("b", "auto_load_subs", load_sub_fn)
