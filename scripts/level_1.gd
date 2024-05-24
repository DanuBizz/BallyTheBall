extends Node3D
@onready var level_1_player = $Level1Player

func _ready():
	level_1_player.play()
