extends Node

var SCORE = 0
@onready var score_label = $ScoreLabel

func add_coin():
	SCORE += 1
	score_label.text = "Score: " + str(SCORE)
