extends CharacterBody3D

@export var ROT_SPEED = 7
@export var SPEED = 6

func _physics_process(delta):
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		velocity.x = 0
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		rotate_z(deg_to_rad(-ROT_SPEED))
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		rotate_z(deg_to_rad(ROT_SPEED))
	else:
		velocity.x = lerp(0,0,1)
		
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		velocity.z = 0
	elif Input.is_action_pressed("ui_up"):
		velocity.z = -SPEED
		rotate_x(deg_to_rad(-ROT_SPEED))
	elif Input.is_action_pressed("ui_down"):
		velocity.z = SPEED
		rotate_x(deg_to_rad(ROT_SPEED))
	else:
		velocity.z = lerp(0,0,1)
	move_and_slide()
	
	# Make Camera smooth
	$CameraController.position = lerp($CameraController.position, position, 0.13)
	
func _on_enemy_body_entered(body):
	if body.name == "Bowly2":
		get_tree().change_scene_to_file("res://gameOver.tscn")

