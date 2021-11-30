extends Node2D

var note = preload("res://Scenes/Note.tscn")
onready var music = GAME.music

func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		$Key/shape.disabled = false
		$Key/NoteSketch.frame = 1
		$active_keys_timer/timer_l.start()
		$Dancers/Kpopbee.hide()
		$Dancers/Bee.hide()
		$Dancers/Funkbee.hide()
		$Dancers/Punkbee.hide()
		$Dancers/Otakubee.hide()
		$Dancers/Kpopbee2.frame = 0
		$Dancers/Bee2.frame = 0
		$Dancers/Funkbee2.frame = 0
		$Dancers/Punkbee2.frame = 0
		$Dancers/Otakubee2.frame = 0 
		
		$Dancers/Kpopbee2.show()
		$Dancers/Bee2.show()
		$Dancers/Funkbee2.show()
		$Dancers/Punkbee2.show()
		$Dancers/Otakubee2.show()


	if Input.is_action_just_pressed("ui_down"):
		$Key2/shape.disabled = false
		$Key2/NoteSketch.frame = 1
		$active_keys_timer/timer_d.start()
		$Dancers/Kpopbee.hide()
		$Dancers/Bee.hide()
		$Dancers/Funkbee.hide()
		$Dancers/Punkbee.hide()
		$Dancers/Otakubee.hide()
		$Dancers/Kpopbee2.frame = 1
		$Dancers/Bee2.frame = 1
		$Dancers/Funkbee2.frame = 1
		$Dancers/Punkbee2.frame = 1
		$Dancers/Otakubee2.frame = 1 
	
		$Dancers/Kpopbee2.show()
		$Dancers/Bee2.show()
		$Dancers/Funkbee2.show()
		$Dancers/Punkbee2.show()
		$Dancers/Otakubee2.show()

	if Input.is_action_just_pressed("ui_up"):
		$Key3/shape.disabled = false
		$Key3/NoteSketch.frame = 1
		$active_keys_timer/timer_u.start()
		$Dancers/Kpopbee.hide()
		$Dancers/Bee.hide()
		$Dancers/Funkbee.hide()
		$Dancers/Punkbee.hide()
		$Dancers/Otakubee.hide()
		$Dancers/Kpopbee2.frame = 5
		$Dancers/Bee2.frame = 5
		$Dancers/Funkbee2.frame = 5
		$Dancers/Punkbee2.frame = 5
		$Dancers/Otakubee2.frame = 5 

		$Dancers/Kpopbee2.show()
		$Dancers/Bee2.show()
		$Dancers/Funkbee2.show()
		$Dancers/Punkbee2.show()
		$Dancers/Otakubee2.show()

	if Input.is_action_just_pressed("ui_right"):
		$Key4/shape.disabled = false
		$Key4/NoteSketch.frame = 1
		$active_keys_timer/timer_r.start()
		$Dancers/Kpopbee.hide()
		$Dancers/Bee.hide()
		$Dancers/Funkbee.hide()
		$Dancers/Punkbee.hide()
		$Dancers/Otakubee.hide()
		$Dancers/Kpopbee2.frame = 4
		$Dancers/Bee2.frame = 4
		$Dancers/Funkbee2.frame = 4
		$Dancers/Punkbee2.frame = 4
		$Dancers/Otakubee2.frame = 4 

		$Dancers/Kpopbee2.show()
		$Dancers/Bee2.show()
		$Dancers/Funkbee2.show()
		$Dancers/Punkbee2.show()
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
	get_tree().change_scene("res://Scenes/Choose_music.tscn")

func _on_Key_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("note"):
		area.queue_free()


func _on_timer_l_timeout():
	$Key/NoteSketch.frame = 0
	$Key/shape.disabled = true
	$Dancers/Kpopbee.show()
	$Dancers/Kpopbee2.hide()
	$Dancers/Bee.show()
	$Dancers/Bee2.hide()
	$Dancers/Funkbee.show()
	$Dancers/Funkbee2.hide()
	$Dancers/Punkbee.show()
	$Dancers/Punkbee2.hide()
	$Dancers/Otakubee.show()
	$Dancers/Otakubee2.hide()


func _on_timer_d_timeout():
	$Key2/NoteSketch.frame = 0
	$Key2/shape.disabled = true
	$Dancers/Kpopbee.show()
	$Dancers/Kpopbee2.hide()
	$Dancers/Bee.show()
	$Dancers/Bee2.hide()
	$Dancers/Funkbee.show()
	$Dancers/Funkbee2.hide()
	$Dancers/Punkbee.show()
	$Dancers/Punkbee2.hide()
	$Dancers/Otakubee.show()
	$Dancers/Otakubee2.hide()

func _on_timer_u_timeout():
	$Key3/NoteSketch.frame = 0
	$Key3/shape.disabled = true
	$Dancers/Kpopbee.show()
	$Dancers/Kpopbee2.hide()
	$Dancers/Bee.show()
	$Dancers/Bee2.hide()
	$Dancers/Funkbee.show()
	$Dancers/Funkbee2.hide()
	$Dancers/Punkbee.show()
	$Dancers/Punkbee2.hide()
	$Dancers/Otakubee.show()
	$Dancers/Otakubee2.hide()

func _on_timer_r_timeout():
	$Key4/NoteSketch.frame = 0
	$Key4/shape.disabled = true
	$Dancers/Kpopbee.show()
	$Dancers/Kpopbee2.hide()
	$Dancers/Bee.show()
	$Dancers/Bee2.hide()
	$Dancers/Funkbee.show()
	$Dancers/Funkbee2.hide()
	$Dancers/Punkbee.show()
	$Dancers/Punkbee2.hide()
	$Dancers/Otakubee.show()
	$Dancers/Otakubee2.hide()
