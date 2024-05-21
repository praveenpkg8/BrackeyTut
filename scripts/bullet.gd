extends Area2D


@export var speed = 2000

# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_top_level(true)

func projectile_bullet():
	print("Bullet Passed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
