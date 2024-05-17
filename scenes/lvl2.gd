extends Node2D


func _ready():
	$charachter.gravity=400

func _on_area_2d_body_entered(body):
	body.velocity.y=-600
