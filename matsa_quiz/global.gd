extends Node
var index = 0
var score = 0
var player_name = "sin nombre "

func _ready():
 SilentWolf.configure({
	"api_key": "qvpmJwZovq2BhaFXoDmos8ILoT5rmXY76aOdqtp9",
	"game_id": "MatsaSignage",
	"game_version": "1.0.2",
	"log_level": 1
  })

 SilentWolf.configure_scores({
	"open_scene_on_close": "res://scenes/MainPage.tscn"
  })
