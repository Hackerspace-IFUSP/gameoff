extends Node2D

var note = preload("res://Scenes/Note.tscn")
onready var music = GAME.music
enum{on_key,out_key}
var note_status = out_key
var points = 30


func _process(delta):
	$Points.text = str("Points: ", points)
	if points > 100:
		points = 100
	elif points < 0:
		points = 0
	
	
	if Input.is_action_just_pressed("ui_left"):
		points -= 5
		$Key/shape.disabled = false
		$Key/NoteSketch.frame = 1
		$active_keys_timer/timer_l.start()
		$Dancers/Kpopbee.hide()
		if GAME.dancer1 != 0:
			$Dancers/Bee.hide()
		if GAME.dancer2 != 0:
			$Dancers/Funkbee.hide()
		if GAME.dancer3 != 0:
			$Dancers/Punkbee.hide()
		if GAME.dancer4 != 0:
			$Dancers/Otakubee.hide()
		$Dancers/Kpopbee2.frame = 0
		$Dancers/Bee2.frame = 0
		$Dancers/Funkbee2.frame = 0
		$Dancers/Punkbee2.frame = 0
		$Dancers/Otakubee2.frame = 0 
		
		$Dancers/Kpopbee2.show()
		if GAME.dancer1 != 0:
			$Dancers/Bee2.show()
		if GAME.dancer2 != 0:
			$Dancers/Funkbee2.show()
		if GAME.dancer3 != 0:
			$Dancers/Punkbee2.show()
		if GAME.dancer4 != 0:
			$Dancers/Otakubee2.show()
			


	if Input.is_action_just_pressed("ui_down"):
		points -= 5
		$Key2/shape.disabled = false
		$Key2/NoteSketch.frame = 1
		$active_keys_timer/timer_d.start()
		$Dancers/Kpopbee.hide()
		if GAME.dancer1 != 0:
			$Dancers/Bee.hide()
		if GAME.dancer2 != 0:
			$Dancers/Funkbee.hide()
		if GAME.dancer3 != 0:
			$Dancers/Punkbee.hide()
		if GAME.dancer4 != 0:
			$Dancers/Otakubee.hide()
		$Dancers/Kpopbee2.frame = 1
		$Dancers/Bee2.frame = 1
		$Dancers/Funkbee2.frame = 1
		$Dancers/Punkbee2.frame = 1
		$Dancers/Otakubee2.frame = 1 
	
		$Dancers/Kpopbee2.show()
		if GAME.dancer1 != 0:
			$Dancers/Bee2.show()
		if GAME.dancer2 != 0:
			$Dancers/Funkbee2.show()
		if GAME.dancer3 != 0:
			$Dancers/Punkbee2.show()
		if GAME.dancer4 !=0:
			$Dancers/Otakubee2.show()
			


	if Input.is_action_just_pressed("ui_up"):
		points -= 5
		$Key3/shape.disabled = false
		$Key3/NoteSketch.frame = 1
		$active_keys_timer/timer_u.start()
		$Dancers/Kpopbee.hide()
		if GAME.dancer1 != 0:
			$Dancers/Bee.hide()
		if GAME.dancer2 != 0:
			$Dancers/Funkbee.hide()
		if GAME.dancer3 != 0:
			$Dancers/Punkbee.hide()
		if GAME.dancer4 != 0:
			$Dancers/Otakubee.hide()
		$Dancers/Kpopbee2.frame = 5
		$Dancers/Bee2.frame = 5
		$Dancers/Funkbee2.frame = 5
		$Dancers/Punkbee2.frame = 5
		$Dancers/Otakubee2.frame = 5 

		$Dancers/Kpopbee2.show()
		if GAME.dancer1 != 0:
			$Dancers/Bee2.show()
		if GAME.dancer2 != 0:
			$Dancers/Funkbee2.show()
		if GAME.dancer3 != 0:
			$Dancers/Punkbee2.show()
		if GAME.dancer4 !=0:
			$Dancers/Otakubee2.show()
			

	if Input.is_action_just_pressed("ui_right"):
		points -= 5
		$Key4/shape.disabled = false
		$Key4/NoteSketch.frame = 1
		$active_keys_timer/timer_r.start()
		$Dancers/Kpopbee.hide()
		if GAME.dancer1 != 0:
			$Dancers/Bee.hide()
		if GAME.dancer2 != 0:
			$Dancers/Funkbee.hide()
		if GAME.dancer3 != 0:
			$Dancers/Punkbee.hide()
		if GAME.dancer4 != 0:
			$Dancers/Otakubee.hide()
		$Dancers/Kpopbee2.frame = 4
		$Dancers/Bee2.frame = 4
		$Dancers/Funkbee2.frame = 4
		$Dancers/Punkbee2.frame = 4
		$Dancers/Otakubee2.frame = 4 

		$Dancers/Kpopbee2.show()
		if GAME.dancer1 != 0:
			$Dancers/Bee2.show()
		if GAME.dancer2 != 0:
			$Dancers/Funkbee2.show()
		if GAME.dancer3 != 0:
			$Dancers/Punkbee2.show()
		if GAME.dancer4 !=0:
			$Dancers/Otakubee2.show()



