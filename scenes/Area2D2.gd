extends Area2D

func _on_body_entered(_body):
	get_node("../Panel").stop()
