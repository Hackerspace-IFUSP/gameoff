extends Node2D


func _ready():
	$beat.play("Anim")
	$music.play()
	$transition.play("event")
	$change_scene.grab_focus()


func _on_change_scene_pressed():
	$transition.play("event2")
	yield($transition,"animation_finished")
	get_tree().change_scene("res://Scenes/Instruction.tscn")
