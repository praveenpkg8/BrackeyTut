class_name MovementVelocityInput
extends Node

@export var player: CharacterBody2D
@export var movement_stats: MovementStats
@export var movement_animation: MovementAnimation
@export var weapon: Area2D


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func handle_movement(delta: float) -> void:
	var direction = Input.get_axis("move_left", "move_right")
	if not player.is_on_floor():
		player.velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("jump") and player.is_on_floor():
		player.velocity.y = movement_stats.jump_velocity
		
	if Input.is_action_just_pressed("fire"):
		var x_axis = movement_animation.process_weapon_side()
		print("before fire call ", x_axis)
		var _direction = Vector2(x_axis , 0)
		weapon.trigger_bullet(_direction)
		
	
	if direction:
		player.velocity.x = (
			direction * movement_stats.max_speed
		)
	else:
		player.velocity.x = move_toward(
			player.velocity.x,
			0,
			movement_stats.max_speed
			)


