extends StaticBody2D

var posicion
var cura = preload ("res://Escenas/Medico.tscn")

func _ready():
	set_fixed_process(true)
	posicion = get_pos()

	
	
func _fixed_process(delta):
	if Global.estoy_muerto == false:
		posicion += Vector2(-300,0) * delta
		set_pos(posicion)
	
	if posicion.x < -200:
		queue_free()
		
	
