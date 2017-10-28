extends Node2D

const VEL_NIVEL = 20
var posicion

func _ready():
	set_fixed_process(true)
	posicion = get_pos()
	
func _fixed_process(delta):
	if posicion.x > -550:
		set_pos(get_pos() + Vector2(-300,0) * delta))
		
	else:
		set_pos (posicion)
