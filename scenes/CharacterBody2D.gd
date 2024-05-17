extends CharacterBody2D
@onready var an=$AnimatedSprite2D

const SPEED = 200.0
const JUMP_VELOCITY = -400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	pass

func _physics_process(delta):
	
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("salto") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	var direction = Input.get_axis("sinistra", "destra")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	
	if velocity.x>0:
		an.flip_h=false
	if velocity.x<0:
		an.flip_h=true
	if not is_on_floor() and velocity.y<=0:
		an.play("jump")
	elif velocity.y>0:
		an.play("land")
	else:
		if velocity.x!=0:
			an.play("camminata")
		else:
			an.play("idle")
	move_and_slide()
	if Input.is_action_just_pressed("menu") and $"pause".visible==false:
		$"pause".show()
	elif Input.is_action_just_pressed("menu") and $"pause".visible==true:
		$"pause".hide()
