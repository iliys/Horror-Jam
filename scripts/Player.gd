extends CharacterBody2D

const SPEED = 2 # по углам колбасит
#потом починю. может быть. 


#func _ready():
#	print("lmao ready")
#var char_velocity = Vector2.ZERO

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("Rightward") - Input.get_action_strength("Leftward")
	input_vector.y = -(Input.get_action_strength("Forward") - Input.get_action_strength("Backward"))
	input_vector = input_vector.normalized() #<-- а если нормализовать вектор то будет колбасить также и при скорости больше 50
	if input_vector != Vector2.ZERO:
		velocity = input_vector
	else:
		velocity=Vector2.ZERO
	move_and_collide(velocity * SPEED) # если дельту поставить то хуже будет
