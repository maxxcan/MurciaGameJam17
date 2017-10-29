extends Control


func _ready():
	get_node("StreamPlayer").play()


func _on_Play_pressed():
	get_tree().change_scene("res://Escenas/Nivel1.tscn")


func _on_Exit_pressed():
	get_tree().quit()
