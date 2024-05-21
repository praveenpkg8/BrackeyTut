class_name WeaponFunctionaity
extends Node

@export var rate: float
@export var weapon_distance: float
@export var BULLET: PackedScene


func shoot(global_position, direction):
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = global_position
	new_bullet.set_direction(direction) 
	get_tree().current_scene.add_child(new_bullet)

