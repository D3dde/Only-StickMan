extends HBoxContainer
@onready var scene=Global.scene


func _on_button_pressed():
	scene="res://scenes/game.tscn"
	exit()

func exit():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
