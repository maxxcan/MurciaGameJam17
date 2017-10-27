extends RigidBody2D

export var fuerza_toque = -500

func _ready():
	set_process_input(true)
	
func _input(event):
	if event.is_action_pressed("toque"):
		apply_impulse(Vector2(0,0), Vector2(0,fuerza_toque))
		print (get_linear_velocity().y)
		

