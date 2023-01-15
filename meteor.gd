extends KinematicBody2D
var rot = rand_range ( -0.05, 0.05 )
var rotating
func _ready():
	randomize()
	position.x=1100
	position.y= rand_range ( 0, 600 )
	

func _physics_process(_delta):
	rotate(rot)
	var velocity: = Vector2(-300,0)
	move_and_slide(velocity)

func _on_VisibilityNotifier2D_screen_exited():
		queue_free()
