extends RigidBody2D

export var fuerza_toque = -100

func _ready():
	set_process_input(true)
	set_fixed_process(true)
	
func _input(event):
	if event.is_action_pressed("toque"):
		apply_impulse(Vector2(0,0), Vector2(0,fuerza_toque))
		print (get_linear_velocity().y)
		
func _fixed_process(delta):
	print(get_linear_velocity())
	if get_linear_velocity().y < -400:
		set_linear_velocity(Vector2(0,20))
