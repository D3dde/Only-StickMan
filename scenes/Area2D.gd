extends Area2D

func _on_body_entered(body):
	body.velocity.y += -1200
