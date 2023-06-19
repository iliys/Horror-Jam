extends Area2D

@onready var myCam = $"../Camera2D"

func _on_body_entered(body):
	if body.name == "Player":
		myCam.enabled = true
func _on_body_exited(body):
	if body.name == "Player":
		myCam.enabled = false
