extends RigidBody2D

var resul
var puntuacion

var posicion

var fuerza_toque = -1200
var max_toques = 2
var cont_toques = 0
onready var animacion = get_node("AnimationPlayer")
onready var sonido = get_node("StreamPlayer")

func _ready():
	resul = get_owner().get_node("Resultado")
	puntuacion = get_owner().get_node("Resultado/Label")
	
	set_process_input(true)
	set_fixed_process(true)
	
func _input(event):
	if event.is_action_pressed("toque") and cont_toques < max_toques:
		animacion.play("salto")
		if cont_toques == 1:
			animacion.play("rotacion")
		sonido.play()
		set_linear_velocity(Vector2(0,fuerza_toque))
		cont_toques +=1
	
func _fixed_process(delta):
	Global.metros += 0.3
	if get_linear_velocity().y == 0:
		cont_toques=0
	posicion = get_pos()
	en_escena()
	
func en_escena():
	if (posicion.x < 32) or (posicion.y > 750) or Global.estoy_muerto == true:
		print ("muerto")
		Global.estoy_muerto = true
		#Global.metros = int(get_owner().get_node("HUD/Label").get_text())
		
		resul.show()
		puntuacion.set_text(str(int(Global.metros)))
		
		queue_free()
		
	