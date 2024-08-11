extends Area2D

@onready var score = $"../Player/Camera2D/Score"


func _on_body_entered(body):
	if body.name == "Player":
		queue_free()
		global.score += 1
		score.text = "Score; " + str(global.score)
