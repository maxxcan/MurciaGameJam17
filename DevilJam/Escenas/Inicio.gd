extends Control


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Play_pressed():
	get_tree().change_scene("res://Escenas/Nivel1.tscn")


func _on_Exit_pressed():
	get_tree().quit()
