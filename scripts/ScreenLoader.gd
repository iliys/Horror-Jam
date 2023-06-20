extends Area2D

@export var GOTO_X: int 
@export var GOTO_Y: int 
@export_enum("Horizontal", "Vertical", "Exact") var TRANSITION_TYPE: String = "Exact"
@onready var camera = $"../../Camera2D"

func _on_body_entered(body):
	if body.name == "Player":
		match TRANSITION_TYPE:
			"Horizontal":
				body.position.x=GOTO_X
			"Vertical":
				body.position.y=GOTO_Y
			"Exact":
				body.position.x=GOTO_X
				body.position.y=GOTO_Y
		print(body.name)

