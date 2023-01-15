extends KinematicBody2D

const tryAgainMenu = preload("res://Try_again_menu.tscn")

func _physics_process(_delta):
	var velocity: = Vector2(0,300)
	rotation_degrees = 7
	if (Input.get_action_strength("move_up")==1 ):
		velocity.y = -300
		rotation_degrees = -7
	if(position.y >= 450 and velocity.y > 0 ):
		position.y = 450
		velocity.y = 0
		rotation_degrees = 0
	elif(position.y <= 150 and velocity.y < 0 ):
		position.y = 150
		velocity.y = 0
		rotation_degrees = 0
	move_and_slide(velocity)
	position.x=100


func _ready():
	pass 
	$AnimationPlayer.play("Engine");
	show()



func _on_collectible_detector_body_entered(meteor):
	if (GlobalVariables.score > GlobalVariables.hiScore):
		GlobalVariables.hiScore = GlobalVariables.score
	var try_again = tryAgainMenu.instance()
	add_child(try_again)
	get_tree().paused = true
