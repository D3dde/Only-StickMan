extends HBoxContainer
@onready var scene="res://scenes/game.tscn"

func _ready():
	self.hide()

func exit():
	self.hide()
	$"../VBoxContainer".show()
	


func _on_lvl_2_pressed():
	scene="res://scenes/lvl2.tscn"
	exit()

func _on_lvl_1_pressed():
	scene="res://scenes/game.tscn"
	exit()
