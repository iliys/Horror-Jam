
extends Area2D
@export var GOTO_X: int 
@export var GOTO_Y: int 
#@export var TARGET: Transform2D
@onready var player = $"../../../Player"
@onready var camera = $"../../Camera2D"

#func _on_Area2D_body_entered(body: PhysicsBody2D):
#	print("вошел")
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
"""
func _process(delta):
	pass
func _on_Area2D_area_entered(body):
	print("nigger")
	"""

'''

func _on_area_2d_body_entered(body):

	pass # Replace with function body.
'''

#func _on_area_screen_loader_entered(area):
#	print("nigger_loader")
	#pass # Replace with function body.
"""

func _on_area_2d_area_entered(area):
	#print(area.name)
	if(area.name=="ScreenLoader"):
	#	print("nigger")
		player.position.x=GOTO_X
		player.position.y=GOTO_Y
	# Replace with function body.
"""



func _on_body_entered(body):
	if body.name == "Player":
		body.position.x=GOTO_X
		body.position.y=GOTO_Y
		print(body.name)

