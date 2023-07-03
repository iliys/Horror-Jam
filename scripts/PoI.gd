extends Area2D
class_name PoI

var near

func _on_body_entered(body):
	if body.name == "Player":
		near=body
		body.in_interactable_zone = true
		body.near = self

func _on_body_exited(body):
	if body.name == "Player":
		body.in_interactable_zone = false
		body.near = null
func interact():
	print("PoI generic interaction")

