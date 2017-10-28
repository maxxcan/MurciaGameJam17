extends Node2D

var edi1
var edi2

func _ready():
	set_process(true)
	edi1 = get_node("Edificios")
	edi2 = get_node("Edificios1")
	
func _process(delta):
	edi1.set_pos(Vector2(edi1.get_pos.x + 300,0)*delta)
	
