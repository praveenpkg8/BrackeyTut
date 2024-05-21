extends Area2D

@onready var animated_sprite = $AnimatedSprite2D

@onready var starting_position = global_position
var bullet_x 
var bullet_y
var player_global_positon
#var direction

@export var speed = 1000
@export var range = 1200
var direction
var traveled_distance = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	bullet_x = starting_position.x
	bullet_y = starting_position.y	
	pass # Replace with function body.
		
	
func projectile_bullet(_direction, _global_position):
	player_global_positon = _direction * 100
	#direction = _direction
	
	
	print(_global_position)
	
func set_direction(_direction):
	direction = _direction


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#var direction = Vector2.RIGHT.rotated(rotation)
	
	position += direction * speed * delta
	traveled_distance += speed * delta
	if traveled_distance > range:
		queue_free()


func _on_area_entered(area):
	area.get_parent().queue_free()
