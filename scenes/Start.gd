extends Button


func _on_pressed():
	var scene = get_node("../../HBoxContainer").scene
	get_tree().change_scene_to_file(scene)
