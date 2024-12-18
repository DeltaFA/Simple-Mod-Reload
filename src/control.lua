local function reload_mods()
	game.reload_mods()
	log("========[Reloading mod scripts]========")
	game.print("Reloaded mod scripts.", { skip = defines.print_skip.never })
end

script.on_event(defines.events.on_lua_shortcut, function(event)
	if event.prototype_name == "simple-mod-reload" then
		reload_mods()
	end
end)

script.on_event("simple-mod-reload", function(event)
	reload_mods()
end)