extends Node3D
@onready var level_2_player = $Level2Player

func _ready():
	level_2_player.play()
