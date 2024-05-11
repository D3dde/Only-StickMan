extends Panel
@onready var timer=get_node("../Panel")
var time: float = 999999999999999999999.99
var minutes: int = 0
var seconds: int = 0
var msec: int = 0

func _ready():
	set_process(false)

func stop() -> void:
	set_process(false)


	


func _on_area_2d_body_entered(body):
	var time2: float = timer.time
	var minutes2: int = timer.minutes
	var seconds2: int = timer.seconds
	var msec2: int = timer.msec
	if time2<time:
		minutes=minutes2
		seconds=seconds2
		msec=msec2
		time=time2
		$Minutes.text = "%02d:" % minutes
		$Seconds.text = "%02d." % seconds
		$Msecs.text = "%03d" % msec
		
func get_time_formatted() -> String:
	return "%02d:%02d:%03d" % [minutes, seconds, msec]
