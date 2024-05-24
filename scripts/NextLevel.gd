extends Label
@onready var animation_player = $AnimationPlayer

func _ready():
	visible = false

func _on_counter_level_finished():
	print("PLAY!")
	animation_player.play("visibility")
	visible = true
