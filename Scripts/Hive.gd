extends StaticBody2D

enum {event_on, event_off}
var event = event_off
var temp_position

func _process(delta):
	if Input.is_action_just_pressed("Action") and event == event_on:
		$Hive_menu/Elements.show()
		get_tree().paused = true

func _on_Range_body_entered(body):
	if body.is_in_group("Player"):
		$Anim.play("Event2")
		temp_position = body.global_position
		event = event_on 


func _on_Range_body_exited(body):
	if body.is_in_group("Player"):
		$Anim.play("Event1")
		event = event_off




func _on_Button_pressed():
	$Hive_menu/Elements.hide()
	get_tree().paused = false


func _on_Button2_pressed():
	GAME.player_position = temp_position
	get_tree().paused = false
	get_tree().reload_current_scene()
	
