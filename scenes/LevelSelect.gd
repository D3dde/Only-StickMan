extends Button



func _on_pressed():
	get_node("..").hide()
	$"../../HBoxContainer".show()
