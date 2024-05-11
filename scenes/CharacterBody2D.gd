extends CharacterBody2D
@onready var an=$AnimatedSprite2D

const SPEED = 200.0
const JUMP_VELOCITY = -400.0
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	# Handle jump.
	if Input.is_action_just_pressed("salto") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("sinistra", "destra")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	
	# Animation
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
