extends TileMap

const VEL_NIVEL = 20

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	set_pos(get_pos() + Vector2(-300,0) * delta)
