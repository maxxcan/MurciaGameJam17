extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	get_node("Label").set_text(str(Global.metros))


func _on_TextureButton_pressed():
	Global.estoy_muerto = false
	Global.metros = 0
	get_tree().change_scene("res://Escenas/Inicio.tscn")
