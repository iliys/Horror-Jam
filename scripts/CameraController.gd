extends Area2D

@onready var myCam = $"../Camera2D"
# Called when the node enters the scene tree for the first time.


#func _on_Area2_body_entered(body):
#	print(body.get_name())
#func _on_Area2D_body_exited(body):
	#print(body.get_name())
#func on_area_entered(area):
#	print(area.get_groups())
#func _on_Area2D_body_entered(_body):
#	print(_body.get_groups())
#func _on_Area2D_body_exited(_body):
#	print(_body.get_groups())
#func _on_area_2d_area_entered(area):
#	print(area.get_groups())
	
	#if (area.is_in_group("Player"
	#)):
	#	print("NIGGA")

	#pass # Replace with function body.


func _on_body_entered(body):

	if body.name == "Player":
		print("заметил игрока")
		myCam.enabled = true



func _on_body_exited(body):
	
	if body.name == "Player":
		print("потерял игрока")
		myCam.enabled = false

