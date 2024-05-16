extends Camera2D


func _ready():
	await get_tree().create_timer(0.5).timeout
	position_smoothing_enabled=true
	


