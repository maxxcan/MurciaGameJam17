extends RigidBody2D

export var fuerza_toque = -1000
var max_toques = 2
var cont_toques = 0
onready var animacion = get_node("AnimationPlayer")
onready var sonido = get_node("StreamPlayer")

func _ready():
	set_process_input(true)
	set_fixed_process(true)
	
func _input(event):
	if event.is_action_pressed("toque") and cont_toques < max_toques:
		animacion.play("salto")
		sonido.play()
		set_linear_velocity(Vector2(0,fuerza_toque))
		cont_toques +=1
	
func _fixed_process(delta):
	if get_linear_velocity().y == 0:
		cont_toques=0
	
