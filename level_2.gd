extends Node2D


func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_area_2d_body_entered(body):
	if body == $Player:
		get_tree().change_scene_to_file("res://level_3.tscn")
