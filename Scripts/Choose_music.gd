extends Node


func _ready():
	pass


func _on_Button_pressed():
	GAME.music = 0
	get_tree().change_scene("res://Scenes/Battle_system.tscn")


func _on_Button2_pressed():
	GAME.music = 1
	get_tree().change_scene("res://Scenes/Battle_system.tscn")


func _on_Button3_pressed():
	GAME.music = 2
	get_tree().change_scene("res://Scenes/Battle_system.tscn")


func _on_Button4_pressed():
	GAME.music = 3
	get_tree().change_scene("res://Scenes/Battle_system.tscn")
