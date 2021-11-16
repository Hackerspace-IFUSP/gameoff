extends StaticBody2D

enum {event_on, event_off}
var event = event_off
var temp_position

func _process(delta):
	if Input.is_action_just_pressed("Action") and event == event_on:
		if modulate.a > 0:
			modulate.a -= .2



func _on_area_body_entered(body):
	if body.is_in_group("Player"):
		$Anim.play("Event2")
		temp_position = body.global_position
		event = event_on 


func _on_area_body_exited(body):
	if body.is_in_group("Player"):
		$Anim.play("Event1")
		event = event_off
