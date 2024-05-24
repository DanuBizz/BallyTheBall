extends Area3D

signal coinCollected
@onready var coin_player = $CoinPlayer
@onready var coin_animation = $CoinAnimation
var coin_collect_played = false

func _on_body_entered(body):
	if coin_collect_played == false:
		coin_animation.play("collect")
		coin_player.play()
		coin_collect_played = true
	$Timer.start()
	
func _on_timer_timeout():
	emit_signal("coinCollected")
	queue_free()
	
