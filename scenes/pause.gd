extends CanvasLayer


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

func _on_resume_pressed():
	$".".hide()


func _on_restart_pressed():
	$"..".position = Vector2(0,-70)
	$".".hide()
