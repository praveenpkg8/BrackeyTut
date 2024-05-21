extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -800.0
@export var weapon_distance = 10
@onready var animated_sprite = $AnimatedSprite2D


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var weapon = $weapon


func _physics_process(delta):
	# Add the gravity.
	var player_x_position = animated_sprite.global_position.x
	var player_y_position = animated_sprite.global_position.x


	if not is_on_floor():
		velocity.y += gravity * delta
	
	var direction = Input.get_axis("move_left", "move_right")
	var gun_pressed = Input.is_action_just_pressed("fire")
	
	if gun_pressed:
		var _direction		
		if not animated_sprite.flip_h:
			_direction = 1
		else:
			_direction = -1
		print("Player G Position", global_position)
		
		weapon.trigger_bullet(
			_direction,
			global_position
			)

	
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY


	move_and_slide()
