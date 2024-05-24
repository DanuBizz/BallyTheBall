extends Control
@onready var win_player = $WinPlayer

func _ready():
	win_player.play()
