extends Node2D

func _ready():
	if global.character == "Orange Player":
		pass
	elif global.character == "Pink Player":
		$"Orange Selected".set_visible(false)
		$"Orange Select".set_visible(true)
		$"Pink Selected".set_visible(true)
		$"Pink Select".set_visible(false)


func _on_start_button_pressed():
	global.deaths = 0
	global.seconds = 0
	global.minutes = 0
	global.time = "00 : 00"
	get_tree().change_scene_to_file("res://level_1.tscn")


func _on_howto_pressed():
	get_tree().change_scene_to_file("res://how_to.tscn")


func _on_levels_pressed():
	get_tree().change_scene_to_file("res://levels.tscn")


func _on_pink_select_pressed():
	$"Orange Selected".set_visible(false)
	$"Orange Select".set_visible(true)
	$"Pink Selected".set_visible(true)
	$"Pink Select".set_visible(false)
	global.character = "Pink Player"

func _on_orange_select_pressed():
	$"Pink Selected".set_visible(false)
	$"Pink Select".set_visible(true)
	$"Orange Selected".set_visible(true)
	$"Orange Select".set_visible(false)
	global.character = "Orange Player"


