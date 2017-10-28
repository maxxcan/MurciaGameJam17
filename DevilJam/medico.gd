extends Area2D

signal medico

func _ready():
	pass


func _on_Medico_body_enter( body ):
	emit_signal("medico")
