extends Node2D


func _ready():
	$transition.play("event")
	$text_transition.play("event")
	$music.play()
	

func _on_change_scene_pressed():
	GAME.music = 0
	GAME.music_counter = 0
	GAME.dancers = 0
	GAME.chalanges = 0
	GAME.days = 0 
	GAME.honey = 50
	GAME.polen = 0

	GAME.dancer1 = 0
	GAME.dancer2 = 0
	GAME.dancer3 = 0
	GAME.dancer4 = 0 

	GAME.level1 = 0
	GAME.level2 = 0
	GAME.level3 = 0 
	GAME.level4 = 0
		
	
	$transition.play("event2")
	yield($transition,"animation_finished")
	get_tree().change_scene("res://Scenes/Plot_screen.tscn")
