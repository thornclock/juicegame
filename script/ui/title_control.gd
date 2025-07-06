class_name TitleControl
extends Control

func on_touchanywhere_pressed() -> void:
	print('touched')
	
	RootSceneTransitioner.swap_to_scene("res://levelscene/game_level.tscn")
	return
