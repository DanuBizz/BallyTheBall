extends Control
@onready var menu_player = $MenuPlayer

func _ready():
	menu_player.play()
