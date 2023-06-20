extends Area2D

@export_enum("Key", "Door", "Note", "n/a") var POI_TYPE: String = "n/a"
@export var KeyID: String


@onready var noteimg = $Note
@onready var myPlayer = $"../Player"



func _on_body_entered(body):
	if body.name == "Player":
		body.in_interactable_zone = true
		body.near = self

func _on_body_exited(body):
	if body.name == "Player":
		body.in_interactable_zone = false
		if(POI_TYPE=="Note" and noteimg.is_visible_in_tree() == true):
			hide_note()
		body.near = null
func show_note():
	noteimg.visible = true
func hide_note():
	noteimg.visible = false
	


