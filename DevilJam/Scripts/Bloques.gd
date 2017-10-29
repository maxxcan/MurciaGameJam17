extends StaticBody2D

var posicion
var cura = preload ("res://Escenas/Medico.tscn")

func _ready():
	set_fixed_process(true)
	posicion = get_pos()
	randomize()
	poner_cura()
	
	
func _fixed_process(delta):
	if Global.estoy_muerto == false:
		posicion += Vector2(-300,0) * delta
		set_pos(posicion)
	
	if posicion.x < -200:
		queue_free()
		
func poner_cura():
	var poner = int(rand_range(0,3))
	if poner == 0:
		var curanemigo = cura.instance()
		curanemigo.set_pos(Vector2(128,-32))
		add_child(curanemigo)
	
	print (poner)
	
