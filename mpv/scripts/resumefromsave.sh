function quit_fn()
    mp.set_property("pause", "no")
    mp.command("quit_watch_later")
end

mp.add_forced_key_binding("Q", quit_fn)

