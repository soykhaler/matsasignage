extends TextureButton
export var correct = false
var result_correct = "Correcto"
var result_error = "Error"
onready var resultado = $"../Resultado"
onready var audio_stream_player = $"../AudioStreamPlayer"
onready var animation_player = $"../AnimationPlayer"
var button_pressed = false
onready var audio_stream_player_2 = $"../AudioStreamPlayer2"

func _ready():
	self.add_to_group("botones")

func _on_TextureButton_pressed():
		if correct:
			Global.score += 1
			resultado.visible = true
			resultado.text = result_correct
			resultado.modulate.r = 0
			resultado.modulate.g = 1
			resultado.modulate.b = 0
			audio_stream_player.playing = true
			animation_player.play("Nueva Animación")
			print(Global.score)
		else:
			resultado.visible = true
			resultado.text = result_error
			resultado.modulate.r = 1
			resultado.modulate.g = 0
			resultado.modulate.b = 0
			animation_player.play("Nueva Animación")
			audio_stream_player_2.playing = true
	 for boton in get_tree().get_nodes_in_group("botones"):
			boton.disabled = true  # Deshabilita todos los botones en el grupo "botones".
	
func _on_AnimationPlayer_animation_finished(anim_name):
	animation_player.seek(0)
	var escena_actual = get_tree().get_current_scene()
	print(escena_actual.filename)
	if escena_actual.filename == "res://quiz1.tscn":
		get_tree().change_scene("res://quiz2.tscn")
	elif escena_actual.filename == "res://quiz2.tscn":
		get_tree().change_scene("res://quiz3.tscn")
	elif escena_actual.filename == "res://quiz3.tscn":
		get_tree().change_scene("res://end.tscn")
