extends Control

var leaderboard = "res://addons/silent_wolf/Scores/Leaderboard.tscn"

func _ready():
	SilentWolf.Scores.persist_score(Global.player_name, Global.score)
	yield(get_tree().create_timer(0.3),"timeout")
	get_tree().change_scene(leaderboard)
	pass
