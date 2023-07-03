extends PoI

@export var KeyID: String
# Called when the node enters the scene tree for the first time.
func interact():
	near.keys.append(KeyID)
	self.process_mode = 4
	self.hide()
