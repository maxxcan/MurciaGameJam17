extends StaticBody2D

var posicion

func _ready():
	set_fixed_process(true)
	posicion = get_pos()
	
func _fixed_process(delta):
	posicion += Vector2(-300,0) * delta
	set_pos(posicion)
	
	if posicion.x < -100:
		queue_free()
		
