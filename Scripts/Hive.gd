extends StaticBody2D

enum {event_on, event_off}
var event = event_off
var temp_position

func _process(delta):
	if Input.is_action_just_pressed("Action") and event == event_on:
		get_tree().change_scene("res://Scenes/Hive_menu.tscn")
		GAME.player_position = temp_position

func _on_Range_body_entered(body):
	if body.is_in_group("Player"):
		$Anim.play("Event2")
		temp_position = body.global_position
		event = event_on 


func _on_Range_body_exited(body):
	if body.is_in_group("Player"):
		$Anim.play("Event1")
		event = event_off
