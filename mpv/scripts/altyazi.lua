-- default keybinding: b
-- add the following to your input.conf to change the default keybinding:
-- keyname script_binding auto_load_subs
local utils = require 'mp.utils'
function load_sub_fn()
    subl = "/usr/bin/subberthehut" -- use 'which subliminal' to find the path
    mp.msg.info("Searching subtitle")
    mp.osd_message("Altyazı aranıyor")
    t = {}
    t.args = {subl,"--same-name", "--", mp.get_property("path")}
    res = utils.subprocess(t)
    if res.status == 0 then
        mp.commandv("rescan_external_files", "reselect") 
        mp.msg.info("Subtitle download succeeded")
        mp.osd_message("Altyazı indirildi")
    else
        mp.msg.warn("Subtitle download failed")
        mp.osd_message("Altyazı indirilemedi")
    end
end

mp.add_key_binding("b", "auto_load_subs", load_sub_fn)
