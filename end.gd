extends Node2D
@onready var score = $"Score Text"
@onready var deaths = $"Deaths Text"
@onready var time = $"Time Text"

func _ready():
	time.text = "Time; " + str(global.time)
	score.text = "Score; " + str(global.score)
	deaths.text = "Deaths; " + str(global.deaths)

func _on_button_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")
