extends Node

func swap_to_scene(scenePath: String, withFade: bool = true) -> void:
	# TODO - obtain resource? preload? async?
	
	GlobalUiEventBus.sgui_fade_to_black.emit()
	
	# TODO - load/delay

	GlobalUiEventBus.sgui_fade_to_screen.emit()
	return
