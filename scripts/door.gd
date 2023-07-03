extends PoI

@export var KeyID : String
@onready var DoorClosed = $Door
@onready var DoorOpen = $DoorOpen

func interact():
	if (KeyID in near.keys):
		DoorClosed.process_mode = 4
		DoorClosed.hide()
		DoorOpen.process_mode = 0
		DoorOpen.show()
