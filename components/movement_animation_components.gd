class_name MovementAnimation
extends Node

@export var actor: CharacterBody2D
@export var animated_sprite: AnimatedSprite2D
@export var weapon: Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var weapon_distance = weapon.weapon_functionality.weapon_distance	
	weapon.global_position.x = actor.global_position.x + weapon_distance


func process_movement_anmiation(direction):
	if actor.is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
		
func process_weapon_side():
	var x_axis		
	if not animated_sprite.flip_h:
		x_axis = 1
	else:
		x_axis = -1
	return x_axis

func process_player_side(direction):
	var weapon_distance = weapon.weapon_functionality.weapon_distance
	if direction > 0:
		animated_sprite.flip_h = false
		weapon.global_rotation_degrees = 0	
		weapon.global_position.x = actor.global_position.x + weapon_distance
		
	elif direction < 0:
		animated_sprite.flip_h = true
		weapon.global_rotation_degrees = 180
		weapon.global_position.x = actor.global_position.x - weapon_distance
		
		
		
	
	
		
