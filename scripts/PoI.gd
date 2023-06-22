extends Area2D

@export_enum("Key", "Door", "Note", "n/a") var POI_TYPE: String = "n/a"
@export var KeyID: String
@export var Inventory: NodePath

@onready var noteimg = $Note
@onready var myPlayer = $"../Player"
@onready var closedDoor = $Door
@onready var openedDoor = $DoorOpen
#@onready var KeyInventorySprite = $KeyInventorySprite
 

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
	
func open_door():
	closedDoor.process_mode = 4
	closedDoor.hide()
	openedDoor.process_mode = 0
	openedDoor.show()

