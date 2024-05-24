extends Label

signal level_finished

var coins = 0

func _ready():
	text = str(coins)
	
func _on_coin_collected():
	coins += 1
	_ready()
	if coins == 5:
		emit_signal("level_finished")
		$Timer.start()

func _on_timer_timeout():
	print("Next Level!")
	get_tree().change_scene_to_file("res://level_2.tscn")
	
