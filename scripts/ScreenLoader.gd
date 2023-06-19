
extends Area2D
@export var GOTO_X: int 
@export var GOTO_Y: int 

@onready var camera = $"../../Camera2D"

func _on_body_entered(body):
	if body.name == "Player":
		body.position.x=GOTO_X
		body.position.y=GOTO_Y
		print(body.name)

