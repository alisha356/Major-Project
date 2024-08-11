extends Node2D
@onready var deaths = $Player/Camera2D/Deaths

func _ready():
	global.score = 0
	deaths.text = "Deaths; " + str(global.deaths)
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

