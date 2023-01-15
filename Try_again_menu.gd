extends CanvasLayer
onready var score = 0
onready var title = $Panel/MarginContainer/Rows/Title

func _on_Tryagain_pressed():
	GlobalVariables.score = 0
	get_tree().paused = false
	get_tree().change_scene("res://basic game.tscn")
	
func _on_Quit_pressed():
	get_tree().quit()

func setting_score ():
	title.text = "GAME OVER " + GlobalVariables.score
