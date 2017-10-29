extends Control

onready var texto = get_node("Label1")

func _ready():
	set_process(true)
	
func _process(delta):
	texto.set_text(str(int(Global.metros)))
