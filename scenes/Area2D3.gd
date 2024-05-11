extends Area2D
@onready var timer = get_node("../Panel")

func _ready():
	pass # Replace with function body.




func _on_body_entered(body):
	timer.set_process(true)
