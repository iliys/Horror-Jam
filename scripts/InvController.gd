extends Control

func _onready():
	print(self.get_node("Margin/Inventory").get_child_count())

func key2inv(keyID:String):
	self.get_node("Margin/Inventory").get_node(keyID).show()

	
