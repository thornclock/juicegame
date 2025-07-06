extends Node

func swap_to_scene(scenePath: String, withFade: bool = true) -> void:
	# TODO - obtain resource? preload? async?
	GlobalUiEventBus.sgui_fade_to_black.emit()
	
	# TODO - load/delay
	var lvl: PackedScene = load(scenePath)
	
	var err: Error = get_tree().change_scene_to_packed(lvl)
	if err != OK:
		push_error("ERROR: %s" % err)
	
	
	GlobalUiEventBus.sgui_fade_to_screen.emit()
	return
