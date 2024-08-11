extends Node2D

func _on_level_1_pressed():
	global.deaths = 0
	get_tree().change_scene_to_file("res://level_1.tscn")

func _on_level_2_pressed():
	global.deaths = 0
	get_tree().change_scene_to_file("res://level_2.tscn")

func _on_level_3_pressed():
	global.deaths = 0
	get_tree().change_scene_to_file("res://level_3.tscn")


func _on_exit_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")
