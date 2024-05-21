class_name Movement
extends Node


@export var player: CharacterBody2D
#@export var min_slide_angle = 0.0

func _ready() -> void:
	pass

func _physics_process(delta):
	player.move_and_slide()
