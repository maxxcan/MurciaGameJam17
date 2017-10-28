extends Node2D

var bloq = []
var bloque = preload ("res://Escenas/Bloques.tscn")
var bloque1 = preload ("res://Escenas/Bloques1.tscn")
var bloque2 = preload ("res://Escenas/Bloques2.tscn")
var pos_bloc = [760,410,100]
var creator
var timer

func _ready():
	bloq.append(bloque)
	bloq.append(bloque1)
	bloq.append(bloque2)
	
	timer = get_node("Timer")
	randomize()
	set_fixed_process(true)
	

	

func _on_Timer_timeout():
	creator = bloq[int(rand_range(1,3))]
	var bloques = creator.instance()
	bloques.set_pos(Vector2(1280,pos_bloc[int(rand_range(0,3))]))
	add_child(bloques)
	timer.set_wait_time(rand_range(0.3,1))
	
