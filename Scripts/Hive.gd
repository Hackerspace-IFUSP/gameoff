extends StaticBody2D

enum {event_on, event_off}
var event = event_off
var temp_position
export(int, "capital", "hive1", "hive2", "hive3", "hive4") var hive
export(Texture) var bee_Face


func _ready():
	$Hive_menu/Hive/Image_screen.texture = bee_Face
	if hive ==1: 
		if GAME.level1 != 0:
			$Domain.show()
	elif hive == 2:
		if GAME.level2 != 0:
			$Domain.show()
	elif hive == 3:
		if GAME.level3 != 0:
			$Domain.show()
	elif hive == 4: 
		if GAME.level4 != 0:
			$Domain.show()

func _process(_delta):
	if Input.is_action_just_pressed("Action") and event == event_on:
		if hive == 0:
			$Hive_menu/Principal.show()
			$Hive_menu/Principal/Rest.grab_focus()
		
		elif hive == 1:
			$Hive_menu/Hive/Name.text = 'Hive 1'
			$Hive_menu/Hive/Influence/Price.text = "50x Honey"
			$Hive_menu/Hive/Chalange/Price.text = "1x Dancer"
			$Hive_menu/Hive.show()
			$Hive_menu/Hive/Influence.grab_focus()
			if GAME.dancer1 != 0:
				$Hive_menu/Hive/Influence.hide()
			if GAME.level1 != 0:
				$Hive_menu/Hive/Chalange.hide()
		
		elif hive == 2:
			$Hive_menu/Hive/Name.text = 'Hive 2'
			$Hive_menu/Hive/Influence/Price.text = "60x Honey"
			$Hive_menu/Hive/Chalange/Price.text = "2x Dancer"
			$Hive_menu/Hive.show()
			$Hive_menu/Hive/Influence.grab_focus()
			if GAME.dancer2 != 0:
				$Hive_menu/Hive/Influence.hide()
			if GAME.level2 != 0:
				$Hive_menu/Hive/Chalange.hide()
			
		elif hive == 3:
			$Hive_menu/Hive/Name.text = 'Hive 3'
			$Hive_menu/Hive/Influence/Price.text = "70x Honey"
			$Hive_menu/Hive/Chalange/Price.text = "3x Dancer"
			$Hive_menu/Hive.show()
			$Hive_menu/Hive/Influence.grab_focus()
			if GAME.dancer3 != 0:
				$Hive_menu/Hive/Influence.hide()
			if GAME.level3 != 0:
				$Hive_menu/Hive/Chalange.hide()
				
		elif hive == 4:
			$Hive_menu/Hive/Name.text = 'Hive 4'
			$Hive_menu/Hive/Influence/Price.text = "80x Honey"
			$Hive_menu/Hive/Chalange/Price.text = "4x Dancer"
			$Hive_menu/Hive.show()
			$Hive_menu/Hive/Influence.grab_focus()
			if GAME.dancer4 != 0:
				$Hive_menu/Hive/Influence.hide()
			if GAME.level4 != 0:
				$Hive_menu/Hive/Chalange.hide()
			
		get_tree().paused = true

func _on_Range_body_entered(body):
	if body.is_in_group("Player"):
		$Anim.play("Event2")
		temp_position = body.global_position
		event = event_on 
		$Sprite.material.set_shader_param("outline_width",1.0)


func _on_Range_body_exited(body):
	if body.is_in_group("Player"):
		$Anim.play("Event1")
		event = event_off
		$Sprite.material.set_shader_param("outline_width",0.0)
		
##Principal Buttons
func _on_Rest_pressed():
	GAME.player_position = temp_position
	GAME.honey += int(rand_range(.4*GAME.polen, .7*GAME.polen))
	GAME.polen = 0
	get_tree().paused = false
	get_tree().reload_current_scene()


##Hives Buttons
func _on_Influence_pressed():
	if hive == 1:
		if GAME.honey >= 50:
			GAME.honey -= 50
			GAME.dancers += 1
			GAME.dancer1 = 1
			$Hive_menu/Hive/Influence.hide()
	elif hive == 2:
		if GAME.honey >= 60:
			GAME.honey -= 60
			GAME.dancers += 1
			GAME.dancer2 = 1
			$Hive_menu/Hive/Influence.hide()
	elif hive == 3:
		if GAME.honey >= 70:
			GAME.honey -= 70
			GAME.dancers += 1
			GAME.dancer3 = 1
			$Hive_menu/Hive/Influence.hide()
	elif hive == 4:
		if GAME.honey >= 80:
			GAME.honey -= 80
			GAME.dancers += 1
			GAME.dancer4 = 1
			$Hive_menu/Hive/Influence.hide()

func _on_Chalange_pressed():
	if hive == 1: 
		if GAME.dancers > 0:
			GAME.music = 0
			get_tree().paused = false
			get_tree().change_scene("res://Scenes/Battle_system.tscn")

	elif hive == 2:
		if GAME.dancers > 1:
			GAME.music = 1
			get_tree().paused = false
			get_tree().change_scene("res://Scenes/Battle_system.tscn")

	elif hive == 3:
		if GAME.dancers > 2:
			GAME.music = 2
			get_tree().paused = false
			get_tree().change_scene("res://Scenes/Battle_system.tscn")

	elif hive == 4:
		if GAME.dancers > 3:
			GAME.music = 3
			get_tree().paused = false
			get_tree().change_scene("res://Scenes/Battle_system.tscn")



##Return Button
func _on_Return_pressed():
	if hive == 0:
		$Hive_menu/Principal.hide()
	else:
		$Hive_menu/Hive.hide()
		
	get_tree().paused = false


