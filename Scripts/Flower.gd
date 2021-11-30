extends StaticBody2D

enum {event_on, event_off}
var event = event_off
var temp_position
export(int,"red","white","yellow","pink","blue" ) var flower_color = 0

func _ready():
	if flower_color == 0:
		$shaking.animation = "0"
		$stop.frame = 1
	if flower_color == 1:
		$shaking.animation = "1"
		$stop.frame = 4
	if flower_color == 2:
		$shaking.animation = "2"
		$stop.frame = 7
	if flower_color ==3:
		$shaking.animation = "3"
		$stop.frame = 11
	if flower_color == 4:
		$shaking.animation == "4"
		$stop.frame = 17


func _process(delta):
	if Input.is_action_just_pressed("Action") and event == event_on:
		GAME.polen += int(rand_range(1,5))
		$shaking.hide()
		$particles.emitting = false
		$stop.show()

func _on_area_body_entered(body):
	if body.is_in_group("Player"):
		$Anim.play("Event2")
		temp_position = body.global_position
		event = event_on 


func _on_area_body_exited(body):
	if body.is_in_group("Player"):
		$Anim.play("Event1")
		event = event_off
