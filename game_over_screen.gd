extends Control

@export var level_packed: PackedScene

func _ready() -> void:
	$CenterContainer/VBoxContainer/Label2.text += str(Global.score)


func _input(event):
	if event.is_action_pressed("Shoot"):
		get_tree().change_scene_to_packed(level_packed)