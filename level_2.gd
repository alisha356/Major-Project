extends Node2D

func _ready():
	if global.character == "Orange Player":
		pass
	if global.character == "Pink Player":
		$"Player/Orange Player".set_visible(false)
		$"Player/Pink Player".set_visible(true)


func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_area_2d_body_entered(body):
	if body == $Player:
		get_tree().change_scene_to_file("res://level_intermission.tscn")


func _on_respawn_point_body_entered(body):
	if body == $Player:
		get_tree().change_scene_to_file("res://level_2.tscn")
