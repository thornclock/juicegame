class_name MapControl
extends Control

@export var office_button: Button


func office_btn_pressed() -> void:
	# TODO - check if unlocked? if not, return. Else, continue
	
	#AreaChange.change
	return

func close_map_btn_pressed() -> void:
	queue_free()
	return
