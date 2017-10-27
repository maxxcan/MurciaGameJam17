extends RigidBody2D

export var fuerza_toque = -500
var max_toques = 2
var cont_toques = 0

func _ready():
	set_process_input(true)
	set_fixed_process(true)
	
func _input(event):
	if event.is_action_pressed("toque"):
		if cont_toques < max_toques:
			apply_impulse(Vector2(0,0), Vector2(0,fuerza_toque))
			cont_toques +=1
			print (get_linear_velocity().y)
	
func _fixed_process(delta):
	if get_linear_velocity().y == 0:
		cont_toques=0

