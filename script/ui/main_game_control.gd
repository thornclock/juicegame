class_name MainGameControl
extends Control

@export var map_button: Button

var map_resource: PackedScene = load("res://ui/menus/map_control.tscn")

func map_button_pressed() -> void:
	var _map = map_resource.instantiate()
	add_child(_map)
	return
