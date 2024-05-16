extends Area2D
@onready var timer = get_node("../Panel")






func _on_body_entered(_body):
	timer.set_process(true)
