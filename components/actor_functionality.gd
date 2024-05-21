class_name ActorFunctionality
extends Node

@export var movement_velocity: MovementVelocityInput
@export var movement_animation: MovementAnimation



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var direction = Input.get_axis("move_left", "move_right")
	movement_velocity.handle_movement(delta)
	movement_animation.process_movement_anmiation(direction)
	movement_animation.process_player_side(direction)
