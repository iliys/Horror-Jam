extends Area2D

@export_enum("Horizontal", "Vertical", "GoTo") var TRANSITION_TYPE: String = "GoTo"
@export_enum("+","-") var TRANSITION_DIR: String = "+"
@export var GOTO_X: int = 0
@export var GOTO_Y: int = 0

@onready var camera = $"../../Camera2D"

func _on_body_entered(body):
	if body.name == "Player":
		match TRANSITION_TYPE:
			"Horizontal":
				if(TRANSITION_DIR=="+"):
					body.position.x+=80
				else:
					body.position.x-=80
			"Vertical":
				if(TRANSITION_DIR=="+"):
					body.position.y+=80
				else:
					body.position.y-=80
			"GoTo":
				body.position.x=GOTO_X
				body.position.y=GOTO_Y
		



func _on_body_exited(body):
	pass # Replace with function body.