func _ready():
	$beat.play("beat")
	if music == 0:
		$music.play("event")	
	elif music == 1:
		$music.play("event2")
	elif music == 2:
		$music.play("event3")
	elif music == 3:
		$music.play("event4")
	
	if GAME.dancer1 != 0:
		$Dancers/Bee.show()
	if GAME.dancer2 != 0:
		$Dancers/Funkbee.show()
	if GAME.dancer3 != 0:
		$Dancers/Punkbee.show()
	if GAME.dancer4 != 0:
		$Dancers/Otakubee.show()

func note_1():
	var nt = note.instance()
	nt.global_position = Vector2(32,270)
	#nt.key = nt.right_key
	nt.rotation_degrees = -90
	add_child(nt)

func note_2():
	var nt = note.instance()
	nt.global_position = Vector2(96,270)
	#nt.key = nt.right_key
	nt.rotation_degrees = 180
	add_child(nt)

func note_3():
	var nt = note.instance()
	nt.global_position = Vector2(160,270)
	#nt.key = nt.right_key
	nt.rotation_degrees = 0
	add_child(nt)


func note_4():
	var nt = note.instance()
	nt.global_position = Vector2(224,270)
	#nt.key = nt.right_key
	nt.rotation_degrees = 90
	add_child(nt)

func change_scene():
	if points >= 70:
		
		if GAME.music == 0:
			GAME.level1 = 1
			
		elif GAME.music == 1:
			GAME.level2 = 1
			
		elif GAME.music == 2:
			GAME.level3 = 1
			
		elif GAME.music == 3:
			GAME.level4 = 1
			
	get_tree().change_scene("res://Maps/Park.tscn")

func _on_Key_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("note"):
		note_status = on_key
		$key_status.start()
		points += 10
		area.queue_free()


func _on_timer_l_timeout():
	$Key/NoteSketch.frame = 0
	$Key/shape.disabled = true
	$Dancers/Kpopbee.show()
	$Dancers/Kpopbee2.hide()
	if GAME.dancer1 != 0:
		$Dancers/Bee.show()
		$Dancers/Bee2.hide()
	if GAME.dancer2 != 0:
		$Dancers/Funkbee.show()
		$Dancers/Funkbee2.hide()
	if GAME.dancer3 != 0:
		$Dancers/Punkbee.show()
		$Dancers/Punkbee2.hide()
	if GAME.dancer4 != 0:
		$Dancers/Otakubee.show()
		$Dancers/Otakubee2.hide()


func _on_timer_d_timeout():
	$Key2/NoteSketch.frame = 0
	$Key2/shape.disabled = true
	$Dancers/Kpopbee.show()
	$Dancers/Kpopbee2.hide()
	if GAME.dancer1 != 0:
		$Dancers/Bee.show()
		$Dancers/Bee2.hide()
	if GAME.dancer2 != 0:
		$Dancers/Funkbee.show()
		$Dancers/Funkbee2.hide()
	if GAME.dancer3 != 0:
		$Dancers/Punkbee.show()
		$Dancers/Punkbee2.hide()
	if GAME.dancer4 != 0:
		$Dancers/Otakubee.show()
		$Dancers/Otakubee2.hide()
		
func _on_timer_u_timeout():
	$Key3/NoteSketch.frame = 0
	$Key3/shape.disabled = true
	$Dancers/Kpopbee.show()
	$Dancers/Kpopbee2.hide()
	if GAME.dancer1 != 0:
		$Dancers/Bee.show()
		$Dancers/Bee2.hide()
	if GAME.dancer2 != 0:
		$Dancers/Funkbee.show()
		$Dancers/Funkbee2.hide()
	if GAME.dancer3 != 0:
		$Dancers/Punkbee.show()
		$Dancers/Punkbee2.hide()
	if GAME.dancer4 != 0:
		$Dancers/Otakubee.show()
		$Dancers/Otakubee2.hide()

func _on_timer_r_timeout():
	$Key4/NoteSketch.frame = 0
	$Key4/shape.disabled = true
	$Dancers/Kpopbee.show()
	$Dancers/Kpopbee2.hide()
	if GAME.dancer1 != 0:
		$Dancers/Bee.show()
		$Dancers/Bee2.hide()
	if GAME.dancer2 != 0:
		$Dancers/Funkbee.show()
		$Dancers/Funkbee2.hide()
	if GAME.dancer3 != 0:
		$Dancers/Punkbee.show()
		$Dancers/Punkbee2.hide()
	if GAME.dancer4 != 0:
		$Dancers/Otakubee.show()
		$Dancers/Otakubee2.hide()


func _on_Timer_timeout():
	note_status = out_key


func _on_Killzone_area_entered(area):
	if area.is_in_group("note"):
		points -= 20
		area.queue_free()
