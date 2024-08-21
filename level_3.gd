extends Node2D
@onready var deaths = $Player/Camera2D/Deaths
@onready var stopwatch = $Player/Camera2D/Stopwatch

func _ready():
	global.score = 0
	deaths.text = "Deaths; " + str(global.deaths)
	stopwatch.text = str(global.time)
	if global.character == "Orange Player":
		pass
	if global.character == "Pink Player":
		$"Player/Orange Player".set_visible(false)
		$"Player/Pink Player".set_visible(true)


func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_end_door_body_entered(body):
	if body == $Player:
		get_tree().change_scene_to_file("res://end.tscn")


func _on_respawn_point_body_entered(body):
	if body == $Player:
		global.score = 0
		global.deaths += 1
		get_tree().change_scene_to_file("res://level_3.tscn")



func _on_timer_timeout():
	global.seconds += 1
	global.time = str(global.minutes)+ " : " + str(global.seconds)
	if global.seconds >= 60:
		global.seconds = 0
		global.minutes += 1
		global.time = str(global.minutes)+ " : " + str(global.seconds)
	if global.seconds < 10 and global.minutes < 10:
		global.time = "0" + str(global.minutes)+ " : 0" + str(global.seconds)
	elif global.seconds < 10:
		global.time = str(global.minutes)+ " : 0" + str(global.seconds)
	elif global.minutes < 10:
		global.time = "0" + str(global.minutes)+ " : " + str(global.seconds)
	stopwatch.text = str(global.time)
