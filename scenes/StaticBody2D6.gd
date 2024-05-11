extends StaticBody2D

var speed = 1.0
var offset = 0.0
var amplitude = 150.0
var height = -1150



func _process(delta):
	offset += speed * delta
	position.y= (sin(offset)*amplitude) + height
