extends Node2D
onready var timer = get_node("Timer")


func _ready():
	
	timer.set_wait_time(2)
	timer.start()
	
	


func _on_Timer_timeout():
	Engine.time_scale = 1+GlobalVariables.score * 0.03
	var scene = load("res://meteor.tscn")
	var projectile = scene.instance()
	add_child(projectile)
	GlobalVariables.score +=1
	$Score.update()
	
