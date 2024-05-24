extends Control
@onready var game_over_player = $GameOverPlayer
@onready var got_hit_player = $GotHitPlayer

func _ready():
	game_over_player.play()
	got_hit_player.play()
