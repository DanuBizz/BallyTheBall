extends Label

var coins = 0

func _ready():
	text = str(coins)
	
func _on_coin_collected():
	coins += 1
	_ready()
	if coins == 5:
		print("YOU WIN!")
		$Timer.start()

func _on_timer_timeout():
	print("Next Level!")
	get_tree().change_scene_to_file("res://level_2.tscn")
	
