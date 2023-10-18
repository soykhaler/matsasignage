extends Control

onready var line_edit = $LineEdit


func _ready():
	
	pass




func _on_TextureButton_pressed():
	Global.player_name = line_edit.text
	get_tree().change_scene("res://quiz1.tscn")
	pass # Replace with function body.
