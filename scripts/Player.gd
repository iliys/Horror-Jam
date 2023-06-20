extends CharacterBody2D

const SPEED = 2 # по углам колбасит
#потом починю. может быть. 
# а может это из за пп и комично маленького количества пикселей на экране
var keys = []
var in_interactable_zone = false
var near = null
#var cur_interaction = ""

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("Rightward") - Input.get_action_strength("Leftward")
	input_vector.y = -(Input.get_action_strength("Forward") - Input.get_action_strength("Backward"))
	input_vector = input_vector.normalized()  
	if input_vector != Vector2.ZERO:
		velocity = input_vector
	else:
		velocity=Vector2.ZERO
	move_and_collide(velocity * SPEED) # если дельту поставить то хуже будет

func _unhandled_input(input):
	if input.is_action_pressed("Action"):
		action()

func action():
	if (in_interactable_zone):
		match near.POI_TYPE:
			"Key":
				keys.append(near.KeyID)
				near.set_process(false)
				print("keying key")
		match near.POI_TYPE:
			"Door":
				print("Doorin' door")
			"Note":
				if near.noteimg.is_visible_in_tree() == false:
					near.show_note()
				else:
					near.hide_note()
	else:
		attack()
func attack():
	pass



