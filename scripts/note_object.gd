extends PoI

@onready var NoteObject = $Note
var IsOpen = false

func interact():
	if !IsOpen:
		show_note()
	else:
		
		hide_note()
func show_note():
	IsOpen=true
	NoteObject.show()
func hide_note():
	IsOpen=false
	NoteObject.hide()
func _on_body_exited(body):
	if body.name == "Player":
		if IsOpen:
			hide_note()
		body.in_interactable_zone = false
		body.near = null
