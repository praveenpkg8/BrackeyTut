extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer



func _on_body_entered(body):
	print("+1 coint")
	game_manager.add_coin()
	animation_player.play("pickup")


func _on_area_entered(area):
	print("+1 coint")
	game_manager.add_coin()
	animation_player.play("pickup")


func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	print("+1 coint")
	game_manager.add_coin()
	animation_player.play("pickup")
