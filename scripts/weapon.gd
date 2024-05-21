extends Area2D

@onready var bullet_project = %bulletProjectile

@onready var sprite_2d = $Sprite2D
@export var weapon_functionality: WeaponFunctionaity
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

func trigger_bullet(_direction):
	weapon_functionality.shoot(%ShootingPoint.global_position, _direction)

